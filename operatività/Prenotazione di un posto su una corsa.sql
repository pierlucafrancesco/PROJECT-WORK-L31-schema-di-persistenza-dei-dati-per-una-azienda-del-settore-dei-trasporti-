-- 1) Aggiorno i posti disponibili sulla corsa (se c'è ancora posto)
UPDATE Corsa
SET posti_disponibili = posti_disponibili - 1
WHERE id_corsa = 'CROMMIL'
  AND posti_disponibili > 0;

-- 2) Inserisco il biglietto collegato al cliente, alla corsa e al pagamento
INSERT INTO Biglietto (
    cod_biglietto,
    cod_fiscale,
    id_corsa,
    cod_transazione,
    data_emissione,
    prezzo,
    posto_assegnato,
    stato_biglietto
) VALUES (
    'BGL0011',                 -- nuovo codice biglietto
    'CF00000000000001',        -- cliente
    'CROMMIL',                 -- corsa
    'TRX000013',               -- transazione di pagamento
    '2025-03-06 10:10:00',     -- data emissione
    39.90,                     -- prezzo
    '21A',                     -- posto
    'valido'                   -- stato
);
