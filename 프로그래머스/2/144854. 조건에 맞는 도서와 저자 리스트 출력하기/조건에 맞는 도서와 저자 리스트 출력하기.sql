-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME, SUBSTR(PUBLISHED_DATE,1,10)
FROM BOOK B
INNER JOIN AUTHOR A
ON A.AUTHOR_ID=B.AUTHOR_ID
WHERE CATEGORY='경제'
ORDER BY PUBLISHED_DATE