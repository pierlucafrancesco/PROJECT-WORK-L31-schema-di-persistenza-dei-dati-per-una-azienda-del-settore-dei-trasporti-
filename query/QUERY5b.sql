SELECT
    b.cod_biglietto,
    b.cod_fiscale,
    b.cod_transazione,
    b.data_emissione,
    b.prezzo
FROM Biglietto b
LEFT JOIN Pagamento p ON b.cod_transazione = p.cod_transazione
WHERE p.cod_transazione IS NULL;