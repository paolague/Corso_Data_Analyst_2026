use world;

SELECT
		Name,
		Population,
        CountryCode
FROM city
ORDER BY Population DESC
LIMIT 3;        

SELECT
	Name,
    SurfaceArea
    
From country
order by
    