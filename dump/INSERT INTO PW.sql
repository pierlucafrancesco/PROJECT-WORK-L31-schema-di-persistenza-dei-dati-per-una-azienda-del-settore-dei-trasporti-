INSERT INTO Cliente (cod_fiscale, nome, cognome, email, telefono, data_nascita, data_registrazione)
VALUES
  ('CF00000000000001', 'Francesco',   'Rossi',     'francesco.rossi@example.com',   '3330000001', '1990-03-10', '2025-01-15'),
  ('CF00000000000002', 'Sofia',	      'Bianchi',   'sofia.bianchi@example.com',     '3330000002', '1995-07-21', '2025-02-05'),
  ('CF00000000000003', 'Aurora',      'Verdi',     'aurora.verdi@example.com',      '3330000003', '1988-11-03', '2025-06-03'),
  ('CF00000000000004', 'Rosa',        'Neri',      'rosa.neri@example.com',         '3330000004', '1992-02-18', '2025-07-23 '),
  ('CF00000000000005', 'Claudio',     'Conti',     'claudio.conti@example.com',     '3330000005', '1985-05-30', '2025-04-10'),
  ('CF00000000000006', 'Luigi',       'Gallo',     'luigi.gallo@example.com',       '3330000006', '1998-09-14', '2025-05-22'),
  ('CF00000000000007', 'Flora',       'Riva',      'flora.riva@example.com',        '3330000007', '1993-12-01', '2025-03-25'),
  ('CF00000000000008', 'Gina',        'Greco',     'gina.greco@example.com',        '3330000008', '1991-01-09', '2025-10-27'),
  ('CF00000000000009', 'Devis',       'Fontana',   'devis.fontana@example.com',     '3330000009', '1987-06-06', '2025-12-29'),
  ('CF00000000000010', 'Carlo',       'De Luca',   'carlo.deluca@example.com',      '3330000010', '1999-04-25', '2025-02-09');


INSERT INTO Mezzo (targa, tipo_mezzo, capacita_posti)
VALUES
  ('HA001BC', 'bus',     50),
  ('HB002CD', 'bus',     60),
  ('HC003DE', 'minibus', 40);


INSERT INTO Autista (matricola, nome, cognome)
VALUES
  ('DRVALFE01', 'Alberto',   'Ferrari'),
  ('DRVANCO02', 'Andrea',    'Colombo'),
  ('DRVMAMA03', 'Manuel','Martini');


INSERT INTO Mezzo_Autista (targa, matricola, data_inizio, data_fine)
VALUES
  ('HA001BC', 'DRVALFE01', '2025-01-01', NULL),
  ('HB002CD', 'DRVANCO02', '2025-01-01', NULL),
  ('HC003DE', 'DRVMAMA03', '2025-01-01', NULL);

INSERT INTO Tratta (id_tratta, citta_partenza, citta_arrivo, distanza_km, durata_minuti)
VALUES
  ('TRMFI', 'Roma',   'Firenze', 270.00, 180),
  ('TFIBO', 'Firenze','Bologna', 120.00, 80),
  ('TBOMI', 'Bologna','Milano',  215.00, 140),
  ('TRMNA', 'Roma',   'Napoli',  225.00, 150),
  ('TNARM', 'Napoli', 'Roma',    225.00, 150),
  ('TMITO', 'Milano', 'Torino',  145.00, 90);


INSERT INTO Corsa (id_corsa, citta_partenza, citta_arrivo, data_partenza, ora_partenza, ora_arrivo, posti_totali, posti_disponibili, targa)
VALUES
  ('CROMMIL', 'Roma',   'Milano', '2025-03-10', '08:00:00', '13:00:00', 50, 44, 'HA001BC'),
  ('CROMBOL', 'Roma',   'Bologna','2025-03-11', '09:00:00', '12:00:00', 50, 47, 'HA001BC'),
  ('CNAPROM', 'Napoli', 'Roma',   '2025-03-10', '07:00:00', '09:30:00', 40, 38, 'HB002CD'),
  ('CMILTOR', 'Milano', 'Torino', '2025-03-12', '18:00:00', '20:00:00', 60, 58, 'HC003DE');


INSERT INTO Corsa_Tratta (id_corsa, id_tratta, numero_fermate)
VALUES
  ('CROMMIL', 'TRMFI', 1),  
  ('CROMMIL', 'TFIBO', 2), 
  ('CROMMIL', 'TBOMI', 3), 
  ('CROMBOL', 'TRMFI', 1), 
  ('CROMBOL', 'TFIBO', 2), 
  ('CNAPROM', 'TNARM', 1),
  ('CMILTOR', 'TMITO', 1);


