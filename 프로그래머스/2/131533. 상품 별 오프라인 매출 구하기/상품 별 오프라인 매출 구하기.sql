-- 코드를 입력하세요
SELECT P.PRODUCT_CODE, S.SA*P.PRICE AS SALES
FROM PRODUCT P
LEFT OUTER JOIN (SELECT PRODUCT_ID, SUM(SALES_AMOUNT) AS SA
FROM OFFLINE_SALE
GROUP BY PRODUCT_ID) S
ON S.PRODUCT_ID=P.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, P.PRODUCT_CODE ASC