CREATE DATABASE party;
USE party;
CREATE TABLE participants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);


ALTER TABLE participants ADD COLUMN age INT;

INSERT INTO participants (name, age) VALUES 
('ВОрон', 7),
('Дракон', 49),
('Жуж', 21),
('Біл', 16),
('Біллі', 23);

SELECT * FROM participants;

CREATE PROCEDURE get_even_age_participants()
SELECT * FROM participants WHERE age % 2 = 0;

CALL get_even_age_participants();
