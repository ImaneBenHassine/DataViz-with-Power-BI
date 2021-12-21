### Business Request

The business demand was about improving internet sales reports and moving from static reports to visual dashboards. Essentially, focusing on how much products are sold, to which clients and how it has been over time and seeing as each sales person works on different products and customers it would be beneficial to be able to filter them also.

Then measure sales numbers against budget to compare the values against performance. The budget is for 2021, usually look 2 years back in time when we do analysis of sales.

### Data Source 
Using the .bak file to restore sample database to SQL Server instance from AdventureWorksDW2019.bak Data Warehouse can be found in the link below.
https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms

But since AdventureWorksDW original database contains data from 2010 to 2014, it is better to add a script that updates the date colums with recent dates and it inserts new dates in the date dimension by useing the current year as the last year for the data in the Adventure Works database. 
For example: if the current year is 2021, the data after running the script will be from 2017 to 2021.

The script, can be found in Update DATA.sql, also deletes leap year records from FactCurrencyRate and FactProductInventory to avoid having constraint issues.

Credit of this script goes to David Alzamendi (https://techtalkcorner.com).
 
### Steps


 - Fact Table vs Dimension Table
 - Identify necessary tables
 - Data Clean & Transformation
 - Create Dashboard
 - Putting Portfolio



Some of the following things are exemplified:

- AS Statement (Renaming Columns)
- Combining columns
- Commenting in SQL Script
- Formatting of SQL statements
- WHERE Clause
- ORDER BY
- LEFT JOIN
- Case() Function
- IsNull() Funtion

### Best Practices
Using SQL Formatter Online helps to format the SQL code data and to read the SQL. This tool helps uses to beautify large SELECT statements and make it easy to read.
https://codebeautify.org/sqlformatter
