/*create or replace view v_OrdineMensile as*/
SELECT 
    o.OrderID AS Ordine,
    od.ProductID AS IDProdotto,
    p.ProductName AS Prodotto,
    AVG(od.Quantity) AS Media,
    (ROUND(DATEDIFF(o.OrderDate, LastDate) / 30, 0) * (- 1)) AS Mesi
FROM
    Orders o
        JOIN
    OrderDetails od ON o.OrderID = od.OrderID
        JOIN
    Products p ON p.ProductID = od.ProductID
        JOIN
    v_Last_Order,
    Option1
WHERE
    (DATEDIFF(o.OrderDate, LastDate) / 30) * (- 1) <= Mesi
GROUP BY od.ProductID
ORDER BY p.ProductID