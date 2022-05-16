/*create or replace view v_Riordino_Prodotti as*/
SELECT 
    CategoryName AS Categoria,
    ProductName AS Prodotto,
    UnitsInStock AS Stock,
    ReorderLevel AS Minimo,
    IF(UnitsInStock < ReorderLevel,
        'Da ordinare',
        '-') AS Stato,
    IF(UnitsInStock < ReorderLevel,
        UnitsInStock - ReorderLevel,
        0) AS Mancanti,
    UnitsOnOrder AS Ordinati,
    IF(UnitsInStock < ReorderLevel,
        ROUND(media - UnitsInStock - UnitsOnOrder, 0),
        0) AS Riordino1,
    IF(UnitsInStock < ReorderLevel,
        ROUND((ReorderLevel - UnitsInStock) + (media),
                0),
        0) AS Riordino2,
    ROUND(media, 0) AS VendMediaOption1
FROM
    Products p
        JOIN
    Categories c ON p.CategoryID = c.CategoryID
        JOIN
    v_MediaVendite vmv ON p.ProductID = IDProdotto
WHERE
    (media - UnitsInStock - UnitsOnOrder) > 0
        AND UnitsInStock < ReorderLevel
ORDER BY Mancanti , Categoria , Prodotto