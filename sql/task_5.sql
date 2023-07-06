#Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет
#и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

CREATE TEMPORARY TABLE animals AS 
SELECT *, "Лошади" as genus FROM horses
UNION SELECT *, "Ослы" AS genus FROM donkeys
UNION SELECT *, "Собаки" AS genus FROM dogs
UNION SELECT *, "Кошки" AS genus FROM cats
UNION SELECT *, "Хомяки" AS genus FROM hamsters;

CREATE TABLE yang_animal AS
SELECT animal_name, birthday, commands, genus, TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_in_month
FROM animals WHERE birthday BETWEEN ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);