/*
작성자 : 심상일

-- Key Point --
join을 수행하는 첫 테이블과 따로 연결하지 않고
이미 구축되어 있는 테이블을 이용하여 join수행

*/

select
    c.company_code
    , c.founder
    , count(distinct l.lead_manager_code)
    , count(distinct s.senior_manager_code)
    , count(distinct m.manager_code)
    , count(distinct e.employee_code)
from
    Company c
    inner join 
        lead_manager l
        on c.company_code = l.company_code
    inner join 
        senior_manager s
        on l.lead_manager_code = s.lead_manager_code
    inner join 
        manager m 
        on s.senior_manager_code =  m.senior_manager_code
    inner join 
        employee e
        on m.manager_code = e.manager_code
group by
    c.company_code
    , c.founder
order by
    c.company_code
;