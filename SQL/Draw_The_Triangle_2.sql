set @num = 0;

select
    REPEAT('* ', @num := @num + 1)
from
    information_schema.tables
limit 20
;