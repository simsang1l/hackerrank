select distinct
    CITY
from
    STATION
where
    LEFT(CITY, 1) not in ('A', 'E', 'I', 'O', 'U')
    or RIGHT(CITY, 1) not in ('a', 'e', 'i', 'o', 'u')
;