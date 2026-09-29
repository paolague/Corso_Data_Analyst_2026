-- Si consideri una tabella chiamata Vendite con la seguente struttura, almeno 20 elementi generati
USE world;
CREATE TABLE Vendita
(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 prodotto VARCHAR(100),
 categoria VARCHAR(50),
 quantita INT,
 prezzo_unitario DECIMAL(6,2),
 data_vendita DATE
);

INSERT INTO Vendita (id, prodotto, categoria, quantita, prezzo_unitario, data_vendita)
VALUES  (1, 'Mouse wireless', 'Informatica', 3, 19.90, '2026-09-02'),
		(2, 'Tastiera meccanica', 'Informatica', 1, 74.50, '2026-09-04'),
		(3, 'Caffè in grani 1 kg', 'Alimentari', 6, 12.80, '2026-09-05'),
		(4, 'Olio extravergine 1 L', 'Alimentari', 4, 9.90, '2026-09-08'),
		(5, 'Cuffie Bluetooth', 'Elettronica', 2, 49.00, '2026-09-10'),
		(6, 'Caricatore USB-C 65W', 'Elettronica', 5, 27.50, '2026-09-12'),
		(7, 'Zaino da trekking', 'Sport', 1, 59.90, '2026-09-15'),
		(8, 'Tappetino yoga', 'Sport', 3, 22.00, '2026-09-18'),
		(9, 'Set pennelli acrilici', 'Arte e hobby', 2, 16.50, '2026-09-22'),
		(10, 'Tela 50x70 cm', 'Arte e hobby', 8, 8.90, '2026-09-25'),
		(11, 'Monitor 24" Full HD', 'Informatica', 2, 129.00, '2026-09-01'),
		(12, 'Chiavetta USB 128 GB', 'Informatica', 7, 14.90, '2026-09-03'),
		(13, 'Pasta di Gragnano 500 g', 'Alimentari', 20, 2.10, '2026-09-06'),
		(14, 'Miele di acacia 400 g', 'Alimentari', 5, 7.50, '2026-09-09'),
		(15, 'Altoparlante portatile', 'Elettronica', 3, 39.90, '2026-09-11'),
		(16, 'Power bank 20000 mAh', 'Elettronica', 4, 24.90, '2026-09-14'),
		(17, 'Scarpe da corsa', 'Sport', 1, 84.00, '2026-09-17'),
		(18, 'Manubri 5 kg (coppia)', 'Sport', 2, 26.50, '2026-09-20'),
		(19, 'Colori a olio set 12', 'Arte e hobby', 3, 21.90, '2026-09-24'),
		(20, 'Cavalletto da tavolo', 'Arte e hobby', 1, 34.00, '2026-09-28');
-- Scrivi le query SQL per rispondere alle seguenti richieste:
-- Totale vendite per categoria = quantità * prezzo unitario
SELECT categoria,
       SUM(quantita * prezzo_unitario) AS TotaleVenditeCategoria
FROM Vendita
GROUP BY categoria;

-- Visualizza, per ogni categoria, il numero totale di vendite effettuate.
SELECT categoria,
       SUM(quantita) AS TotaleVenditeCategoria
FROM Vendita
GROUP BY categoria;

-- Prezzo medio per categoria -- Mostra, per ogni categoria, il prezzo medio dei prodotti venduti.
SELECT categoria,
ROUND (AVG(quantita * prezzo_unitario),2) AS PrezzoMedioCategoria
FROM Vendita
GROUP BY categoria;

-- Quantità totale venduta per ogni prodotto
-- Mostra il totale delle quantità vendute (SUM) per ciascun prodotto.
SELECT prodotto,
		SUM(quantita) AS QuantitaTotaleVendutaOgniProdotto
FROM Vendita
GROUP BY prodotto
ORDER BY QuantitaTotaleVendutaOgniProdotto ASC;

-- Prezzo massimo e minimo venduto nella tabella
-- Mostra il prezzo massimo e il prezzo minimo tra tutti i prodotti venduti
SELECT MIN(prezzo_unitario) AS MinimoPrezzo
FROM Vendita;		

SELECT MAX(prezzo_unitario) AS MassimoPrezzo
FROM Vendita;		

-- Numero totale di righe nella tabella
-- Conta quante vendite sono state registrate nella tabella Vendite.
SELECT *
	COUNT(id);

-- I 5 prodotti più costosi (in base al prezzo_unitario)
-- Elenca i 5 prodotti più costosi ordinati in modo decrescente rispetto al prezzo.
-- I 3 prodotti meno venduti per quantità totale
-- Mostra i nomi dei 3 prodotti con la quantità totale più bassa venduta (usa SUM e LIMIT).
