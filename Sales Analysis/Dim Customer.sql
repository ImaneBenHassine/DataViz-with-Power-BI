SELECT 
  [CustomerKey], 
  [LastName], 
  [FirstName], 
  [FirstName] + ' ' + [LastName] as[ Full Name], 
  CASE [Gender] when 'M' then 'Male' else 'Female' end as Gender, 
  [DateFirstPurchase], 
  [City] as [Customer City],
  [dbo].[DimSalesTerritory].[SalesTerritoryCountry]
from 
  [AdventureWorksDW].[dbo].[DimCustomer] 
  left join [dbo].[DimGeography] on [dbo].[DimCustomer].[GeographyKey] = [dbo].[DimGeography].[GeographyKey]

  left join [AdventureWorksDW].[dbo].[DimSalesTerritory] on [dbo].[DimSalesTerritory].[SalesTerritoryKey] =[dbo].[DimGeography].[SalesTerritoryKey]
ORDER BY [CustomerKey] ASC
 