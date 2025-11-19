SELECT
    p.cod_transazione,
    p.cod_fiscale,
    p.importo,
    p.data_pagamento,
    p.metodo_pagamento
FROM Pagamento p
LEFT JOIN Biglietto b ON p.cod_transazione = b.cod_transazione
WHERE b.cod_biglietto IS NULL;
