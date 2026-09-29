-- Si consideri una tabella chiamata Clienti con la seguente struttura, almeno 20 dati inseriti:
CREATE TABLE Clienti (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
cognome VARCHAR(100),
email VARCHAR(100),
eta INT,
citta VARCHAR(100)

);

INSERT INTO Clienti (id, nome, cognome, email, eta, citta) VALUES
(1,  'Alessandro', 'Rossi',     'alessandro.rossi@gmail.com',   34, 'Roma'),
(2,  'Anna',       'Bianchi',   'anna.bianchi@yahoo.it',        28, 'Milano'),
(3,  'Marco',      'Verdi',     'marco.verdi@gmail.com',        41, 'Torino'),
(4,  'Giulia',     'Conti',     'giulia.conti@outlook.com',     36, 'Romano di Lombardia'),
(5,  'Andrea',     'Ferrari',   'andrea.ferrari@gmail.com',     45, 'Bologna'),
(6,  'Sara',       'Greco',     'sara.greco@libero.it',         30, 'ROMA'),
(7,  'Luca',       'Esposito',  'luca.esposito@gmail.com',      39, 'Napoli'),
(8,  'Alice',      'Romano',    'alice.romano@gmail.com',       25, 'Firenze'),
(9,  'Paolo',      'Bruno',     'paolo.bruno@hotmail.it',       52, 'Genova'),
(10, 'Chiara',     'Costa',     'chiara.costa@gmail.com',       33, 'Palermo'),
(11, 'Davide',     'Gallo',     'davide.gallo@gmail.com',       40, 'Roma'),
(12, 'Elena',      'Ricci',     'elena.ricci@yahoo.it',         29, 'Varese'),
(13, 'Antonio',    'Russo',     'antonio.russo@gmail.com',      31, 'Bari'),
(14, 'Martina',    'Fabbri',    'martina.fabbri@outlook.it',    37, 'Verona'),
(15, 'Federico',   'Marino',    'federico.marino@gmail.com',    22, 'Padova'),
(16, 'Arianna',    'Lombardi',  'arianna.lombardi@icloud.com',  35, 'Trieste'),
(17, 'Simone',     'Moretti',   'simone.moretti@gmail.com',     48, 'roma'),
(18, 'Valentina',  'Neri',      'valentina.neri@gmail.com',     27, 'Como'),
(19, 'Roberto',    'Longo',     'roberto.longo@gmail.com',      60, 'Catania'),
(20, 'Francesca',  'Gatti',     'francesca.gatti@live.it',      32, 'Cagliari'),
(21, 'Alberto',    'Sala',      'alberto.sala@gmail.com',       38, 'Varese'),
(22, 'Irene',      'Fontana',   'irene.fontana@gmail.it',       44, 'Lecce');


-- Scrivere le query SQL per rispondere alle seguenti richieste:

-- 1 Clienti con email su dominio Gmail
--   Seleziona tutti i clienti la cui email termina con @gmail.com.
SELECT nome, cognome -- *
From Clienti
WHERE email LIKE '%gmail.com';

-- Clienti con nome che inizia con la lettera 'A'
-- Mostra tutti i clienti il cui nome comincia con la lettera A.

SELECT *
From Clienti
WHERE nome LIKE 'a%';


-- Clienti con cognome che contiene esattamente 5 lettere
-- Mostra tutti i clienti il cui cognome è composto da esattamente 5 caratteri.

SELECT cognome
From Clienti
WHERE cognome LIKE '_____';


-- Clienti con età compresa tra 30 e 40 anni (inclusi)
-- Elenca i clienti che hanno un'età compresa tra 30 e 40 anni, inclusi gli estremi.

SELECT nome, cognome, eta
From Clienti
WHERE eta BETWEEN 30 AND 40
ORDER BY cognome ASC;

SELECT nome, cognome, eta
From Clienti
WHERE eta NOT BETWEEN 30 AND 40
ORDER BY cognome ASC;


-- Clienti che vivono in città il cui nome contiene 'roma' (maiuscole/minuscole ignorate)
-- Mostra tutti i clienti che abitano in una città il cui nome contiene la stringa roma, indipendentemente da maiuscole o minuscole.

SELECT *
From Clienti
WHERE citta LIKE 'roma';
