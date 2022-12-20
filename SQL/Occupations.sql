-- 행별로 Doctor, Professor, Singer, Actor의 직업을 가진 이름을 조회해야함
-- 직군별로 순번을 부여하여 조회하게하고, 이름순으로 순번을 부여할 수 있게 정렬
-- MySQL의 Pivot을 이용해도 조회할 수 있을 것 같음..!

select
      max(case when Occupation = 'Doctor' then Name else null end) as Doctor
    , max(case when Occupation = 'Professor' then Name else null end) as Professor
    , max(case when Occupation = 'Singer' then Name else null end) as Singer
    , max(case when Occupation = 'Actor' then Name else null end) as Actor
from
    (
    select 
        Name
        , Occupation
        , row_number() over(partition by Occupation order by Name) as seq
    from 
        OCCUPATIONS
    ) a
group by 
    seq
;