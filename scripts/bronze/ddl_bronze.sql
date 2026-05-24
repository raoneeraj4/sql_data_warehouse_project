/*
***************************
DDL Script: Create Bronze Tables
This script creates tables in the 'bronze' schema.
*/

CREATE TABLE bronze.crm_cust_info(
    cust_id INT,
    cust_key NVARCHAR(50),
    cust_firstname NVARCHAR(50),
    cust_lastname NVARCHAR(50),
    cust_marital_status NVARCHAR(50),
    cust_gndr NVARCHAR(50),
    cust_create_date DATE
);

CREATE TABLE bronze.crm_prd_info(
    prd_id INT,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(50),
    prd_cost INT,
    prd_line NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt DATETIME
);

IF OBJECT_ID('bronze.crm_sales_details','U') IS NOT NULL 
DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details(
    sls_ord_num NVARCHAR(50),
    sls_prd_key NVARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

CREATE TABLE bronze.erp_cust_az12(
    CID NVARCHAR(50),
    BDATE DATETIME,
    GEN NVARCHAR(50)
);

CREATE TABLE bronze.erp_loc_a101(
    CID NVARCHAR(50),
    CNTRY NVARCHAR(50)
);

IF OBJECT_ID('bronze.px_cat_g1v2','U') IS NOT NULL 
DROP TABLE bronze.px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2(
    ID NVARCHAR(50),
    CAT NVARCHAR(50),
    SUBCAT NVARCHAR(50),
    MAINTENANCE NVARCHAR(50)
);
