select
    case
        when grade >= 8 then Name
        else null end
    , Grade
    , Marks
from
    Students a
    inner join
        Grades b
        on a.Marks between Min_Mark and Max_Mark
order by
    Grade desc
    , name
    , marks
;