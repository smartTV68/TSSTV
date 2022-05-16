delete
FROM OrderDetails
where OrderID in (select OrderID from OrdersOld);

delete
FROM Orders
where OrderID in (select OrderID from OrdersOld);