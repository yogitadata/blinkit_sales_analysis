/*====================================================================
                    SECTION 2 : BUSINESS KPIs
======================================================================

Objective:
The objective of this section is to calculate the key performance
indicators (KPIs) that provide an overall view of Blinkit's business
performance. These metrics help evaluate revenue, pricing, and
product performance before moving to detailed analysis.

====================================================================*/

/*====================================================================
Query 04 : Calculate Total Sales

Business Problem:
Blinkit wants to calculate the total sales generated across all
outlets to measure the overall business performance.

Business Importance:
Total Sales is one of the most important KPIs in retail analytics.
It represents the total revenue generated from all products and
serves as the foundation for further business analysis.
====================================================================*/

SELECT
    SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_data;

-- Observation:
-- The total sales generated across all outlets are 18591125.41

/*====================================================================
Query 05 : Calculate Average Sales

Business Problem:
Blinkit wants to determine the average sales generated per product
to understand the typical sales performance across the dataset.

Business Importance:
Average Sales helps evaluate the overall sales performance of
products and provides a benchmark for comparing different product
categories and outlet types.
====================================================================*/

SELECT
    AVG(Item_Outlet_Sales) AS Average_Sales
FROM blinkit_data;


-- Observation:
-- The average sales generated per product are 2181.28.


/*====================================================================
Query 06 : Calculate Average Item MRP

Business Problem:
Blinkit wants to determine the average Maximum Retail Price (MRP)
of all products available in the dataset.

Business Importance:
The average MRP helps understand the overall pricing of products.
It serves as a useful benchmark for pricing analysis and product
portfolio evaluation.
====================================================================*/

SELECT
    AVG(Item_MRP) AS Average_MRP
FROM blinkit_data;

-- Observation:
-- The average MRP of products is 140.99.

/*====================================================================
Query 07 : Calculate Total Number of Outlets

Business Problem:
Blinkit wants to determine how many unique outlets are operating
within the dataset.

Business Importance:
Knowing the total number of outlets helps measure the business
coverage and provides context for outlet-level performance analysis.
====================================================================*/

SELECT
    COUNT(DISTINCT Outlet_Identifier) AS Total_Outlets
FROM blinkit_data;

-- Observation:
-- The dataset contains 10 unique outlets.

/*====================================================================
Query 08 : Calculate Total Number of Product Categories

Business Problem:
Blinkit wants to identify the total number of product categories
available in the dataset.

Business Importance:
Understanding the number of product categories helps evaluate the
breadth of the product portfolio and supports category-wise
business analysis.
====================================================================*/

SELECT
    COUNT(DISTINCT Item_Type) AS Total_Product_Categories
FROM blinkit_data;

-- Observation:
-- The dataset contains 16 unique product categories.

/*====================================================================
Query 07 : Calculate Highest Sales

Business Problem:
Blinkit wants to identify the highest sales value recorded for a
single product in the dataset.

Business Importance:
The highest sales value helps identify the maximum revenue generated
by an individual product. This KPI serves as a benchmark for
evaluating product performance and comparing other products against
the best-performing one.
====================================================================*/

SELECT
    MAX(Item_Outlet_Sales) AS Highest_Sales
FROM blinkit_data;

-- Observation:
-- The highest sales value recorded is 13086.96.

/*====================================================================
Query 08 : Calculate Lowest Sales

Business Problem:
Blinkit wants to identify the lowest sales value recorded for a
single product in the dataset.

Business Importance:
The lowest sales value helps identify products with poor sales
performance. It can support decisions related to inventory
optimization, promotions, or product discontinuation.
====================================================================*/

SELECT
    MIN(Item_Outlet_Sales) AS Lowest_Sales
FROM blinkit_data;

-- Observation:
-- The lowest sales value recorded is 33.29.

/*====================================================================
Query 09 : Calculate Average Item Visibility

Business Problem:
Blinkit wants to determine the average visibility of products across
all outlets.

Business Importance:
Item visibility represents how prominently products are displayed in
stores. Calculating the average visibility helps establish a baseline
for analyzing whether product placement has an impact on sales
performance.
====================================================================*/

SELECT
    AVG(Item_Visibility) AS Average_Item_Visibility
FROM blinkit_data;

-- Observation:
-- The average item visibility across all products is 0.066.



