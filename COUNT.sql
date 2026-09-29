-- COUNT(*) AS Numerocitta,
--  ORDER BY Population >500000 AND <1000000
/* ORDER BY Population 
-- ORDER BY 'Italy'

COUNT(*) AS TotalePaesi,
    SUM(Population) AS PopolazioneTotale
FROM country
GROUP BY Continent
ORDER BY PopolazioneTotale DESC;

