-- SQL Query for Power BI Dashboard
-- Total Revenue 
select sum(mysqlpb.walmart_sales.total_price) as Total_Revenue
from mysqlpb.walmart_sales;

-- Average Order values
select sum(mysqlpb.walmart_sales.total_price)/count(distinct mysqlpb.walmart_sales.invoice_id) as avg_order_value
from mysqlpb.walmart_sales;

-- Total Products Sold
select sum(mysqlpb.walmart_sales.quantity) as Total_Products_Sold
from mysqlpb.walmart_sales;

-- Total Orders
select count(distinct mysqlpb.walmart_sales.invoice_id) as Total_Orders
from mysqlpb.walmart_sales;

-- Average Products Per Orders
select sum(mysqlpb.walmart_sales.quantity)/count(distinct mysqlpb.walmart_sales.invoice_id) as avg_products_per_order
from mysqlpb.walmart_sales;

-- Daily Trends for Total Order
select dayofweek(mysqlpb.walmart_sales.date) as Day,
			dayname(mysqlpb.walmart_sales.date) as Dayname, 
				count(distinct mysqlpb.walmart_sales.invoice_id) as Total_Order
	from mysqlpb.walmart_sales
group by Dayname, Day
order by Day

-- Monthly Trend for Total Order
select month(mysqlpb.walmart_sales.date) as Month,
	monthname(mysqlpb.walmart_sales.date) as Month_Name, 
		count(distinct mysqlpb.walmart_sales.invoice_id) as Total_Order
	from mysqlpb.walmart_sales
group by Month_Name, Month
order by Month 

-- % of Sales by Product Category
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.total_price) as Total_Sales,
				sum(mysqlpb.walmart_sales.total_price)*100/(select sum(mysqlpb.walmart_sales.total_price) from mysqlpb.walmart_sales) as percentage_of_sales
from mysqlpb.walmart_sales
group by category
order by Total_Sales desc

-- % of Sales by Product City
select mysqlpb.walmart_sales.city as city,
			sum(mysqlpb.walmart_sales.total_price) as Total_Sales,
				concat(round(sum(mysqlpb.walmart_sales.total_price)*100/(select sum(mysqlpb.walmart_sales.total_price) from mysqlpb.walmart_sales),2), '%') as percentage_of_sales
from mysqlpb.walmart_sales
group by city
order by Total_Sales desc

-- Total Products Sold by Category
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.quantity) as Total_Products_Sold
from mysqlpb.walmart_sales
group by category
order by Total_Products_Sold desc

-- Top 3 Category by Revenue
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.total_price) as Total_Revenue
from mysqlpb.walmart_sales
group by category
order by Total_Revenue desc
limit 3

-- Bottom 3 Category by Revenue
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.total_price) as Total_Revenue
from mysqlpb.walmart_sales
group by category
order by Total_Revenue asc
limit 3		

-- Top 3 Category by Quantity
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.quantity) as quantity
from mysqlpb.walmart_sales
group by category
order by quantity desc
limit 3		

-- Bottom 3 Category by Quantity
select mysqlpb.walmart_sales.category as category,
			sum(mysqlpb.walmart_sales.quantity) as quantity
from mysqlpb.walmart_sales
group by category
order by quantity asc
limit 3		

-- Top 3 Category by Total_Orders
select mysqlpb.walmart_sales.category as category,
			count(distinct mysqlpb.walmart_sales.invoice_id) as Total_Order
from mysqlpb.walmart_sales
group by category
order by Total_Order desc
limit 3	

-- Bottom  3 Category by Total_Orders
select mysqlpb.walmart_sales.category as category,
			count(distinct mysqlpb.walmart_sales.invoice_id) as Total_Order
from mysqlpb.walmart_sales
group by category
order by Total_Order asc
limit 3	
			