/*
write a SQL query to find the salesperson and customer who belongs to same city. Return Salesman, cust_name and city.
*/

SELECT salesman.name AS 'salesman', customer.cust_name AS 'customer', salesman.city
  FROM salesman, customer
 WHERE salesman.city = customer.city;