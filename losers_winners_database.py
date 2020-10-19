import yahoo_fin.stock_info as si
import ftplib, io, json, pandas, requests, requests_html, pymysql
from pandas import DataFrame
from sqlalchemy import create_engine

#Top 100 winners today
winners = si.get_day_gainers()
#Top 100 losers today
losers= si.get_day_losers()

gainerName = "Gainers"
loserName = "Losers"
gainerFrame = pandas.DataFrame(data=winners)
loserFrame = pandas.DataFrame(data=losers)

sqlEngine = create_engine('mysql+pymysql://user:password@127.0.0.1:port/db_name', pool_recycle=3600)
dbConnection = sqlEngine.connect()

try:
    lose = loserFrame.to_sql(loserName, dbConnection, if_exists='fail')
except ValueError as vx:
    print(vx)
except Exception as ex:   
    print(ex)
else:
    print("Table %s created successfully.");   

try:
	gain = gainerFrame.to_sql(gainerName, dbConnection, if_exists='fail')
except ValueError as vx:
    print(vx)
except Exception as ex:   
    print(ex)
else:
    print("Table %s created successfully."); 
finally:
    dbConnection.close()