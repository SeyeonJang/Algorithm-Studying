-- 코드를 입력하세요
SELECT
    a.REST_ID,
    a.REST_NAME,
    a.FOOD_TYPE,
    a.FAVORITES,
    a.ADDRESS,
    ROUND(AVG(b.REVIEW_SCORE),2) as SCORES
FROM REST_INFO a
JOIN REST_REVIEW b
    ON a.REST_ID = b.REST_ID
where a.ADDRESS like '서울%'
group by a.REST_ID
order by ROUND(AVG(b.REVIEW_SCORE),3) desc, a.FAVORITES desc;