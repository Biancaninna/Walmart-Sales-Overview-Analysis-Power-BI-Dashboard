# _Walmart Sales Power BI Dashboard_
In this project we will build a Walmart Sales Dashboard, we will use MySQL and Power BI tools which are currently being used in the market and there is a very high demand for these particular tools. We will use some advanced functions, some advanced Dax functions, conditional filtering and conditional formatting, and also action filters. Walmart sales data in this project is obtained from Kaggle.com.

## Steps in Project
### Part 1. MySQL
1. Creating Database
   
   Create a database in MySQL then we will import the files.
   
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/creating%20database%20mysql.png?raw=true)
3. Importing Data
   
   Import a particular raw data into MySQL database.
   
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Importing%20csv%20to%20mysql.png?raw=true)
5. Writing Queries

   We will be writing the SQL Queries into our MySQL database. The MySQL query results will be used as a comparison of the Power BI query results.

### Part 2. Power BI
1. Connecting to MySQL

   The data source that will be used comes from MySQL because we have already imported our data into MySQL so we will only connect our Power BI to MySQL directly and we can start building our report.
   >First, click on Get Data and choose MySQL database

    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Import%20mysql%20to%20Power%20BI.png?raw=true)

   >Then we just need to fill in about our MySQL database
    
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/import%20mysql%20to%20Power%20BI%202.png?raw=true)
   >After that, we only need to load the data or transfom the data first
    
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/import%20mysql%20to%20Power%20BI%203.png?raw=true)
3. Data Cleaning

   We will be using the transforming data tools or some functions in power query where we will do some data cleaning.
5. Data Processing

   We will do some data processing so we will also clean or use Dax functionalities in Power BI to get and custom columns or we can say conditional colums into our report with respect to the problem statement we are having from our project.
7. Data Visualization

   We will be doing some data visualization, we will be building some charts, we will be using some advanced functionality to format those charts.

## Problem Statement
We need to understand what the problem statement provided to us by our client is. Our client decided to provide the problem statement in two sections, the first section is KPI's requirement and the second section is charts requirement.
### KPI's Requirement
We need to analyze key indicators for our Walmart product sales data to gain insights into our business performance. We need to calculate the following metrics:
1. Total Revenue

   The sum of the total price of all walmart product orders.
3. Average Order Value

   The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
5. Total Products Sold

   The sum of all quantities of all products sold.
7. Total Orders

   The total number of orders placed.
9. Average Products Per Order

   The average number of products sold per order, calculated by dividing the total number of produts sold by the total number of orders.

### Chart's Requirement
We would like to visualize various aspects of our Walmart product sales data to gain insights and understand key trends. We have to identified the following requirements for creating charts:
1. Daily Trend for Total Orders

   Create a stacked bar chart that displays the daily trend of total orders over a specific time period. This chart will help us identify any patterns or fluctuations in order volumes on a daily basis.
2. Monthly Trend for Total Orders

   Create a line chart that illustrates the monthly trend of total orders throughout the year. This chart will allow us to identify peak periods of high order activity.
3. Percentage of Sales by Pizza Category

   Create a pie chart that shows the distribution of sales across different product categories. This chart will provide insights into the popularity of various product categories and their contribution to overall sales.
4. Percentage of Sales by City

   create a pie chart that shows each city's contribution to product sales based on different product categories. This chart will help us to understand customer preference on walmart products in each city and its impact on sales.
5. Total Products Sold by Product Category

   Create a funnel chart that represents the total number of products sold for each product category. This chart will allow us to compare the sales performance of different product categories.
6. Top 3 Best Sellers by Revenue, Total Quantity, and Total Orders

   Create a bar chart highlighting the top 3 best-selling products based on the Revenue, Total Quantity, and Total Orders. This chart will help us identify the most popular product categories.
7. Bottom 3 Best Sellers by Revenue, Total Quantity, and Total Orders

   Create a bar chart showcasing the bottom 3 worst-selling products based on the Revenue, Total Quantity, and Total Orders. This chart will help us to identify product categories that are underperforming or less popular.

## Software Used
- MS EXCEL
- MySQL
- Power BI


## Steps in Power BI
### 1. KPI's Building
Before building the visualization, we will create all our measures from KPI's requirement.
1. Total Revenue

   >right click everywhere from data and create a new measure so now we will be going to use the Dax functions.
   
   ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Total%20Revenue.png?raw=true)
   
2. Average Order Value

   ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Average%20Order%20Value.png?raw=true)
   
3. Total Products Sold

   ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Total%20Product%20Sold.png?raw=true)
   
4. Total Orders

   ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Total%20Order.png?raw=true)
   
5. Average Products Per Order

   ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Average%20Products%20Per%20Order.png?raw=true)
   
6. Daily Trend for Total Orders
   To visualize the daily trend in Power BI, we need to extract the purchase date into day names and then sort the days in order of the week. 
    >First, go to table view then transform data, In Power Query Editor, click on date and choose Day - Name of Day

    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Data%20processing.png?raw=true)
    >Then, to sort the names of the days of the week starting from Monday, we will use the conditional function
    
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Data%20processing%203.png?raw=true)
    >In this dashboard, we will visualize the name of the day only taking the first three letters, so we will use the Dax function. Back to the Table View - New Column and we can do Dax function:
    
    ![image alt](https://github.com/Biancaninna/Power-BI-Documentation/blob/master/Order%20Day.png?raw=true)
    >After that we can visualize our report
    
6. Monthly Trend for Total Orders
   To visualize the monthly trend for total orders, we only need to do the same steps as visualizing the daily trend for total orders.

After doing data processing, we will visualize Walmart Sales data. You can see the final result of the Power BI Dashboard visualization in this project by clicking the badges below.

   [![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://github.com/Biancaninna/Walmart-Sales-Dashboard-Project/blob/4eb770dea5987817b4ba210446348c5ebaad72cf/DashboardPowerBI.pbix)
