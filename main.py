import yfinance as yf
import pandas as pd
from datetime import datetime
import time

def update_data(ticker_symbol):

    coin_data = yf.download(ticker_symbol, period="1d")

    try:
        existing_data = pd.read_csv(f"{ticker_symbol}.csv")
    except FileNotFoundError:
        existing_data = pd.DataFrame(columns=coin_data.columns)

    coin_data['Date'] = datetime.now().date()


    updated_data = pd.concat([existing_data, coin_data])


    updated_data.to_csv(f"{ticker_symbol}.csv", index=False)

while True:
    update_data('BTC-INR')
    update_data('DOGE-INR')
    update_data('XRP-INR')
    update_data('LTC-INR')
    update_data('ETH-INR')
    time.sleep(86400)
