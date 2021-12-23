SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS 'Product Name', 
  ps.[EnglishProductSubcategoryName] AS 'Product Category', 
  pc.[EnglishProductCategoryName] AS 'Sub Category', 
  p.[Color], 
  p.[Size], 
  p.[ProductLine], 
  p.[ModelName] AS 'Product Model', 
  p.[EnglishDescription] AS 'Product Desc', 
  ISNULL (p.Status, 'Outdated') AS 'Product Statuts' 
FROM 
  [AdventureWorksDW].[dbo].[DimProduct] AS p 
  LEFT JOIN [AdventureWorksDW].[dbo].[DimProductSubcategory] AS ps ON p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey] 
  LEFT JOIN [AdventureWorksDW].[dbo].[DimProductCategory] as pc ON pc.[ProductCategoryKey] = ps.[ProductCategoryKey] 
ORDER BY 
  p.[ProductKey]