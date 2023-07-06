#Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения

CREATE TABLE cats 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cats (animal_name, birthday, commands, genus_id)
VALUES ("Тузик", "2022-01-01", "кс-кс-кс", 1),
("Боцман", "2023-01-01", "мяу", 1),  
("Ночка", "2022-01-04", "киса-киса", 1); 

CREATE TABLE dogs 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO dogs (animal_name, birthday, commands, genus_id)
VALUES ("Дружок", "2021-01-01", "ко мне, лежать, лапу, голос, рядом", 2),
("Граф", '2022-06-12', "ко мне, сидеть, лежать, лапу", 2),  
("Шарик", '2022-05-01', "ко мне, сидеть, лежать, лапу, след, фас", 2), 
("Туман", "2021-05-10", "ко мне, сидеть, лежать, фу, место, след, фас", 2);

CREATE TABLE hamsters 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO hamsters (animal_name, birthday, commands, genus_id)
VALUES ("Боб", "2023-4-12", "бах", 3),
("Тишка", "2023-03-12", NULL, 3),  
("Хома", "2022-07-11", NULL, 3), 
("Малой", "2023-05-10", NULL, 3);

CREATE TABLE horses 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO horses (animal_name, birthday, commands, genus_id)
VALUES ("Гром", "2020-01-12", "рысь, шагом", 1),
("Закат", "2017-03-12", "тише, шагом, хоп", 1),  
("Байкал", "2016-07-12", "тише, шагом, хоп", 1), 
("Молния", "2020-11-10", "рысь, шагом, хоп", 1);

CREATE TABLE donkeys 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO donkeys (animal_name, birthday, commands, genus_id)
VALUES ("Упрямец", "2019-04-10", NULL, 2),
("Силач", "2020-03-12", NULL, 2),  
("Шустрик", "2021-07-12", NULL, 2), 
("Белый", "2022-12-10", NULL, 2);

CREATE TABLE camels 
(       
    id INT AUTO_INCREMENT PRIMARY KEY, 
    animal_name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO camels (animal_name, birthday, commands, genus_id)
VALUES ("Горбатый", "2022-04-10", "хап-хап, гит, дурр, каш, кхх-кхх", 3),
("Джоги", "2019-03-12", "хап-хап, гит, дурр, каш", 3),  
("Харкун", "2015-07-12", "хап-хап, гит, дурр, каш, кхх-кхх", 3), 
("Злодей", "2022-12-10", "хап-хап, гит, дурр, каш", 3);