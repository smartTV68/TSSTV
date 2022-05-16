create or replace view v_Pagamenti_anno as
select 
c.customerNumber as Cod,
c.customerName as Cliente,
c.contactLastName as Cognome,
c.contactFirstName as Nome,
c.country as Stato,
c.city as Città,
year(p.paymentDate) as Anno,
count(p.checkNumber) as Pagamenti,
sum(p.amount) as Pagato
FROM customers c
left join payments p
on c.customerNumber=p.customerNumber
group by c.customerNumber,Anno
order by c.customerName