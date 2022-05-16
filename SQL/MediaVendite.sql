/*create or replace view v_MediaVendite as*/
SELECT 
    IDProdotto,
    Prodotto,
    AVG(Media) AS Media,
    ReorderLevel AS Riordino,
    UnitsInStock AS Presenti
FROM
    v_OrdineMensile
        JOIN
    Products ON ProductID = IDProdotto
        JOIN
    v_Last_Order
GROUP BY IDProdotto
ORDER BY IDProdotto