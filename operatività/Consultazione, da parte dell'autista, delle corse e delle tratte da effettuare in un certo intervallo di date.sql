SELECT 
    a.matricola,
    a.nome AS nome_autista,
    a.cognome AS cognome_autista,
    m.targa,
    c.id_corsa,
    c.citta_partenza AS corsa_partenza,
    c.citta_arrivo   AS corsa_arrivo,
    c.data_partenza,
    c.ora_partenza,
    ct.numero_fermate AS ordine_tratta,
    t.citta_partenza  AS tratta_partenza,
    t.citta_arrivo    AS tratta_arrivo
FROM Autista a
JOIN Mezzo_Autista ma ON a.matricola = ma.matricola
JOIN Mezzo m          ON ma.targa    = m.targa
JOIN Corsa c          ON c.targa     = m.targa
LEFT JOIN Corsa_Tratta ct ON c.id_corsa = ct.id_corsa
LEFT JOIN Tratta t        ON ct.id_tratta = t.id_tratta
WHERE a.matricola = 'DRVALFE01'
  AND c.data_partenza BETWEEN '2025-03-01' AND '2025-03-31'
ORDER BY 
    c.data_partenza,
    c.ora_partenza,
    ct.numero_fermate;