# SUM,MAX,MIN 등: 집계함수 >> WHERE 절에 쓰고 싶을때의 용법을 알아야겠다.
# 원칙적으로는 SELECT에서만 집계함수를 사용할 수 있는 듯 하다. 
# FROM 다음에 (SELECT ~)를 써서 검색할 범위를 줄일 수 있나?
SELECT *
FROM FOOD_PRODUCT
WHERE PRICE=(SELECT MAX(PRICE) FROM FOOD_PRODUCT)