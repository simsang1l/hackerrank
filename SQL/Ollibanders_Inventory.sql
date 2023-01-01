-- is_evil = 0
-- desc power
-- desc age
-- min coins_needed


select
    a.id
    , age
    , a.coins_needed
    , a.power
from
    Wands a
    inner join
        (
            select
                code
                , power
                , min(coins_needed) as coins_needed
            from 
                Wands
            group by
                code
                , power) c
        on a.code = c.code
        and a.power = c.power
        and a.coins_needed = c.coins_needed
    inner join Wands_property b
        on a.code = b.code
where
    is_evil = 0
order by
    a.power desc
    , age desc
;