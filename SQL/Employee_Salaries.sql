-- > $2000 per month , < 10month, ascending employee_id
select
    name
from
    Employee
where
    months < 10 
    and salary > 2000
order by
    employee_id asc
;