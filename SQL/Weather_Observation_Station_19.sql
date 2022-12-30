-- a = min(LAT_N)
-- b = min(LONG_W)
-- c = MAX(LAT_N)
-- d = max(LONG_W)
-- pow 제곱근 구할때 ~
-- sqrt : 루트
select
    round(
        sqrt(pow((MAX(LAT_N) - min(LAT_N)), 2) + 
                pow((max(LONG_W) - min(LONG_W)), 2) 
            )
        , 4)
from 
    STATION
;