BULK INSERT dbo.CovidVaccinations
FROM 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\CovidVaccinations.csv'
WITH
(
	FORMAT='CSV',
	FIRSTROW=2
)
GO
