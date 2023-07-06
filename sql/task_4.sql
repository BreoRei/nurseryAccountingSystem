#Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку.
#Объединить таблицы лошади, и ослы в одну таблицу.

SET SQL_SAFE_UPDATES = 0;
DELETE FROM camels;

SELECT Name, Birthday, Commands FROM horses
UNION SELECT  Name, Birthday, Commands FROM donkeys;