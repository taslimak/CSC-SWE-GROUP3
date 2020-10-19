import ftplib, io, json, pandas, requests, requests_html, pymysql
from pandas import DataFrame
from sqlalchemy import create_engine

#Connects to Amazon RDS database containing winners and losers info
sqlEngine = create_engine('mysql+pymysql://softwarectw:professor1@stocksdb1.ci0tzktb6v7z.us-east-1.rds.amazonaws.com:3306/winnerslosers', pool_recycle=3600)

#Read contents of table with pandas and print
win = pandas.read_sql("SELECT * FROM Gainers", con=sqlEngine)
lose = pandas.read_sql("SELECT * FROM Losers", con=sqlEngine)

print(win)
print(lose)