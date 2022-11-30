-- use MYSQL
select distinct
    CITY
from 
    STATION
where 
    RIGHT(CITY, 1) in ('a', 'e', 'i', 'o', 'u')
;