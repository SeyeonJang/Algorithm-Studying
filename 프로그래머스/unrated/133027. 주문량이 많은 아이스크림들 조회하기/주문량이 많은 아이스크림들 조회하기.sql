-- 코드를 입력하세요
SELECT
    f.FLAVOR
FROM FIRST_HALF f
JOIN JULY j ON f.FLAVOR = j.FLAVOR
group by f.FLAVOR
order by SUM(f.TOTAL_ORDER + j.TOTAL_ORDER) desc
limit 3