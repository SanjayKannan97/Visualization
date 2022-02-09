/****** Cleansed Dim_Customer Table ******/
SELECT 
  c.[CustomerKey] AS Key_Value 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] 
  --,[MiddleName]
  , 
  c.[LastName]
  ,  c.[FirstName] + ' ' + c.[LastName] as [FullName]
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  , 
  c.[HouseOwnerFlag] 
  --,[NumberCarsOwned]
  --,[AddressLine1]
  -- ,[AddressLine2]
  --,[Phone]
  , 
  c.[DateFirstPurchase] AS [DateOfFirstPurchase],
  --,[CommuteDistance]
  g.City AS [Customer City] --joined in Customer City from GeographyKey
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2019].dbo.DimGeography AS g on g.Geographykey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC --ORDER LIST BY CUSTOMER KEY
