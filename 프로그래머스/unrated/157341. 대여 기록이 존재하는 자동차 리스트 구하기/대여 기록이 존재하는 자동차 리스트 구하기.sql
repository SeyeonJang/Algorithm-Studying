-- 코드를 입력하세요
SELECT
    b.CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY b
JOIN CAR_RENTAL_COMPANY_CAR a
on b.START_DATE like '2022-10-%'
    and a.CAR_TYPE = '세단'
    and a.CAR_ID = b.CAR_ID
group by b.CAR_ID
order by b.CAR_ID desc;