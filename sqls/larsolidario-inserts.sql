INSERT INTO owner (owner_name, owner_cpf, owner_cellphone, owner_address)
VALUES ('Ana Pereira', '12345678901', '(11) 91234-5678', 'Rua A, 100');

INSERT INTO owner (owner_name, owner_cpf, owner_cellphone, owner_address)
VALUES ('Bruno Costa', '23456789012', '(21) 92345-6789', 'Rua B, 200');

INSERT INTO owner (owner_name, owner_cpf, owner_cellphone, owner_address)
VALUES ('Carla Mendes', '34567890123', '(31) 93456-7890', 'Rua C, 300');

INSERT INTO needy (needy_name, needy_cpf, needy_cellphone, needy_gender)
VALUES ('José Almeida', '45678901234', '(41) 94567-8901', 'masculino');

INSERT INTO needy (needy_name, needy_cpf, needy_cellphone, needy_gender)
VALUES ('Maria Silva', '56789012345', '(51) 95678-9012', 'feminino');

INSERT INTO needy (needy_name, needy_cpf, needy_cellphone, needy_gender)
VALUES ('Alex Santos', '67890123456', '(61) 96789-0123', 'outro');

INSERT INTO housing (housing_owner_id, housing_address, housing_description, housing_number_bedrooms, housing_primitive_man, housing_number_bathrooms, housing_maximum_capacity, housing_house_type)
VALUES (1, 'Rua das Flores, 123', 'Casa espaçosa com jardim', 3, TRUE, 2, 5, 'Casa');

INSERT INTO housing (housing_owner_id, housing_address, housing_description, housing_number_bedrooms, housing_primitive_man, housing_number_bathrooms, housing_maximum_capacity, housing_house_type)
VALUES (2, 'Av. Paulista, 456', 'Apartamento moderno no centro', 2, FALSE, 1, 4, 'Apartamento');

INSERT INTO housing (housing_owner_id, housing_address, housing_description, housing_number_bedrooms, housing_primitive_man, housing_number_bathrooms, housing_maximum_capacity, housing_house_type)
VALUES (3, 'Praça das Árvores, 789', 'Casa acolhedora perto do parque', 4, TRUE, 3, 7, 'Casa');

INSERT INTO rental (housing_id, owner_id, needy_id)
VALUES (1, 1, 1);

INSERT INTO rental (housing_id, owner_id, needy_id)
VALUES (2, 2, 2);

INSERT INTO rental (housing_id, owner_id, needy_id)
VALUES (3, 3, 3);

INSERT INTO housing_image (housing_image_url, housing_image_house_id, housing_image_description, housing_image_title)
VALUES ('http://example.com/images/house1.jpg', 1, 'Vista da sala de estar', 'Sala de Estar');

INSERT INTO housing_image (housing_image_url, housing_image_house_id, housing_image_description, housing_image_title)
VALUES ('http://example.com/images/house2.jpg', 2, 'Cozinha moderna', 'Cozinha');

INSERT INTO housing_image (housing_image_url, housing_image_house_id, housing_image_description, housing_image_title)
VALUES ('http://example.com/images/house3.jpg', 3, 'Quarto principal', 'Quarto Principal');

