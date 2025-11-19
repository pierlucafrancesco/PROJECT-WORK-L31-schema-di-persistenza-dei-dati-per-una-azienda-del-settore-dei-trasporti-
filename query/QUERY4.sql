SELECT
    c.citta_partenza,
    c.citta_arrivo,
    SUM(b.prezzo) AS fatturato_totale,
    COUNT(*)      AS numero_biglietti
FROM Biglietto b
JOIN Corsa c ON b.id_corsa = c.id_corsa
WHERE b.data_emissione BETWEEN '2025-03-01' AND '2025-03-31'
  AND b.stato_biglietto = 'valido'
GROUP BY c.citta_partenza, c.citta_arrivo
ORDER BY fatturato_totale DESC;
