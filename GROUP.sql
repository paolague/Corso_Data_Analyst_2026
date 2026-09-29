-- Conta quante nazioni appartengono ai continenti Asia,
--  North America e South America e raggruppale in base alla loro forma di governo.
    
SELECT 'Asia', 'North America', 'South America'
FROM world.country	 
GROUP BY GovernmentForm;
    

    
 