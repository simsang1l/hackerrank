-- End_Date가 연속이면 1개의 프로젝트의 작은 부분으로 본다
-- asc 완료하는데 걸린 일수, start_date

-- 1. start_date는 end_date에 있을 수 없다 --> start_date의 시작 날짜
-- 2. end_date는 start_date에 있을 수 없다 --> end_date의 끝 날짜
-- 3. start_date가 end_date보다 무조건 앞선 날짜여야함


select
    start_date
    , min(end_date) as min_end_date
from 
    (select start_date from projects where start_date not in (select end_date from projects)) as a 
    inner join
    (select end_date from projects where end_date not in (select start_date from projects)) as b
        on a.start_date < b.end_date
group by
    start_date
order by
    DATEDIFF(min(end_date), start_date) -- order by 절에 alias 명을 쓰면 실행은 되는데 정답은 아님.... 이유가 뭐지 ..??
    , start_date
;