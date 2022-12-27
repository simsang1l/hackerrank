-- 실제 월급 - 0을뺀 월급을 올림하라!
-- 자료형을 따로 변경하지 않아도 괜찮은가보다 ..?

select
    ceil(avg(Salary) - avg(replace(Salary , 0, '')))
from
    EMPLOYEES
;