-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName, CategoryName 
from Product as p
join Category as c
on p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, s.companyName 
from [Order] as o
join Shipper as s
on o.shipVia = s.id
where o.orderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.productName, o.quantity 
from orderDetail as o
join product as p
on o.productId = p.id
where orderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id as orderId, c.companyName as customerCompany, e.lastName as employeeLastName
from [Order] as o
join Customer as c
on o.customerId = c.id
join Employee as e
on o.employeeId = e.id;