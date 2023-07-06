#Создать таблицы с иерархией из диаграммы в БД

CREATE TABLE animal_classes
(
	id INT AUTO_INCREMENT PRIMARY KEY, 
	class_name VARCHAR(20)
);

INSERT INTO animal_classes (class_name)
VALUES ('вьючные'),
('домашние');  

CREATE TABLE packed_animals
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    genus_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES animal_classes (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO packed_animals (genus_name, class_id)
VALUES ('Лошади', 1),
('Ослы', 1),  
('Верблюды', 1); 
    
CREATE TABLE home_animals
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    genus_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES animal_classes (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO home_animals (genus_name, class_id)
VALUES ('Кошки', 2),
('Собаки', 2),  
('Хомяки', 2); 