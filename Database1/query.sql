USE DataSolving;
GO
----------------------table expression--------------------------------------
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

--------------------------windows function----------------------------------

SELECT DISTINCT                                                                                                                                                                                                                                                                                                                     
K.id, 
K.name,
COUNT(country_id) OVER(PARTITION  BY country_id ) AS countCity
FROM Cities  AS S
RIGHT JOIN Countries AS K
ON S.country_id = K.Id


--------------------------OUTER APPLY----------------------------------
SELECT
 K.id,
 k.name,
 A.countCity
FROM Countries AS K
OUTER APPLY (SELECT
                  K.country_id as country_id,
                  COUNT (K.id) as countCity
                  FROM Cities as K
                  GROUP BY country_id
                  ) AS A
WHERE K.id = A.country_id







