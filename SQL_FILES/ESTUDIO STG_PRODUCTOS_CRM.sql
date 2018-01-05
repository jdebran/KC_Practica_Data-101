/* ESTUDIO DE STG_PRODUCTOS_CRM */
USE STAGE;

SELECT
    COUNT(*) TOTAL_REGISTROS,

    SUM(CASE LENGTH(TRIM(PRODUCT_ID)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_ID,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_ID)) WHEN 0 THEN 0 ELSE PRODUCT_ID END) TOTAL_DISTINTOS_PRODUCT_ID,

    SUM(CASE LENGTH(TRIM(CUSTOMER_ID)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_CUSTOMER_ID,
    COUNT(DISTINCT CASE LENGTH(TRIM(CUSTOMER_ID)) WHEN 0 THEN 0 ELSE CUSTOMER_ID END) TOTAL_DISTINTOS_CUSTOMER_ID,

    SUM(CASE LENGTH(TRIM(PRODUCT_NAME)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_NAME,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_NAME)) WHEN 0 THEN 0 ELSE PRODUCT_NAME END) TOTAL_DISTINTOS_PRODUCT_NAME,

    SUM(CASE LENGTH(TRIM(ACCESS_POINT)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_ACCESS_POINT,
    COUNT(DISTINCT CASE LENGTH(TRIM(ACCESS_POINT)) WHEN 0 THEN 0 ELSE ACCESS_POINT END) TOTAL_DISTINTOS_ACCESS_POINT,

    SUM(CASE LENGTH(TRIM(CHANNEL)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_CHANNEL,
    COUNT(DISTINCT CASE LENGTH(TRIM(CHANNEL)) WHEN 0 THEN 0 ELSE CHANNEL END) TOTAL_DISTINTOS_CHANNEL,

    SUM(CASE LENGTH(TRIM(AGENT_CODE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_AGENT_CODE,
    COUNT(DISTINCT CASE LENGTH(TRIM(AGENT_CODE)) WHEN 0 THEN 0 ELSE AGENT_CODE END) TOTAL_DISTINTOS_AGENT_CODE,

    SUM(CASE LENGTH(TRIM(START_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_START_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(START_DATE)) WHEN 0 THEN 0 ELSE START_DATE END) TOTAL_DISTINTOS_START_DATE,

    SUM(CASE LENGTH(TRIM(INSTALL_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_INSTALL_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(INSTALL_DATE)) WHEN 0 THEN 0 ELSE INSTALL_DATE END) TOTAL_DISTINTOS_INSTALL_DATE,

    SUM(CASE LENGTH(TRIM(END_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_END_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(END_DATE)) WHEN 0 THEN 0 ELSE END_DATE END) TOTAL_DISTINTOS_END_DATE,

    SUM(CASE LENGTH(TRIM(PRODUCT_CITY)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_CITY,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_CITY)) WHEN 0 THEN 0 ELSE PRODUCT_CITY END) TOTAL_DISTINTOS_PRODUCT_CITY,

    SUM(CASE LENGTH(TRIM(PRODUCT_ADDRESS)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_ADDRESS,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_ADDRESS)) WHEN 0 THEN 0 ELSE PRODUCT_ADDRESS END) TOTAL_DISTINTOS_PRODUCT_ADDRESS,

    SUM(CASE LENGTH(TRIM(PRODUCT_POSTAL_CODE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_POSTAL_CODE,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_POSTAL_CODE)) WHEN 0 THEN 0 ELSE PRODUCT_POSTAL_CODE END) TOTAL_DISTINTOS_PRODUCT_POSTAL_CODE,

    SUM(CASE LENGTH(TRIM(PRODUCT_STATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_STATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_STATE)) WHEN 0 THEN 0 ELSE PRODUCT_STATE END) TOTAL_DISTINTOS_PRODUCT_STATE,

    SUM(CASE LENGTH(TRIM(PRODUCT_COUNTRY)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PRODUCT_COUNTRY,
    COUNT(DISTINCT CASE LENGTH(TRIM(PRODUCT_COUNTRY)) WHEN 0 THEN 0 ELSE PRODUCT_COUNTRY END) TOTAL_DISTINTOS_PRODUCT_COUNTRY

FROM STAGE.STG_PRODUCTOS_CRM;
