SELECT [DateKey],
       [FullDateAlternateKey] AS Date,
       [EnglishDayNameOfWeek] AS Day,
	   [EnglishMonthName] AS Month,
	   left( [EnglishMonthName], 3) AS MonthShort,
	   [MonthNumberOfYear] AS MonthNum,
	   [CalendarYear] AS Year,
	   CONCAT('Q',[CalendarQuarter]) AS Quarter,
	   CONCAT( left( [EnglishMonthName], 3) ,'-', Right([CalendarYear],2)) AS MonthYear
FROM [AdventureWorksDW].[dbo].[DimDate]
Where [CalendarYear]> 2015