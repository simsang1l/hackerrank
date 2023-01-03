-- total_score = sum of thier maximum scores for all of the challenges
-- desc score, asc hacker_id
-- exclude all hackers with a total score of 0
-- challenges have many score

select
    b.hacker_id
    , a.name
    , sum(max_score) as total_score
from
    Hackers a 
    inner join
    (select
        hacker_id
        , challenge_id
        , max(score) as max_score
    from
        Submissions
     group by
        hacker_id
        , challenge_id
     ) b
     on a.hacker_id = b.hacker_id
group by
    b.hacker_id
    , a.name
having
    sum(max_score) > 0
order by
    total_score desc
    , b.hacker_id
;