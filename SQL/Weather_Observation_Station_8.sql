select distinct
    CITY
from
    STATION
where
    LEFT(CITY, 1) in ('A', 'E', 'I' ,'O', 'U')
    and RIGHT(CITY, 1) in ('A', 'E', 'I' ,'O', 'U')
;