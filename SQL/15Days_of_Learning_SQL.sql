-- 매일 최소 1번 이상 submission을 한 경우
-- 각 날마다 maximum number of submission 찾기 --> 각 날마다 매번 submission한 수
-- submission수가 같을경우 hacker_id가 작은거 조회
-- asc date
-- 문제 이해가 잘 안됨... 다시 풀어보자

SELECT 
    S.submission_date, 
    /* count_of_hacker_id's submit each day */
        COUNT(DISTINCT S.hacker_id) cnt,
    /* hacker_id_max_day */
        (
        SELECT 
            S3.hacker_id 
        FROM 
            Submissions S3
        WHERE
            S.submission_date = S3.submission_date 
        GROUP BY 
            S3.hacker_id
        ORDER BY 
            count(S3.submission_id) DESC
            , hacker_id LIMIT 1
        ) AS ID,
    /* hacker_name_max_day */
        (
        SELECT H.Name FROM Hackers H WHERE H.hacker_id = ID
        )
from
    Submissions S
/* condition : submission_date - 2016.03.01(min of submission_date) */
WHERE (
        SELECT 
            COUNT(DISTINCT S2.submission_date)
        FROM 
            Submissions S2
        WHERE 
                S2.submission_date < S.submission_date
            AND S2.hacker_id = S.hacker_id
      ) 
      = (S.submission_date - (SELECT MIN(S3.submission_date) FROM Submissions S3))
GROUP BY 
    S.submission_date
ORDER BY 
    S.submission_date
;