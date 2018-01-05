/* ESTUDIO DE STG_FACTURAS_FCT */
USE STAGE;

SELECT
    COUNT(*) TOTAL_REGISTROS,

    SUM(CASE LENGTH(TRIM(BILL_REF_NO)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_BILL_REF_NO,
    COUNT(DISTINCT CASE LENGTH(TRIM(BILL_REF_NO)) WHEN 0 THEN 0 ELSE BILL_REF_NO END) TOTAL_DISTINTOS_BILL_REF_NO,

    SUM(CASE LENGTH(TRIM(CUSTOMER_ID)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_CUSTOMER_ID,
    COUNT(DISTINCT CASE LENGTH(TRIM(CUSTOMER_ID)) WHEN 0 THEN 0 ELSE CUSTOMER_ID END) TOTAL_DISTINTOS_CUSTOMER_ID,

    SUM(CASE LENGTH(TRIM(START_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_START_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(START_DATE)) WHEN 0 THEN 0 ELSE START_DATE END) TOTAL_DISTINTOS_START_DATE,

    SUM(CASE LENGTH(TRIM(END_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_END_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(END_DATE)) WHEN 0 THEN 0 ELSE END_DATE END) TOTAL_DISTINTOS_END_DATE,

    SUM(CASE LENGTH(TRIM(STATEMENT_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_STATEMENT_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(STATEMENT_DATE)) WHEN 0 THEN 0 ELSE STATEMENT_DATE END) TOTAL_DISTINTOS_STATEMENT_DATE,

    SUM(CASE LENGTH(TRIM(PAYMENT_DATE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_PAYMENT_DATE,
    COUNT(DISTINCT CASE LENGTH(TRIM(PAYMENT_DATE)) WHEN 0 THEN 0 ELSE PAYMENT_DATE END) TOTAL_DISTINTOS_PAYMENT_DATE,

    SUM(CASE LENGTH(TRIM(BILL_CYCLE)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_BILL_CYCLE,
    COUNT(DISTINCT CASE LENGTH(TRIM(BILL_CYCLE)) WHEN 0 THEN 0 ELSE BILL_CYCLE END) TOTAL_DISTINTOS_BILL_CYCLE,

    SUM(CASE LENGTH(TRIM(AMOUNT)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_AMOUNT,
    COUNT(DISTINCT CASE LENGTH(TRIM(AMOUNT)) WHEN 0 THEN 0 ELSE AMOUNT END) TOTAL_DISTINTOS_AMOUNT,

    SUM(CASE LENGTH(TRIM(BILL_METHOD)) WHEN 0 THEN 0 ELSE 1 END) TOTAL_BILL_METHOD,
    COUNT(DISTINCT CASE LENGTH(TRIM(BILL_METHOD)) WHEN 0 THEN 0 ELSE BILL_METHOD END) TOTAL_DISTINTOS_BILL_METHOD

FROM STAGE.STG_FACTURAS_FCT;
