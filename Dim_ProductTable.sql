/****** Product Dimension Table  ******/
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS Product_ItemCode 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] AS Product_Name, 
  --,[SpanishProductName]
  ps.EnglishProductSubcategoryName AS [Sub Category],
  pc.EnglishProductCategoryName AS [Category],
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  
  --[ReorderPoint], 
  --[ListPrice], 
  --p.[Size] AS Product_Size, 
  --[SizeRange], 
  --p.[Weight] AS Product_Weight, 
  --[DaysToManufacture], 
  p.[ProductLine] AS [Product_Line], 
  --[DealerPrice], 
  --[Class], 
  --[Style], 
  p.[ModelName] AS [Product_ModelName], 
  --[LargePhoto], 
  p.[EnglishDescription] AS [Product_Description], 
  --[FrenchDescription], 
  --[ChineseDescription], 
  --[ArabicDescription], 
  --[HebrewDescription], 
  --[ThaiDescription], 
  --[GermanDescription], 
  --[JapaneseDescription], 
  --[TurkishDescription], 
  --[StartDate], 
  --[EndDate], 
  --[Status],
  ISNULL (p.Status, 'OutDated') as [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2019].dbo.[DimProductSubcategory] AS ps ON ps.ProductsubCategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey ASC;

 
