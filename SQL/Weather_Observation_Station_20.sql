-- 중앙값 구하기
-- MYSQL에선 중앙값을 구하는 함수 제공하지 않음 (Oracle은 제공 --> MEDIAN())
-- PERCENT_RANK() --> 몇 %에 해당하는 값인지 보여주는 Window Function
select
    round(LAT_N, 4) as LAT_N
from
    (
        SELECT
            LAT_N
            , PERCENT_RANK() OVER (ORDER BY LAT_N) AS ranking
        FROM
            STATION
    ) a
where
    ranking = 0.5
;