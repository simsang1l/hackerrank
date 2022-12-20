-- 문제가 2개이다.
-- 1. occupation is the lowercase, ordered alphabetically
-- 


select
    concat(Name, '(', left(Occupation, 1), ')')
from
    occupations
order by name
;    

select
    concat('There are a total of ', count(occupation), ' ', lower(Occupation), 's.')
from
    occupations
group by
    Occupation
order by
    count(occupation)
    , occupation
;