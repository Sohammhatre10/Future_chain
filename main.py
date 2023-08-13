import pymongo
import yfinance as yf
import pandas as pd
from datetime import datetime, timedelta
import time
from pymongo import MongoClient
import csv
from key import username, password

import shutil

source_path = "C:/Users/soham/Downloads/modified_data.csv"

# Specify the destination folder path
destination_folder = "C:/Users/soham/PycharmProjects/Future_chain"

# Construct the full destination path
destination_path = destination_folder + "/modified_data.csv"

# Move the file to the destination folder
shutil.move(source_path, destination_path)

def update_data_cs(ticker_symbol):
    coin_data = yf.download(f"{ticker_symbol}-INR", period="1d")
    try:
        existing_data = pd.read_csv(f"{ticker_symbol}.csv")
    except FileNotFoundError:
        existing_data = pd.DataFrame(columns=coin_data.columns)
    coin_data['Date'] = datetime.now().date()
    updated_data = pd.concat([existing_data, coin_data])
    updated_data.to_csv(f"{ticker_symbol}.csv", index=False)

def update_data(ticker_symbol):

    today = datetime.now().date()
    coin_data = yf.download(f"{ticker_symbol}-INR", period='1d')
    coin_data['Date'] = today.strftime("%Y-%m-%d")
    coin_data_dicts = coin_data.to_dict(orient='records')

    client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
    db = client["Crypto_data"]
    collection = db[ticker_symbol]
    collection_2 = db[f"{ticker_symbol}-PRED"]

            # Insert the list of dictionaries into the collection
    inserted_records = collection.insert_many(coin_data_dicts)

    print("Inserted IDs:", inserted_records.inserted_ids)
    last_document = collection.find_one(sort=[("_id", pymongo.DESCENDING)])

    print(last_document)


def pred(ticker_symbol):
    csv_file_path = "modified_data.csv"
    today = datetime.now().date()
    coin_data = yf.download(f"{ticker_symbol}-INR", period='1d')
    selected_value = 0

    if not coin_data.empty:
        coin_data_1 = pd.read_csv(csv_file_path)
        coin_data["Date"] = datetime.now().date()

        original_date = coin_data["Date"].iloc[0]  # Get the first date value as a single datetime object

        new_date = original_date + timedelta(days=1)
        if ticker_symbol in coin_data.columns:
            selected_value = coin_data.loc[coin_data["Date"] == new_date, f"{ticker_symbol}"]
            selected_value = selected_value.astype(float)
        else:
            print("BTC column not found in the DataFrame.")

        coin_data["Date"] = new_date.strftime("%Y-%m-%d")

        if new_date.strftime("%Y-%m-%d") in coin_data_1["Date"].values:
            coin_data["Close"] = (coin_data["Close"].iloc[0]).astype(float)
            coin_data["Close"] = float(coin_data["Close"].iloc[0]) * (selected_value)

            client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
            db = client["Crypto_data"]
            collection_2 = db[f"{ticker_symbol}-PRED"]
            data_dict = {
                "Date": coin_data["Date"].iloc[0],
                "Close": coin_data["Close"].iloc[0]
            }
            inserted_record = collection_2.insert_one(data_dict)  # Use insert_one for a single document
            print("Inserted ID:", inserted_record.inserted_id)
        else:
            print(f"No data available for {new_date} in the CSV file.")
    else:
        print(f"No data available for {ticker_symbol} on {today}.")


def delete_data(ticker_symbol):
    client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
    db = client["Crypto_data"]
    collection = db[f"{ticker_symbol}"]
    last_inserted_document = collection.find_one(sort=[("_id", pymongo.DESCENDING)])

    if last_inserted_document:
        # Delete the last inserted document
        result = collection.delete_one({"_id": last_inserted_document["_id"]})

        if result.deleted_count == 1:
            print("Last inserted document deleted successfully.")
        else:
            print("Failed to delete the last inserted document.")
    else:
        print("No documents found in the collection.")

if __name__ == "__main__":
    while True:
        update_data_cs('BTC')
        update_data_cs('DOGE')
        update_data_cs('XRP')
        update_data_cs('LTC')
        update_data_cs('ETH')
        update_data('BTC')
        update_data('DOGE')
        update_data('XRP')
        update_data('LTC')
        update_data('ETH')
        pred('BTC')
        pred('DOGE')
        pred('XRP')
        pred('LTC')
        pred('ETH')
        time.sleep(86400)
        delete_data('BTC')
        delete_data('DOGE')
        delete_data('XRP')
        delete_data('LTC')
        delete_data('ETH')
