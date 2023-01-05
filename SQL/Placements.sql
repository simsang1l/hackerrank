-- tables : Students, Friends, Packages
-- best friends got offered a higher salary than them
-- sakary amount asc
with friends_salary as (
    select
          f.ID          as my_ID
        , f.Friend_ID   as Friend_ID
        , p.Salary      as friend_salary
    from
        Friends as f
        left join
            Packages as p
            on f.Friend_ID = p.ID
)
, m_salary as (
    select
          f.ID          as my_ID
        , f.Friend_ID   as Friend_ID
        , p.Salary      as my_salary
    from
        Friends as f
        left join
            Packages as p
            on f.ID = p.ID
)
, salary_board as (
    select
          f.my_ID
        , f.Friend_ID
        , m.my_salary
        , f.friend_salary
    from
        friends_salary f
        inner join
            m_salary m
            on f.my_ID = m.my_ID
            and f.Friend_ID = m.Friend_ID
)
select
    name
from
    Students s
    inner join
        salary_board f
        on s.ID = f.my_ID
where
   my_salary < friend_salary
order by
    friend_salary
;

-- 다른사람 풀이, 이게 더 쉽게 작성 한거 같다..
-- ref. https://techblog-history-younghunjo1.tistory.com/172
select
    name
from
    (
        select
              f.ID
            , s.Name
            , f.Friend_ID
            , p.Salary as my_Salary
        from
            Students s
            inner join
                Friends f
                on s.ID = f.ID
            inner join
                Packages p
                on f.ID = p.ID
    ) a
    inner join
        Packages p
        on a.Friend_ID = p.ID
where
    a.my_salary < p.Salary 
order by
    p.Salary
;