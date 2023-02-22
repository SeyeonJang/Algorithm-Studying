-- 코드를 입력하세요
SELECT
    a.CATEGORY,
    SUM(b.SALES) AS TOTAL_SALE
FROM BOOK a
JOIN BOOK_SALES b
on a.BOOK_ID = b.BOOK_ID
where SALES_DATE like '2022-01-%'
group by a.CATEGORY
order by CATEGORY asc;