#Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

SELECT h.animal_name, h.birthday, h.commands, pa.genus_name
FROM horses h
LEFT JOIN packed_animals pa ON pa.id = h.genus_id
UNION 
SELECT d.animal_name, d.birthday, d.commands, pa.genus_name
FROM donkeys d 
LEFT JOIN packed_animals pa ON pa.id = d.genus_id
UNION
SELECT c.animal_name, c.birthday, c.commands, ha.genus_name
FROM cats c
LEFT JOIN home_animals ha ON ha.id = c.genus_id
UNION
SELECT d.animal_name, d.birthday, d.commands, ha.genus_name
FROM dogs d
LEFT JOIN home_animals ha ON ha.id = d.genus_id
UNION
SELECT hm.animal_name, hm.birthday, hm.commands, ha.genus_name 
FROM hamsters hm
LEFT JOIN home_animals ha ON ha.id = hm.genus_id;