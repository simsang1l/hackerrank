select
    a.name
from
    CITY a
    inner join
        COUNTRY b
        on a.Countrycode = b.code
where
    CONTINENT = 'Africa'
;