SELECT 
	dc.location
	,MAX(total_deaths_per_million) AS deaths_per_milion
	,MAX(people_fully_vaccinated_per_hundred) AS fully_vaccinated
FROM DeathsCountry dc
JOIN VaccinationsCountry vc
ON dc.location = vc.location AND dc.date = vc.date
WHERE dc.continent = 'Europe'
GROUP BY dc.location
ORDER BY fully_vaccinated DESC



