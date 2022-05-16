SELECT 
    c.salesRepEmployeeNumber AS Impiegato,
    e.lastName AS Cognome,
    e.firstName AS Nome,
    e.jobTitle AS Qualifica,
    country AS Nazione,
    COUNT(c.salesRepEmployeeNumber) AS Clienti
FROM
    classicmodels.customers c
        JOIN
    employees e ON c.salesRepEmployeeNumber = e.employeeNumber
GROUP BY c.salesRepEmployeeNumber
HAVING Clienti > 1
ORDER BY Clienti DESC , Cognome , Nome