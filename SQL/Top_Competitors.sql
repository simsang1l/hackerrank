SELECT 
    s.hacker_id
    , h.name
FROM 
    Submissions s
        INNER JOIN Challenges c 
            ON s.challenge_id = c.challenge_id
        INNER JOIN Difficulty d 
            ON c.difficulty_level = d.difficulty_level 
            and d.score = s.score
        INNER JOIN Hackers h 
            ON s.hacker_id = h.hacker_id
-- WHERE d.score = s.score -- 나중을 위해 join을 하는것보다 where절에 쓰는게 좋을까 ?
GROUP BY 
    s.hacker_id
    , h.name
HAVING 
    count(s.challenge_id) > 1
ORDER BY
    count(s.challenge_id) DESC
    , s.hacker_id
;