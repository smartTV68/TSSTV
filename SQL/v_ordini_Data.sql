CREATE 
or replace
VIEW `v_Ordini_Data` AS
    SELECT 
        `od`.`orderNumber` AS `Ordine`,
        `o`.`orderDate` AS `Del`,
        COUNT(`od`.`productCode`) AS `Pezzi`,
        `od`.`quantityOrdered` * `od`.`priceEach` AS `Importo`,
        `od`.`quantityOrdered` * `p`.`buyPrice` AS `Costo`,
        `od`.`quantityOrdered` * `od`.`priceEach` - `od`.`quantityOrdered` * `p`.`buyPrice` AS `Ricavo`,
        (`od`.`quantityOrdered` * `od`.`priceEach` - `od`.`quantityOrdered` * `p`.`buyPrice`) / (`od`.`quantityOrdered` * `p`.`buyPrice`) * 100 AS `Perc`
    FROM
        ((`orderdetails` `od`
        JOIN `products` `p` ON (`od`.`productCode` = `p`.`productCode`))
        JOIN `orders` `o` ON (`od`.`orderNumber` = `o`.`orderNumber`))
    WHERE
        `o`.`orderDate` >= '2003/01/01'
            AND `o`.`orderDate` < '2004/01/01'
    GROUP BY `od`.`orderNumber`
    ORDER BY (`od`.`quantityOrdered` * `od`.`priceEach` - `od`.`quantityOrdered` * `p`.`buyPrice`) / (`od`.`quantityOrdered` * `p`.`buyPrice`) * 100 DESC