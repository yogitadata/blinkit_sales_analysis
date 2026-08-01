/*====================================================================
            SECTION 5 : ADVANCED BUSINESS INSIGHTS
======================================================================

Objective:
The objective of this section is to generate advanced business
insights by analyzing sales contribution, outlet performance, and
key business metrics. These insights help identify growth
opportunities and support strategic decision-making.

====================================================================*/

SELECT
    Outlet_Type,
    ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales,
    ROUND(
        SUM(Item_Outlet_Sales) * 100 /
        (SELECT SUM(Item_Outlet_Sales)
         FROM blinkit_data),
    2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Sales_Percentage DESC;

-- Observation:
-- Supermarket Type1 contributed the highest share of total sales
-- (69.48%), followed by Supermarket Type3 (18.58%),
-- Supermarket Type2 (9.96%), and Grocery Store (1.98%).
-- The results show that Supermarket Type1 is the dominant
-- contributor to Blinkit's overall revenue.

/*====================================================================
Query 27 : Calculate Sales Contribution (%) by Fat Content

Business Problem:
Blinkit wants to determine the percentage contribution of each fat
content category to the overall sales.

Business Importance:
Understanding the sales contribution of each fat content category
helps Blinkit identify customer preferences and evaluate whether
Low Fat or Regular products contribute more to the overall revenue.
These insights support inventory planning and product strategy.

====================================================================*/

SELECT
    Outlet_Type,
    ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales,
    ROUND(
        SUM(Item_Outlet_Sales) * 100 /
        (SELECT SUM(Item_Outlet_Sales)
         FROM blinkit_data),
    2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Sales_Percentage DESC;

-- Observation:
-- Supermarket Type1 contributed the highest share of total sales
-- (69.48%), followed by Supermarket Type3 (18.58%),
-- Supermarket Type2 (9.96%), and Grocery Store (1.98%).
-- The results show that Supermarket Type1 is the dominant
-- contributor to Blinkit's overall revenue.


/*====================================================================
Query 27 : Calculate Sales Contribution (%) by Fat Content

Business Problem:
Blinkit wants to determine the percentage contribution of each fat
content category to the overall sales.

Business Importance:
Understanding the sales contribution of each fat content category
helps Blinkit identify customer preferences and evaluate whether
Low Fat or Regular products contribute more to the overall revenue.
These insights support inventory planning and product strategy.

====================================================================*/

SELECT
    Item_Fat_Content,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales,
    ROUND(
        SUM(Item_Outlet_Sales) * 100 /
        (SELECT SUM(Item_Outlet_Sales)
         FROM blinkit_data),
    2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Sales_Percentage DESC;

-- Observation:
-- Low Fat products contributed the highest share of total sales
-- (64.03%), generating total sales of 11,904,094.53. Regular
-- products contributed 35.97% of the overall sales, with total
-- sales of 6,687,030.88. The results indicate that Low Fat
-- products are the major contributors to Blinkit's overall revenue.

/*====================================================================
Query 28 : Identify the Top Performing Outlet

Business Problem:
Blinkit wants to identify the outlet that has generated the highest
total sales across all outlets.

Business Importance:
Identifying the top-performing outlet helps Blinkit understand which
outlet is performing exceptionally well. These insights support
benchmarking, best practice identification, and future business
expansion strategies.

====================================================================*/

SELECT
    Outlet_Identifier,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Total_Sales DESC
LIMIT 1;

-- Observation:
-- Outlet OUT027 generated the highest total sales
-- (3,453,926.05), making it the top-performing outlet.
-- This outlet contributes the highest revenue and represents
-- the best-performing outlet based on total sales.

/*====================================================================
Query 29 : Lowest Performing Outlet

Business Problem:
Blinkit wants to identify the outlet that generated the lowest
total sales.

Business Importance:
Identifying the lowest-performing outlet helps Blinkit evaluate
underperforming locations, investigate possible reasons for poor
sales, and take corrective actions to improve business performance.

====================================================================*/

SELECT
    Outlet_Identifier,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Total_Sales ASC
LIMIT 1;

-- Observation:
-- Outlet OUT019 generated the lowest total sales
-- (179,694.09), making it the lowest-performing outlet.
-- This outlet contributes the least revenue and may require
-- further analysis to identify opportunities for improving
-- its sales performance.

/*====================================================================
Query 30 : Top 5 Outlets by Total Sales

Business Problem:
Blinkit wants to identify the top 5 outlets generating the highest
sales.

Business Importance:
Identifying the best-performing outlets helps Blinkit understand
which outlets are driving the highest revenue. These insights
support benchmarking, strategic planning, and identifying
successful business practices across all outlets.

====================================================================*/

SELECT
    Outlet_Identifier,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Total_Sales DESC
LIMIT 5;

-- Observation:
-- The top five revenue-generating outlets are OUT027,
-- OUT035, OUT049, OUT017, and OUT013, with total sales of
-- 3,453,926.05, 2,268,122.94, 2,183,969.81, 2,167,465.29,
-- and 2,142,663.58 respectively. These outlets represent
-- Blinkit's highest-performing outlets based on total sales.


/*====================================================================
Query 31 : Bottom 5 Outlets by Sales

Business Problem:
Blinkit wants to identify the five outlets generating the lowest
total sales.

Business Importance:
Identifying the lowest-performing outlets helps Blinkit detect
underperforming locations, investigate possible reasons for low
sales, and implement strategies to improve their performance.

====================================================================*/

SELECT
    Outlet_Identifier,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Total_Sales ASC
LIMIT 5;

-- Observation:
-- The five lowest-performing outlets are OUT019, OUT010,
-- OUT018, OUT045, and OUT046, with total sales of
-- 179,694.09, 188,340.17, 1,851,822.83, 2,036,725.48,
-- and 2,118,395.17 respectively. These outlets generated
-- the lowest revenue and may require further analysis to
-- identify factors affecting their sales performance.

/*====================================================================
Query 32 : Calculate Average Sales per Outlet

Business Problem:
Blinkit wants to identify the average sales generated by each outlet.

Business Importance:
Analyzing average sales per outlet helps Blinkit evaluate outlet
efficiency and identify high-performing outlets. These insights
support performance comparison and better business decision-making.

====================================================================*/

SELECT
    Outlet_Identifier,
    ROUND(AVG(Item_Outlet_Sales), 2) AS Average_Sales
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Average_Sales DESC;

-- Observation:
-- Outlet OUT027 recorded the highest average sales (3,694.04),
-- followed by OUT035 (2,438.84), OUT049 (2,348.35),
-- OUT017 (2,340.68), and OUT013 (2,299.00). The results
-- indicate that these outlets achieve the highest average
-- sales per transaction among all outlets.

SELECT
    Outlet_Identifier,
    ROUND(SUM(Item_Outlet_Sales), 2) AS Total_Sales,
    DENSE_RANK() OVER(
        ORDER BY SUM(Item_Outlet_Sales) DESC
    ) AS Outlet_Rank
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Outlet_Rank;


-- Observation:
-- The outlets have been ranked based on their total sales
-- using DENSE_RANK(). OUT027 secured Rank 1 with the highest
-- total sales (3,453,926.05), followed by OUT035, OUT049,
-- OUT017, and OUT013. This ranking highlights the top-
-- performing outlets and supports performance comparison
-- across all outlets.


