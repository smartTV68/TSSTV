/*create or replace view v_Ordini_Orfani as*/
SELECT o.OrderID
FROM Orders o
left join OrderDetails od on o.OrderID=od.OrderID
where od.OrderID is null
group by o.OrderID
order by o.OrderID