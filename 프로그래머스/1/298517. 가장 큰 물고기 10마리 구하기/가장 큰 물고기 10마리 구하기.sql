select ID, LENGTH
from FISH_INFO
where LENGTH is not NULL
order by LENGTH desc, ID asc
limit 10;