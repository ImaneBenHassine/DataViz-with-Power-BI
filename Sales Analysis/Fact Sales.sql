select 
  [ProductKey], 
  [CustomerKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [SalesOrderNumber], 
  [SalesAmount], 
  [OrderQuantity], 
  [UnitPrice], 
  [TotalProductCost] 
from 
  [AdventureWorksDW].[dbo].[FactInternetSales] 
where 
  left ([OrderDateKey], 4) >= YEAR(GETDATE()) -2 --only bring two years of date from extraction
order by 
  [OrderDateKey] ASC