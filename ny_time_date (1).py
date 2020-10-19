from datetime import datetime 
import pytz 

#New York Timezone 
UTC = pytz.utc 
NYSE_time = pytz.timezone('America/New_York')

Ny = datetime.now(NYSE_time) 
#Date is in Year - month - day
ny_date = Ny.strftime('%Y-%m-%d')
#Time is in Hour - Minute - Second
ny_time = Ny.strftime('%H:%M:%S')

print(ny_date)
print(ny_time)