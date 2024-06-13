SELECT housing_house_type as tipos_de_moradia, COUNT(*) as quantidade
FROM housing
GROUP BY housing_house_type;

SELECT housing_address as moradia, housing_number_bedrooms as numero_de_quartos
FROM housing;

SELECT housing_id as moradia, housing_maximum_capacity as capacidade_maxima
FROM housing;

--  QUERYS do owner ###################
SELECT owner_name as proprietario, COUNT(housing_description) as numero_de_propriedades
FROM owner
LEFT JOIN housing
ON housing.housing_owner_id = owner.owner_id
GROUP BY owner_name, housing_description;

SELECT owner_name as proprietario, SUM(housing_number_bedrooms) as soma_dos_quartos_ofertados_pelo_proprietario
FROM owner
LEFT JOIN housing
ON housing.housing_owner_id = owner.owner_id
GROUP BY owner_name, housing_description;

SELECT owner_name as proprietario, SUM(housing_number_bathrooms) as soma_dos_banheiros_ofertados_pelo_proprietario
FROM owner
LEFT JOIN housing
ON housing.housing_owner_id = owner.owner_id
GROUP BY owner_name, housing_description;

-- QUERYS needy #################

SELECT needy_gender as genero, COUNT(*) as quantidade
FROM needy
GROUP BY needy_gender;

SELECT COUNT(needy_name) as numero_de_desabrigados,
CASE
    WHEN needy_gender = "masculino" THEN "NAO"
    ELSE "SIM"
END as tem_acesso_a_qualquer_moradia
FROM needy
GROUP BY tem_acesso_a_qualquer_moradia;

SELECT needy_name as desabrigado, rental.needy_id as esta_cadastrado_na_casa
FROM needy
INNER JOIN rental
ON rental.needy_id = needy.needy_id
GROUP BY needy_name, rental.needy_id;

-- rental ###############

SELECT housing_id as propriedade, COUNT(*) as quantidade_desabrigados_na_propriedade
FROM rental
GROUP BY housing_id;

SELECT owner_id as proprietario, COUNT(*) as quantidade_alugueis_do_proprietario
FROM rental
GROUP BY owner_id;

-- housing_images #############

SELECT housing_id as moradia, count(housing_image.housing_image_description) as numero_de_fotos_da_moradia
FROM housing
LEFT JOIN housing_image
ON housing.housing_id = housing_image.housing_image_house_id
GROUP BY moradia;