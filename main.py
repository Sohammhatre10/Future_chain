from requests import get
from key import api_key
import sqlalchemy
import pandas as pd
import csv

url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest'
header = {
    'X-CMC_PRO_API_KEY': api_key,
    'Accepts': 'application/json',
}

parameters = {
    'start':'1',
    'limit':'10',
    'convert':'INR'
}
json = get(url, params = parameters, headers = header).json()
crypto = json['data']
print(crypto)
coins = {}
for i in crypto:
    if i['symbol'] == "BTC":
        coins[int(i['quote']['INR']['price'])] = i['last_updated']
print(coins)
