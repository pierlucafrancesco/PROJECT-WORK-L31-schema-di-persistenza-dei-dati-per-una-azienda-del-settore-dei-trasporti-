SELECT 
    b.cod_biglietto,
    b.cod_fiscale,
    b.stato_biglietto,
    c.id_corsa,
    c.citta_partenza,
    c.citta_arrivo,
    c.data_partenza,
    c.ora_partenza,
    v.data_ora        AS ultima_validazione,
    v.luogo,
    v.esito
FROM Biglietto b
JOIN Corsa c        ON b.id_corsa      = c.id_corsa
LEFT JOIN Validazione v 
    ON b.cod_biglietto = v.cod_biglietto
WHERE b.cod_biglietto = 'BGL0001'
ORDER BY v.data_ora DESC
LIMIT 1;