SELECT 
    ct.numero_fermate AS ordine_tratta,
    t.id_tratta,
    t.citta_partenza AS tratta_partenza,
    t.citta_arrivo   AS tratta_arrivo,
    t.distanza_km,
    t.durata_minuti,
    (
      SELECT MIN(b2.prezzo)
      FROM Biglietto b2
      WHERE b2.id_corsa = c.id_corsa
        AND b2.stato_biglietto = 'valido'
    ) AS prezzo_minimo_corsa
FROM Corsa c
JOIN Corsa_Tratta ct ON c.id_corsa = ct.id_corsa
JOIN Tratta t        ON ct.id_tratta = t.id_tratta
WHERE c.id_corsa = 'CROMMIL'
ORDER BY ct.numero_fermate;
