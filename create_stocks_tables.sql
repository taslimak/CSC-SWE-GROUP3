/*USE THIS TO CREATE TABLES IN MYSQL IF AMAZON RDS IS NOT WORKING*/

CREATE TABLE "Historical_Trends" (  
	"History_ID" int NOT NULL,  
	"Two_Day_Price" float NOT NULL, 
	"Two_Day_Pct" float, 
	"Week_Price" float NOT NULL, 
	"Week_Pct" float, 
	"Month_Price" float NOT NULL 
	"Month_Pct" float, 
	"Biannual_Price" float NOT NULL, 
	"Biannual_Pct" float, 
	"Yearly_Price" float NOT NULL, 
	"Yearly_Pct" float, 
	"Decade_Price" float NOT NULL, 
	"Decade_Pct" float,
	PRIMARY KEY (History_ID)
);

CREATE TABLE "Company_Balance" (
	"Sheet_ID" int NOT NULL,
	"From_Date" datetime NOT NULL,
	"To_Date" datetime NOT NULL,
	"From_Assets" bigint NOT NULL,
	"To_Assets" bigint NOT NULL,
	"From_Liabilities" bigint NOT NULL,
	"To_Liabilities" bigint NOT NULL,
	"From_Equity" bigint NOT NULL,
	"To_Equity" bigint NOT NULL,
	PRIMARY KEY (Sheet_ID)
);

CREATE TABLE "Stock_Information" (
	"Stock_ID" int NOT NULL,
	"Stock_Symbol" varchar(50) NOT NULL,
	"Company_Name" varchar(50) NOT NULL,
	"Share_Price" float NOT NULL,
	"Daily_Change" float,
	"Change_Pct" float,
	"Last_Open" float,
	"Last_Close" float,
	"Market_Cap" float NOT NULL,
	"Trade_Volume" int NOT NULL,
	"History_Record" int NOT NULL,
	"Balance_Sheet" int NOT NULL,
	FOREIGN KEY (History_Record) REFERENCES Historical_Trends(History_ID),
	FOREIGN KEY (Balance_Sheet) REFERENCES Company_Balance(Sheet_ID),
	PRIMARY KEY (Stock_ID)
);
	
CREATE TABLE "Time_Zones" (
	"Zone_ID" int NOT NULL,
	"Std_Dev_From_UTC" int NOT NULL,
	"Zone_Time" datetime NOT NULL,
	"NYSE_Time" datetime NOT NULL,
	"Market_Status" tinyint(1) NOT NULL,
	PRIMARY KEY (Zone_ID)
);

CREATE TABLE "Gainers" (
	"index" INTEGER,
	"Symbol" TEXT,
	"Name" TEXT,
	"Price (Intraday)" REAL,
	"Change" REAL,
	"% Change" REAL,
	"Volume" REAL,
	"Market Cap" REAL
);

CREATE TABLE "Losers" (
	"index" INTEGER,
	"Symbol" TEXT,
	"Name" TEXT,
	"Price (Intraday)" REAL,
	"Change" REAL,
	"% Change" REAL,
	"Volume" REAL,
	"Market Cap" REAL
);