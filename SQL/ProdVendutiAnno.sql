/*CREATE or replace VIEW v_ProdVendutiAnno AS*/
    SELECT 
        od.productCode AS Codice,
        p.productName AS productName,
        year (o.orderDate) as Anno,
        quarter (o.orderDate) as Trimestre,
        od.priceEach AS Prezzo,
        SUM(od.quantityOrdered) AS Qta,
        od.quantityOrdered * od.priceEach AS Totale,
        COUNT(0) AS Ordini
    FROM
        orderdetails od
        LEFT JOIN products p ON (od.productCode = p.productCode)
        LEFT JOIN orders o ON (od.orderNumber = o.orderNumber)
    GROUP BY od.productCode,Anno,Trimestre