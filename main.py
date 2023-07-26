from requests import get
from key import api_key
import time
from key import password
import mysql.connector
conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password=password,
    database='blockchain'
)
cursor = conn.cursor()
url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest'
header = {
    'X-CMC_PRO_API_KEY': api_key,
    'Accepts': 'application/json',
}

parameters = {
    'start':'1',
    'limit':'1',
    'convert':'INR'
}
json = get(url, params = parameters, headers = header).json()
crypto = json['data']
while True:
    for item in crypto:
        if item['symbol'] == "BTC":
            timestamp = item['quote']['INR']['last_updated']
            price = item['quote']['INR']['price']
            insert_query = "INSERT INTO btc (price) VALUES (%s)"
            data_tuple = (price,)
            try:
                # Execute the query with the data_tuple
                cursor.execute(insert_query, data_tuple)

                # Commit the changes to the database
                conn.commit()

                print("Element inserted successfully.")
            except mysql.connector.Error as error:
                # Rollback the changes in case of an error
                conn.rollback()
                print(f"Error: {error}")
    time.sleep("adjust according to requirements")
