USE covid

CREATE VIEW deaths_percentage
AS
SELECT location
	,population
	,SUM(new_deaths) AS all_deaths
	,SUM(new_cases) AS all_cases
	,(CAST(SUM(new_deaths) AS FLOAT))/(CAST(SUM(new_cases) AS FLOAT))*100 AS mortality
FROM CovidDeaths
GROUP BY location, population
HAVING SUM(new_cases) > 0