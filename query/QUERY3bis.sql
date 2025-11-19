CREATE VIEW v_corse_dettaglio_tratte AS
SELECT
    c.id_corsa,
    ct.numero_fermate  AS ordine_tratta,
    t.id_tratta,
    t.citta_partenza   AS tratta_partenza,
    t.citta_arrivo     AS tratta_arrivo,
    t.distanza_km,
    t.durata_minuti
FROM Corsa c
JOIN Corsa_Tratta ct ON c.id_corsa = ct.id_corsa
JOIN Tratta t        ON ct.id_tratta = t.id_tratta;

SELECT *
FROM v_corse_dettaglio_tratte
WHERE id_corsa = 'CROMMIL'
ORDER BY ordine_tratta;
