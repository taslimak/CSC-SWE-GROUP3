# CSC-SWE-GROUP3
Software Engineering Project 

Project Name: Web based Stock Forecaster  

Team Members: Taslima Kotadiya, Zeak M. Sims, Mohammed M Aljubori, Noah Magner 

Code File Description:

losers_winners (1).py = Script that calls Yahoo Finance API to get top 100 losers and top 100 winners.

losers_winners_database.py = Adds the top 100 losers and top 100 winners to SQL database.

losers_winners_server_call.py = Calls on the Amazon Web Service server to connect to the SQL database and when called, it returns a pandas dataframe.

ny_time_date (1).py = Script that gets the time in NYC.

How to Run the Software:

For testing the app, download the django_bootstraps_stock folder. 
cd inside django_bootstraps_stock and run the command 'python3 manage.py runserver' . 
You will probably be met with ‘no-module’ error. 
Just pip3 install ‘module’ to install the missing module. 
