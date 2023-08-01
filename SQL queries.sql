Select * from Superstore;
Select Category,Round(SUM(Sales),2) as Total_Sales from Superstore GROUP BY Category;
Select Region,Round(SUM(Sales),2) as Total_Sales from Superstore GROUP BY Region;
Select Segment,Round(SUM(Sales),2) as Total_Sales from Superstore GROUP BY Segment;
Select Product_Name, Count(Product_Name) as Count_Sales from Superstore GROUP by product_name order by Count_Sales desc limit 10;
Select Customer_name, COUNT(Customer_name) AS Purchase_Frequency, Round(AVG(Sales),2) as Average_Transaction from Superstore group By Customer_name order by Purchase_Frequency desc limit 10;
Select Ship_Mode, Count(Ship_Mode) as Count_Ship_Modes from Superstore group by ship_mode;
Select State, Round(SUM(sales),2) as Total_Sales from Superstore group by State order by Total_Sales desc limit 10;
Select Substring(order_date,length(order_date)-3,4) AS Year,Round(SUM(Sales),2) as Total_Sales from superstore Group By Year;