select
    case 
        when MONTH(DIFFERENTIATION_DATE) in (01,02,03) then '1Q' 
        when MONTH(DIFFERENTIATION_DATE) in (04,05,06) then '2Q' 
        when MONTH(DIFFERENTIATION_DATE) in (07,08,09) then '3Q' 
        when MONTH(DIFFERENTIATION_DATE) in (10,11,12) then '4Q' 
    end as QUARTER,
    COUNT(*) as ECOLI_COUNT
from ECOLI_DATA
group by QUARTER
order by QUARTER;