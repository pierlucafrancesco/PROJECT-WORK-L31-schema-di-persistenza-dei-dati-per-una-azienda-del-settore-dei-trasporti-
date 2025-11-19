SELECT 
    c.id_corsa,
    c.citta_partenza,
    c.citta_arrivo,
    c.data_partenza,
    c.ora_partenza,
    c.ora_arrivo,
    c.posti_totali,
    c.posti_disponibili,
    m.targa,
    m.tipo_mezzo,
    m.capacita_posti,
    MIN(b.prezzo) AS prezzo_minimo,
    MAX(b.prezzo) AS prezzo_massimo
FROM Corsa c
LEFT JOIN Mezzo m      ON c.targa = m.targa
LEFT JOIN Biglietto b  ON c.id_corsa = b.id_corsa
  AND b.stato_biglietto   = 'valido'
WHERE c.citta_partenza    = 'Roma'
  AND c.citta_arrivo      = 'Milano'
  AND c.data_partenza     = '2025-03-10'
  AND c.posti_disponibili > 0
GROUP BY 
    c.id_corsa,
    c.citta_partenza,
    c.citta_arrivo,
    c.data_partenza,
    c.ora_partenza,
    c.ora_arrivo,
    c.posti_totali,
    c.posti_disponibili,
    m.targa,
    m.tipo_mezzo,
    m.capacita_posti
ORDER BY c.data_partenza, c.ora_partenza;
