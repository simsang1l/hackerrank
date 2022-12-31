select
    b.continent
    , floor(avg(a.population))
from
    CITY a
    inner join
        COUNTRY b
        on a.Countrycode = b.code
group by
    b.continent
;