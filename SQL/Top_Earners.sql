-- 월별 소득 = salary * months
-- 모든 직원의 최대 총 소득과 최대 총 소득이 있는 직원의 총 수

select
    (salary * months) as aa
    , count(employee_id)
from
    Employee
where
    salary * months = (select max(salary * months) from Employee)
group by
    aa
;