-- Preview the first 5 files
-- SELECT top(5)* FROM [Red30Tech].[dbo].[OnlineRetailSales$]

-- Preview the first 5 files
SELECT *, 
    (SELECT AVG([Order Total]) FROM [Red30Tech].[dbo].[OnlineRetailSales$]) AS avg_total -- calculates the average of Order Total.
	FROM [Red30Tech].[dbo].[OnlineRetailSales$]
	WHERE [Order Total] >= 
		(SELECT AVG([Order Total]) 
		FROM [Red30Tech].[dbo].[OnlineRetailSales$]);
