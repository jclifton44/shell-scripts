import requests
from trading import tradingClass
API_Secret = ""
API_Key = ""
passphrase=""
t = tradingClass(API_Key, API_Secret, passphrase)


#t.updatePrice()

priceArray = t.getPrices()

print("Price Array Size: " + str(len(priceArray)))
