select distinct
    CITY
from
    STATION
where
    left(CITY, 1) not in ('A', 'E', 'I', 'O', 'U')
;