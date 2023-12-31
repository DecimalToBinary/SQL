-- 코드를 입력하세요
# GROUP 사용시 항상 컬럼명을 써줘야 하며 SELECT절과 GROUP절의 컬럼명이 같아야 한다
# CASE WHEN ~ ELSE~ END: 속성 SELECT시 속성의 범위/구간 지정 위함
# ROUND, CEIL, FLOOR
SELECT CASE WHEN PRICE<10000 THEN 0 ELSE FLOOR(PRICE/10000)*10000 END AS PRICE_GROUP, COUNT(*) AS PRODUCTS FROM PRODUCT GROUP BY PRICE_GROUP ORDER BY PRICE_GROUP ASC
