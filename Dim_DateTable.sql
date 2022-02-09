/****** DimDateTableAlter ******/
SELECT 
  [DateKey] AS Date 
  --,[FullDateAlternateKey]
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS Day
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS Week
  ,[EnglishMonthName] AS Month
  ,LEFT([EnglishMonthName],3) AS Month_Short
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS Month, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
 WHERE 
  CalendarYear>=2019
