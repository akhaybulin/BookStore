create table t1000 (num int not null)
go
declare @i int
set @i = 1
while @i < 1001
begin
  insert t1000 values(@i)
  set @i = @i + 1
end
go

insert Book (Title, Description, Pages, Author, Genre)
select 'Title' + cast(id as varchar(10)), 'Description' + cast(id as varchar(10)), num,
  case when num = 1 then 'Test Author' else 'Author' + cast(id as varchar(10)) end,
  'Genre' + cast(id as varchar(10))
from (
  select t1.num * 1000 * t2.num as id, t1.num from
    t1000 t1 cross join t1000 t2
) t
go
