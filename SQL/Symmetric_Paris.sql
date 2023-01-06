-- x1 =< y1
-- asc x
-- 주어진 조건은 List the rows such that x1 <= y1으로 되어 있음
-- sample output을 봤을 때 중복이 없으면 되니 조건에 해당되고 중복값만 없으면 될거같은데...
-- x1이 y1보다 같거나 작기만 하면 될텐데, 
-- x1 = y1인 경우가 1건 이상 있어야 하고, x1 < y1인 경우가 필요한지 이해가 안간다..

select 
      a.x
    , a.y
from
    Functions a
    inner join
        Functions b 
        on a.x = b.y
        and a.y = b.x
group by
      a.x
    , a.y
having
    count(a.x) > 1
    or a.x < a.y
order by
    a.x
;
