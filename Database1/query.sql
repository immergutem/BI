

USE DataSolving;
GO
select  M.country_id, C.name , M.countCity from (select
K.country_id as country_id, COUNT (K.id) as countCity
from Cities as K
group by country_id) AS M
left join Countries AS C
on M.country_id = C.Id