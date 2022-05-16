create table  OrdersDetailsOld
as select *
FROM OrderDetails
where OrderID in (select OrderID from OrdersOld)