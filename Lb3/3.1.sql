SELECT * FROM T_EMPLOYER;

SELECT * FROM T_MATERIAL;

SELECT * FROM t_inprice;

SELECT material_name FROM t_material;

SELECT surname, first_name, father_name, birthday FROM t_employer;

SELECT * FROM T_EMPLOYER
  WHERE sex = 'М';

SELECT * FROM t_caterer
  WHERE id_caterer IN
  (SELECT id_caterer FROM t_supply
  WHERE id_material IN
  (SELECT id_material FROM t_deliver
  WHERE deliver_date BETWEEN '01.04.2016' AND '30.06.2016'));

SELECT * FROM T_SECTION
  WHERE id_section IN
  (SELECT id_section FROM T_DELIVER
  WHERE deliver_date NOT BETWEEN '01.08.2016' AND '31.08.2016');

SELECT section_name FROM T_SECTION
  WHERE id_section IN
  (SELECT id_section FROM T_DELIVER
  WHERE deliver_date=sysdate);

SELECT material_name FROM T_MATERIAL
  WHERE id_material IN
  (SELECT id_material FROM T_DELIVER
  WHERE deliver_date BETWEEN '01.01.2017' AND SYSDATE);

SELECT material_name FROM T_MATERIAL
  WHERE id_material IN
  (SELECT id_material FROM T_DELIVER
  WHERE deliver_date NOT BETWEEN '01.01.2017' AND SYSDATE)
  AND id_material IN
  (SELECT id_material FROM t_surplus
  WHERE volume=0);

SELECT section_name, surname, first_name, father_name FROM t_section, T_EMPLOYER
  WHERE t_section.id_employer=t_employer.id_employer;

SELECT section_name, surname, first_name, father_name, name_job FROM t_section, t_employer, t_job
  WHERE t_section.id_employer=t_employer.id_employer AND t_employer.id_job=t_job.id_job;

SELECT name_caterer, material_name, volume, price, supply_date FROM t_caterer, t_supply, t_material, T_INPRICE
  WHERE t_caterer.id_caterer=t_supply.id_supply AND t_supply.id_material=t_material.id_material AND (supply_date BETWEEN '01.01.2016' AND '31.03.2016');

SELECT name_caterer, material_name, volume, price, supply_date FROM t_caterer, t_supply, t_material, T_INPRICE
  WHERE t_caterer.id_caterer=t_supply.id_supply AND t_supply.id_material=t_material.id_material AND (supply_date BETWEEN '01.01.2016' AND '31.03.2016') AND dejureaddr LIKE '%Пермь%';

SELECT material_name, store_name, volume FROM T_MATERIAL, T_STORE, T_SURPLUS
  WHERE T_MATERIAL.ID_MATERIAL=T_SURPLUS.ID_MATERIAL AND T_STORE.ID_STORE=T_SURPLUS.ID_STORE;

SELECT name_caterer, material_name, volume, price, supply_date
  FROM t_caterer JOIN t_supply ON t_caterer.ID_CATERER = T_SUPPLY.ID_CATERER
  JOIN t_material ON t_supply.ID_MATERIAL = t_material.id_material
  JOIN T_INPRICE ON t_material.id_material = T_INPRICE.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.03.2016';

SELECT name_caterer, material_name, volume, price, supply_date
  FROM t_caterer LEFT JOIN t_supply ON t_caterer.ID_CATERER = T_SUPPLY.ID_CATERER
  JOIN t_material ON t_supply.ID_MATERIAL = t_material.id_material
  JOIN T_INPRICE ON t_material.id_material = T_INPRICE.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.03.2016';

SELECT material_name, store_name, volume
  FROM t_material JOIN t_surplus ON t_material.id_material = t_surplus.id_material
  JOIN t_store ON t_surplus.id_store = t_store.id_store;

SELECT material_name, messure_name, price, price_date
  FROM t_material JOIN t_messure ON t_material.id_messure = t_messure.id_messure
  JOIN t_inprice ON t_inprice.id_material = t_material.id_material AND price_date BETWEEN '01.07.2016' AND '30.09.2016';

SELECT material_name, messure_name, price, price_date
  FROM t_material JOIN t_messure ON t_material.id_messure = t_messure.id_messure
  LEFT JOIN t_inprice ON t_inprice.id_material = t_material.id_material AND (price_date between '01.07.2016' AND '30.09.2016')