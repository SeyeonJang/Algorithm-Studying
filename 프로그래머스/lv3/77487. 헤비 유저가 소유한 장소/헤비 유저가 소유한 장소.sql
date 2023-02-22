-- 코드를 입력하세요
SELECT
    ID,
    NAME,
    HOST_ID
FROM PLACES
where HOST_ID in (
    select HOST_ID from PLACES
    group by HOST_ID having COUNT(HOST_ID)>=2)
order by ID asc;