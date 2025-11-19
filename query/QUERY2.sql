SELECT 
    cl.cod_fiscale,
    cl.nome,
    cl.cognome,
    b.cod_biglietto,
    b.data_emissione,
    b.stato_biglietto,
    c.id_corsa,
    c.citta_partenza,
    c.citta_arrivo,
    c.data_partenza,
    c.ora_partenza,
    p.cod_transazione,
    p.importo,
    p.metodo_pagamento,
    p.stato_pagamento
FROM Cliente cl
JOIN Biglietto b ON cl.cod_fiscale    = b.cod_fiscale
JOIN Corsa c     ON b.id_corsa        = c.id_corsa
JOIN Pagamento p ON b.cod_transazione = p.cod_transazione
WHERE cl.cod_fiscale = 'CF00000000000001'
ORDER BY b.data_emissione DESC;
