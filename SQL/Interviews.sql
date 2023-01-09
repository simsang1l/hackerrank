/*
Enter your query here.
*/
-- asc contest_id
-- exclude all four sums are 0 
-- tables
-- - Contests
-- - Colleges
-- - Challenges
-- - View_Stats
-- - submission_Stats


select
      con.contest_id                    as contest_id
    , con.hacker_id                     as hacker_id
    , con.name                          as name
    , sum(total_submissions) as total_submissions
    , sum(total_accepted_submissions)   as total_accepted_submissions
    , sum(total_views)                  as total_views
    , sum(total_unique_views)           as total_unique_views
from
    Contests as con
    inner join
        Colleges as col
        on con.contest_id = col.contest_id
    inner join
        Challenges as chal
        on col.college_id = chal.college_id
    left join
        (
            select
                  challenge_id
                , sum(total_views) as total_views
                , sum(total_unique_views) as total_unique_views
            from
                View_Stats
            group by
                challenge_id
        )as vs
        on chal.challenge_id = vs.challenge_id
    left join
        (
            select
                  challenge_id
                , sum(total_submissions) as total_submissions
                , sum(total_accepted_submissions) as total_accepted_submissions
                
            from
                submission_Stats 
            group by
                challenge_id
         )as ss
        on chal.challenge_id = ss.challenge_id
group by
      con.contest_id
    , con.hacker_id
    , con.name
having
      total_submissions + total_accepted_submissions + total_views + total_unique_views > 0
order by
    con.contest_id
;
