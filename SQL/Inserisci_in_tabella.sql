insert  into  OrderDetails
select *
FROM OrdersDetailsOld
where OrderID in (select OrderID from Orders)