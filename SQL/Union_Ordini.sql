/*create or replace view v_Union_Ordini as*/
select o.*, od.ProductID,od.Quantity,od.UnitPrice,od.Discount from Orders o 
join OrderDetails od on o.OrderID=od.OrderID
union
select o.*, od.ProductID,od.Quantity,od.UnitPrice,od.Discount from OrdersOld o 
join OrdersDetailsOld od on o.OrderID=od.OrderID