

USE DataSolving;
GO
SELECT  
M.country_id,
C.name,
M.countCity FROM (SELECT
                  K.country_id as country_id,
                  COUNT (K.id) as countCity
                  FROM Cities as K
                  GROUP BY country_id) AS M
JOIN Countries AS C
ON M.country_id = C.Id