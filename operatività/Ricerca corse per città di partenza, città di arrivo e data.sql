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
    GROUP_CONCAT(
        CONCAT(t.citta_partenza, ' - ', t.citta_arrivo)
        ORDER BY ct.numero_fermate
        SEPARATOR ' / '
    ) AS percorso_completo
FROM Corsa c
LEFT JOIN Mezzo m       ON c.targa      = m.targa
LEFT JOIN Corsa_Tratta ct ON c.id_corsa = ct.id_corsa
LEFT JOIN Tratta t      ON ct.id_tratta = t.id_tratta
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
    m.tipo_mezzo
ORDER BY c.ora_partenza;