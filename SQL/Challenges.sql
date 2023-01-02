-- desc total number of challenges, hacker_id
-- if the number of challenge is maximum number then include else exclude 
with num_challenges as (
    select 
        hacker_id
        , count(challenge_id) as challenges_created
    from 
        challenges 
    group by 
        hacker_id
)
, cnt_challenges as (
    select
        challenges_created
        , count(challenges_created) as cnt_challenges_created
    from
        num_challenges
    group by
        challenges_created
)
select
    b.hacker_id
    , b.name
    , a.challenges_created
from
    num_challenges a
    inner join
        hackers b
        on a.hacker_id = b.hacker_id
    inner join
        cnt_challenges c
        on a.challenges_created = c.challenges_created
where
    cnt_challenges_created = 1
    or a.challenges_created = (select max(challenges_created) from num_challenges where cnt_challenges_created > 1)
order by
    a.challenges_created desc
    , b.hacker_id
;