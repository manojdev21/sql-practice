/*
write a SQL query to find those orders where order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
*/

SELECT ord_no, purch_amt, cust_name, city
  FROM orders, customer
 WHERE orders.customer_id = customer.customer_id
   AND orders.purch_amt BETWEEN 500 AND 2000;