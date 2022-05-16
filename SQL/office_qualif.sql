SELECT  
o.city as Città,
o.country as Nazione,
e.jobTitle as Qualifica,
count(*) as Num_Impiegati
FROM offices o
left join employees e on o.officeCode=e.officeCode
group by o.country,o.city,e.jobTitle
order by e.jobTitle