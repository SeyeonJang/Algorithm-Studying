-- 코드를 입력하세요
SELECT
    MONTH(START_DATE) as 'MONTH',
    CAR_ID,
    COUNT(*) as 'RECORDS'
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
where CAR_ID in (select CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                 where MONTH(START_DATE) BETWEEN 8 AND 10
                 group by CAR_ID
                 having count(*) >= 5)
AND MONTH(START_DATE) BETWEEN 8 AND 10
group by MONTH, CAR_ID
    having count(*) > 0
order by MONTH asc, CAR_ID desc;