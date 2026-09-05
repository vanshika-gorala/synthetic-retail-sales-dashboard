create database insights;
use insights;
select * from copy_online_retail_data as datas;
RENAME TABLE copy_online_retail_data TO datas;
select * from datas;

-- BASIC
-- 1 find total sales for the business. 
select sum(sales) as total_sales
from datas;

-- 2. find total number of unique customers. 
select count(distinct customer_id) as unique_customers
from datas;

-- 3. find total quantity of products sold. 
select sum(quantity) as total_quantity_sold
from datas;

-- 4. , calculate the average order value.
select sum(sales)/ count(distinct customer_id) as AOV
from datas;

-- INTERMEDIATE
-- 5. find total sales for each product category and identify the highest-selling category. 
select category_name, sum(sales) total_sales
from datas
group by category_name
order by total_sales desc;
-- highest selling category = electronics with  rp.166510 sales

-- 6. find the top5 products by quantity sold. 
 select product_name, sum(quantity) as total_quantity_sold
from datas
group by product_name
order by total_quantity_sold desc
limit 5;

-- 7. find the top 3 cities by total sales.
select city, sum(sales) as total_sales
from datas
group by city
order by total_sales desc
limit 3;

-- ADVANCE
-- 8. find the month with the highest total sales. 
set sql_safe_updates=0;
UPDATE datas
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

select monthname(order_date) as month, sum(sales) as total_sales
from datas
group by month(order_date), monthname(order_date)
order by total_sales desc
limit 1;

-- 9. rank all products by total sales using a window function.
select product_name, sum(sales) as total_sales,
rank() over(order by sum(sales) desc)
as rnk
from datas
group by product_name;

-- 10. find products whose total sales are above the average sales of all products using a subquery.
select product_name, sum(sales) as t_sales
from datas
group by product_name
having t_sales > (select avg(total_sales) as avg_sales
from(
select product_name, sum(sales) total_sales
from datas
group by product_name) catsum) ;




