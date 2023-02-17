-- 코드를 입력하세요
SELECT
    ((PRICE DIV 10000) * 10000) as 'PRICE_GROUP',
    count(PRICE) as 'PRODUCTS'
from PRODUCT
group by (PRICE DIV 10000)
order by PRICE asc;