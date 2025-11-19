SELECT 
    id_corsa,
    citta_partenza,
    citta_arrivo,
    data_partenza,
    ora_partenza,
    posti_totali,
    posti_disponibili,
    (posti_totali - posti_disponibili) AS posti_occupati
FROM Corsa
WHERE id_corsa = 'CROMMIL';