create or replace view v_Fatturato_annuo as
select 
c.customerNumber as Cod,
c.customerName as Cliente,
c.contactLastName as Cognome,
c.contactFirstName as Nome,
c.country as Stato,
c.city as Città,
year(o.orderDate) as Anno,
count(o.orderNumber) as Ordini,
sum(od.quantityOrdered*od.priceEach) as Fatturato
FROM customers c
left join orders o
on c.customerNumber=o.customerNumber
left join orderdetails od
on od.orderNumber=o.orderNumber
group by c.customerName,Anno
/*order by Fatturato desc*/