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
#
# # Specify the destination folder path
destination_folder = "C:/Users/soham/PycharmProjects/Future_chain"
#
# # Construct the full destination path
destination_path = destination_folder + "/modified_data.csv"

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
    coin_data['Close'] = coin_data['Close']
    coin_data_dicts = coin_data.to_dict(orient='records')

    client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
    db = client["Crypto_data"]
    collection = db[ticker_symbol]

    # Insert the list of dictionaries into the collection
    inserted_records = collection.insert_many(coin_data_dicts)

    print("Inserted IDs:", inserted_records.inserted_ids)
    last_document = collection.find_one(sort=[("_id", pymongo.DESCENDING)])

    print(last_document)


def pred(ticker_symbol):
    csv_file_path = "modified_data.csv"
    today = datetime.now().date()
    coin_data = yf.download(f"{ticker_symbol}-INR", start=today - timedelta(days=365), end=today)
    selected_value = 0
    coin_data_1 = pd.read_csv(csv_file_path)
    coin_data["Date"] = datetime.now().date()
    original_date = coin_data["Date"].iloc[0]
    new_d = original_date + timedelta(days=1)
    new_date = new_d.strftime("%Y-%m-%d")
    selected_value = coin_data_1.loc[coin_data_1['Date'] == new_date, ticker_symbol].values
    coin_update = pd.DataFrame(coin_data)
    client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
    db = client["Crypto_data"]
    collection_2 = db[f"{ticker_symbol}-PRED"]
    coin_update["Close"] = coin_data["Close"] + (coin_data["Close"].iloc[len(coin_data)-1] - coin_data["Close"].iloc[0])
    coin_update["Close"] = coin_update["Close"] * selected_value
    index_values = list(range(len(coin_update["Close"])))
    coin_update["Index"] = index_values
    # print(coin_update)
    for idx,row in coin_update.iterrows():
            data_dict = {
                "Date": row["Date"] + timedelta(days=(row["Index"])),
                "Close": coin_update["Close"].iloc[(row["Index"])]
            }
            # Convert datetime.date to datetime.datetime
            data_dict["Date"] = datetime.combine(data_dict["Date"], datetime.min.time())

            inserted_record = collection_2.insert_one(data_dict)
            print("Inserted ID:", inserted_record.inserted_id)


def delete_data(ticker_symbol):
    client = pymongo.MongoClient(f"mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/")
    db = client["Crypto_data"]
    collection = db[f"{ticker_symbol}-PRED"]
    last_inserted_document = collection.find_one(sort=[("_id", pymongo.DESCENDING)])
    result = collection.delete_many({})

if __name__ == "__main__":
    while True:
        delete_data('BTC')
        delete_data('DOGE')
        delete_data('XRP')
        delete_data('LTC')
        delete_data('ETH')
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

