/*====================================================================
Project Name : Blinkit Grocery Sales Analysis
Author       : Yogita Meshram
Tool         : MySQL 8.0
Dataset      : BlinkIT Grocery Dataset
Description  : End-to-End SQL Data Analysis Project for Business Insights

Objective:
This project analyzes Blinkit's grocery sales dataset to generate
business insights using SQL. The analysis covers data validation,
sales performance, outlet analysis, product analysis, and customer-
focused insights that can support business decision-making.
====================================================================*/


/*====================================================================
STEP 1 : Create and Select Database
====================================================================*/

CREATE DATABASE IF NOT EXISTS blinkit;

USE blinkit;

Select * 
from  blinkit_data
limit 10;

describe blinkit_data;

ALTER TABLE blinkit_data
RENAME COLUMN `ï»¿Item_Identifier` TO Item_Identifier;

/*====================================================================
Query 01 : Verify Total Records

Business Problem:
Before starting the analysis, it is important to verify that the
dataset has been imported successfully and no records are missing.

Business Importance:
Data validation is the first step of every analytics project.
An incorrect row count can lead to inaccurate reports, KPIs,
and business decisions.
====================================================================*/

SELECT COUNT(*) AS Total_Rows
FROM blinkit_data;




-- Observation:
-- The dataset contains 8,523 records.
-- This confirms that the dataset has been imported successfully.


/*====================================================================
Query 02 : Check Duplicate Records

Business Problem:
Before analyzing the data, it is important to identify duplicate
records. Duplicate entries can lead to incorrect calculations
and misleading business insights.

Business Importance:
Removing duplicate records improves data accuracy and ensures
that reports and dashboards are reliable.
====================================================================*/

SELECT *,
COUNT(*) AS Duplicate_Count
FROM blinkit_data
GROUP BY
Item_Identifier,
Item_Weight,
Item_Fat_Content,
Item_Visibility,
Item_Type,
Item_MRP,
Outlet_Identifier,
Outlet_Establishment_Year,
Outlet_Size,
Outlet_Location_Type,
Outlet_Type,
Item_Outlet_Sales
HAVING COUNT(*) > 1;

-- Observation:
-- No duplicate records were found in the dataset.

/*====================================================================
Query 03 : Check Missing Values

Business Problem:
Before performing analysis, it is important to verify that the
dataset does not contain missing values in any column.

Business Importance:
Missing values can affect calculations, reports, dashboards,
and business decisions. Validating all columns ensures the
dataset is complete and reliable.
====================================================================*/

SELECT
SUM(CASE WHEN Item_Identifier IS NULL THEN 1 ELSE 0 END) AS Item_Identifier_Missing,
SUM(CASE WHEN Item_Weight IS NULL THEN 1 ELSE 0 END) AS Item_Weight_Missing,
SUM(CASE WHEN Item_Fat_Content IS NULL THEN 1 ELSE 0 END) AS Item_Fat_Content_Missing,
SUM(CASE WHEN Item_Visibility IS NULL THEN 1 ELSE 0 END) AS Item_Visibility_Missing,
SUM(CASE WHEN Item_Type IS NULL THEN 1 ELSE 0 END) AS Item_Type_Missing,
SUM(CASE WHEN Item_MRP IS NULL THEN 1 ELSE 0 END) AS Item_MRP_Missing,
SUM(CASE WHEN Outlet_Identifier IS NULL THEN 1 ELSE 0 END) AS Outlet_Identifier_Missing,
SUM(CASE WHEN Outlet_Establishment_Year IS NULL THEN 1 ELSE 0 END) AS Outlet_Establishment_Year_Missing,
SUM(CASE WHEN Outlet_Size IS NULL THEN 1 ELSE 0 END) AS Outlet_Size_Missing,
SUM(CASE WHEN Outlet_Location_Type IS NULL THEN 1 ELSE 0 END) AS Outlet_Location_Type_Missing,
SUM(CASE WHEN Outlet_Type IS NULL THEN 1 ELSE 0 END) AS Outlet_Type_Missing,
SUM(CASE WHEN Item_Outlet_Sales IS NULL THEN 1 ELSE 0 END) AS Item_Outlet_Sales_Missing
FROM blinkit_data;

-- Observation:
-- No missing values were found in any column.
-- The dataset is complete and ready for business analysis.

