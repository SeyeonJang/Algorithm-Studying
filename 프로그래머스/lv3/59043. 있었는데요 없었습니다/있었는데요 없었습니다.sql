-- 코드를 입력하세요
SELECT
    a.ANIMAL_ID,
    a.NAME
from ANIMAL_INS a
    JOIN ANIMAL_OUTS b
    ON a.DATETIME > b.DATETIME
        and a.ANIMAL_ID = b.ANIMAL_ID
order by a.DATETIME asc;