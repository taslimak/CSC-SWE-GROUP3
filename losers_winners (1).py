import yahoo_fin.stock_info as si
import ftplib, io, json, pandas, requests, requests_html

#Top 100 winners today
winners = si.get_day_gainers()
#Top 100 losers today
losers= si.get_day_losers()