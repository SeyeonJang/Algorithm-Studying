-- 코드를 입력하세요
# SELECT
#     ORDER_ID,
#     PRODUCT_ID,
#     OUT_DATE,
#     (if OUT_DATE = NULL then
#         '출고 미정';
#     elseif OUT_DATE >= STR_TO_DATE('2022-05-01', '%Y-%m-%d') then
#         '출고 완료';
#     else
#         '출고 미정';
#     end if;) as '출고 여부'
# from FOOD_ORDER
# order by ORDER_ID asc;

select
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') as 'OUT_DATE',
    (case when DATEDIFF(OUT_DATE, '2022-05-01') <= 0 then '출고완료'
    when DATEDIFF(OUT_DATE, '2022-05-01') > 0 then '출고대기'
    else '출고미정'
    end) as '출고여부'
from FOOD_ORDER
order by ORDER_ID asc;