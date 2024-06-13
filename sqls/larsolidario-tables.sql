CREATE DATABASE larsolidario;
USE larsolidario;

CREATE TABLE housing (
    housing_id INT PRIMARY KEY AUTO_INCREMENT,
    housing_owner_id INT,
    housing_address VARCHAR(90),
    housing_description VARCHAR(255),
    housing_number_bedrooms INT,
    housing_primitive_man BOOLEAN, 
    housing_number_bathrooms INT,
    housing_maximum_capacity INT,
    housing_house_type VARCHAR(50),
    FOREIGN KEY (housing_owner_id) REFERENCES owner(owner_id)
); 

CREATE TABLE owner (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_name VARCHAR(255) NOT NULL,
    owner_cpf CHAR(11) NOT NULL,
    owner_cellphone VARCHAR(15),
    owner_address VARCHAR(255)
);

CREATE TABLE needy(
	needy_id INT AUTO_INCREMENT PRIMARY KEY,
    needy_name VARCHAR(255),
	needy_cpf CHAR(11) NOT NULL,
    needy_cellphone VARCHAR(15),
    needy_gender ENUM("masculino", "feminino", "outro")
);

CREATE TABLE rental(
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    housing_id INT NOT NULL,
    owner_id INT NOT NULL,
    needy_id INT NOT NULL,
    FOREIGN KEY (housing_id) REFERENCES housing(housing_id),
    FOREIGN KEY (needy_id) REFERENCES needy(needy_id),
    FOREIGN KEY (owner_id) REFERENCES owner(owner_id)
);

CREATE TABLE housing_image(
	housing_image_id INT PRIMARY KEY AUTO_INCREMENT,
    housing_image_url VARCHAR(255),
    housing_image_house_id INT,
    housing_image_description VARCHAR(255),
    housing_image_title VARCHAR(255),
    FOREIGN KEY (housing_image_house_id) REFERENCES housing(housing_id)    
);
