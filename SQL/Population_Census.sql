select
    sum(a.population)
from
    CITY a
    inner join
        COUNTRY b
        on a.Countrycode = b.code
where
    CONTINENT = 'Asia'
;