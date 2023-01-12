-- =  --> 비교연산자
-- := --> 대입연산자

set @num := 1;
set @nu := 1;

select
    group_concat(a_num separator '&')
from (
        select
            @num := @num + 1 as a_num
        from
            information_schema.tables  as it1
            , information_schema.tables as it2
            -- , (select @num := 1) tmp
    ) a
where a_num <= 1000
    and NOT EXISTS (
                    select *
                    from (
                        select
                            @nu := @nu + 1 as b_num
                        from
                            information_schema.tables  as it1
                            , information_schema.tables as it2
                            -- , (select @nu := 1) tmp1
                        limit 1000
                        ) b
                    where FLOOR(a_num/b_num) = (a_num/b_num)
                        and 1 < b_num
                        and b_num < a_num
                )
;
