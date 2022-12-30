-- a = min(LAT_N)
-- b = min(LONG_W)
-- c = MAX(LAT_N)
-- d = max(LONG_W)
-- Manhatten Distance : |P1 - P2|

select
    round(abs(min(LONG_W)-max(LONG_W)) + abs(min(LAT_N)- MAX(LAT_N)) , 4)
from
    STATION
;