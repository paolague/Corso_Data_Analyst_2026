-- Ci ho messo un'ora, ma ho ragionato su ogni carattere.
ripeto: il mio problema è la sintassi: virgole, parentesi etc.
Grazie e scusa per il ritardo

/* Utilizzo di DISTINCT e WHERE
Elencare, senza ripetizioni, tutte le regioni (Region) dei paesi che appartengono al continente (Continent) 'Europe'*/
SELECT DISTINCT Region
FROM world.country
WHERE Continent = 'Europe';

/*Esercizio 2 
Combinazione di WHERE, ORDER BY
Elencare i nomi (Name) e la popolazione (Population) delle città (City) degli Stati Uniti (CountryCode = 'USA') che 
hanno una popolazione superiore a 1.000.000 abitanti, ordinando i risultati dalla città più popolosa alla meno popolosa.*/

SELECT Name, Population 
FROM world.city
WHERE CountryCode ='USA'
AND Population >1000000
ORDER BY Population  DESC

/* Esercizio 3
GROUP BY con funzioni di aggregazione
Mostrare per ogni continente (Continent) presente nella tabella Country:
Il numero totale di paesi appartenenti a ciascun continente.
La popolazione totale del continente.
Ordinare il risultato per popolazione totale in ordine decrescente.*/
SELECT DISTINCT Continent,
	COUNT(*) AS TotalePaesi,
    SUM(Population) AS PopolazioneTotale
FROM country
GROUP BY Continent
ORDER BY PopolazioneTotale DESC;