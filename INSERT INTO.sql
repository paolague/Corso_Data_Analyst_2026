-- Si consideri un database che contiene informazioni su una libreria. Nel database è presente una tabella chiamata Libri con laseguente struttura:*/
USE world;
CREATE TABLE Libri
(
   id INT PRIMARY KEY AUTO_INCREMENT, 
   titolo VARCHAR(100),
   autore VARCHAR(100),  
   genere VARCHAR(50), 
   prezzo DECIMAL(5,2),  
   anno_pubblicazione INT
   )
   
-- 1 Inserimento dati (INSERT INTO)Inserire almeno 6 nuovi libri nella tabella Libri usando il comando SQL INSERT INTO.
-- I libri devono appartenere a generi e autori diversi, ed essere pubblicati in anni differenti.*/ 

-- 2) Aggregazione e raggruppamento (GROUP BY)Scrivere una query che, usando il comando GROUP BY, mostri per ogni genere:
-- il numero totale di libri presenti; il prezzo medio dei libri appartenenti a quel genere.
-- La query dovrà restituire il risultato ordinato alfabeticamente per genere.
 -- Ordinamento risultati (ORDER BY)
-- Scrivere una query che elenchi tutti i libri pubblicati dopo l’anno 2010 ordinati in modo decrescente per anno di pubblicazione e,
-- incaso di anno uguale, in ordine crescente per prezzo.


INSERT INTO Libri (Titolo, autore, genere, prezzo, anno_pubblicazione)
VALUES ('Canto del cigno', 'Charles Spencer', 'biografia', '23.75', '2026'),
	  ('Quando l-Italia Rinacque', 'Aldo Cazzullo', 'storia', '19.52', '2025'),
      ('Ikigai e filosofia giapponese', 'Tsumugi Miralles e Simone Molinari', 'Lifestyle', '14.97', '2019'),
      ('Invidia: il manifesto dell-IA', 'Fabrizio Lungarini', 'storia', '0.0', '2021'),
      ('Cara Debbie', 'Freida McFadden', 'romanzo', '12.25', '2023'),
      ('Succede sempre qualcosa di meraviglioso', 'Gianluca Gotto', 'romanzo', '23.78', '2024');
 
 
-- Ordina per genere e conta il totale per genere ordinato per ascendente
SELECT genere,
       COUNT(*)  AS numero_libri
FROM Libri
GROUP BY genere
ORDER BY genere ASC;
 
SELECT genere,
       COUNT(*) AS NumeroTotale,
       ROUND(AVG(prezzo), 2) AS PrezzoMedio
FROM Libri
GROUP by genere
ORDER BY PrezzoMedio ASC;

-- Scrivere una query che elenchi tutti i libri pubblicati dopo l’anno 2010 ordinati in modo decrescente per anno di pubblicazione e,
-- incaso di anno uguale, in ordine crescente per prezzo.
SELECT *
FROM Libri
WHERE  anno_pubblicazione >2010 
ORDER BY anno_pubblicazione DESC, prezzo ASC;   



       

 