INSERT INTO Pagamento (cod_transazione, cod_fiscale, importo, data_pagamento, metodo_pagamento, stato_pagamento)
VALUES
  ('TRX000001', 'CF00000000000001', 39.90, '2025-03-01 10:15:00', 'carta di credito', 'completato'),
  ('TRX000002', 'CF00000000000002', 39.90, '2025-03-01 10:20:00', 'carta di credito', 'completato'),
  ('TRX000003', 'CF00000000000003', 29.90, '2025-03-02 09:00:00', 'paypal',           'completato'),
  ('TRX000004', 'CF00000000000004', 19.90, '2025-03-02 09:05:00', 'contanti',         'completato'),
  ('TRX000005', 'CF00000000000005', 39.90, '2025-03-03 11:30:00', 'carta di credito', 'completato'),
  ('TRX000006', 'CF00000000000006', 25.90, '2025-03-03 11:35:00', 'carta di credito', 'completato'),
  ('TRX000007', 'CF00000000000007', 39.90, '2025-03-04 08:50:00', 'paypal',           'completato'),
  ('TRX000008', 'CF00000000000008', 15.90, '2025-03-04 09:10:00', 'contanti',         'completato'),
  ('TRX000009', 'CF00000000000009', 39.90, '2025-03-05 12:00:00', 'carta di credito', 'completato'),
  ('TRX000010', 'CF00000000000010', 39.90, '2025-03-05 12:05:00', 'carta di credito', 'completato'),
  ('TRX000011', 'CF00000000000001', 120.00,'2025-03-06 15:00:00', 'carta di credito', 'completato'),
  ('TRX000012', 'CF00000000000002',  80.00,'2025-03-06 15:05:00', 'paypal',           'completato');


INSERT INTO Abbonamento (id_abbonamento, cod_fiscale, tipo_abbonamento, data_inizio_validita, data_scadenza, stato_abbonamento)
VALUES
  ('A0001', 'CF00000000000001', 'mensile Roma-Milano',     '2025-03-01', '2025-03-31', 'attivo' ),
  ('A0002', 'CF00000000000003', 'settimanale Napoli-Roma', '2025-03-01', '2025-03-07', 'scaduto'),
  ('A0003', 'CF00000000000006', '10 corse',                '2025-02-15', '2025-05-15', 'attivo' );


INSERT INTO Biglietto (cod_biglietto, cod_fiscale, id_corsa, cod_transazione, data_emissione, prezzo, posto_assegnato, stato_biglietto)
VALUES
  ('BGL0001', 'CF00000000000001', 'CROMMIL', 'TRX000001', '2025-03-01 10:16:00', 39.90, '12A', 'valido'   ),
  ('BGL0002', 'CF00000000000002', 'CROMMIL', 'TRX000002', '2025-03-01 10:21:00', 39.90, '12B', 'valido'   ),
  ('BGL0003', 'CF00000000000005', 'CROMMIL', 'TRX000005', '2025-03-03 11:31:00', 39.90, '15C', 'valido'   ),
  ('BGL0004', 'CF00000000000007', 'CROMMIL', 'TRX000007', '2025-03-04 08:51:00', 39.90, '20D', 'valido'   ),
  ('BGL0005', 'CF00000000000003', 'CROMBOL', 'TRX000003', '2025-03-02 09:01:00', 29.90, '05A', 'valido'   ),
  ('BGL0006', 'CF00000000000004', 'CROMBOL', 'TRX000004', '2025-03-02 09:06:00', 19.90, '05B', 'valido'   ),
  ('BGL0007', 'CF00000000000006', 'CNAPROM', 'TRX000006', '2025-03-03 11:36:00', 25.90, '03C', 'annullato'),
  ('BGL0008', 'CF00000000000008', 'CNAPROM', 'TRX000008', '2025-03-04 09:11:00', 15.90, '02A', 'valido'   ),
  ('BGL0009', 'CF00000000000009', 'CMILTOR', 'TRX000009', '2025-03-05 12:01:00', 39.90, '18F', 'valido'   ),
  ('BGL0010', 'CF00000000000010', 'CMILTOR', 'TRX000010', '2025-03-05 12:06:00', 39.90, '18E', 'valido'   );


INSERT INTO Validazione (cod_biglietto, data_ora, luogo, esito)
VALUES
  ('BGL0001', '2025-03-10 08:30:00', 'Roma',	'valido'    ),
  ('BGL0002', '2025-03-10 08:35:00', 'Roma',	'valido'    ),
  ('BGL0005', '2025-03-11 09:45:00', 'Firenze',	'valido'    ),
  ('BGL0007', '2025-03-10 07:45:00', 'Napoli',	'non valido'),
  ('BGL0008', '2025-03-10 08:10:00', 'Napoli',	'non valido');  
