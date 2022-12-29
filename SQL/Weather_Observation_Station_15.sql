-- 북위가 가장 큰 값을 가지는 동경 값 구하기
-- 북위는 137.2345이하
-- 동경 값은 소수점 아래 4자리

select
    round(LONG_W, 4)
from
    STATION
where
    LAT_N = (select max(LAT_N) from STATION where LAT_N <= 137.2345)
;