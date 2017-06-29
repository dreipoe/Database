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

SELECT name_caterer, material_name, volume, price, supply_date FROM t_caterer, t_supply, t_material
  WHERE t_caterer.id_caterer=t_supply.id_supply AND t_supply.id_material=t_material.id_material AND (supply_date BETWEEN '01.01.2016' AND '31.03.2016');

SELECT name_caterer, material_name, volume, price, supply_date FROM t_caterer, t_supply, t_material
  WHERE t_caterer.id_caterer=t_supply.id_supply AND t_supply.id_material=t_material.id_material AND (supply_date BETWEEN '01.01.2016' AND '31.03.2016') AND dejureaddr LIKE '%Пермь%';

SELECT material_name, store_name, volume FROM T_MATERIAL, T_STORE, T_SURPLUS
  WHERE T_MATERIAL.ID_MATERIAL=T_SURPLUS.ID_MATERIAL AND T_STORE.ID_STORE=T_SURPLUS.ID_STORE;

SELECT name_caterer, material_name, volume, price, supply_date
  FROM t_caterer JOIN t_supply ON t_caterer.ID_CATERER = T_SUPPLY.ID_CATERER
  JOIN t_material ON t_supply.ID_MATERIAL = t_material.id_material
  WHERE supply_date BETWEEN '01.01.2016' AND '31.03.2016';

SELECT name_caterer, material_name, volume, price, supply_date
  FROM t_caterer LEFT JOIN t_supply ON t_caterer.ID_CATERER = T_SUPPLY.ID_CATERER
  JOIN t_material ON t_supply.ID_MATERIAL = t_material.id_material
  WHERE supply_date BETWEEN '01.01.2016' AND '31.03.2016';

SELECT material_name, store_name, volume
  FROM t_material JOIN t_surplus ON t_material.id_material = t_surplus.id_material
  JOIN t_store ON t_surplus.id_store = t_store.id_store;

SELECT material_name, messure_name, price, price_date
  FROM t_material JOIN t_messure ON t_material.id_messure = t_messure.id_messure
  JOIN T_INPRICE ti ON T_MATERIAL.ID_MATERIAL = ti.ID_MATERIAL
  WHERE price_date BETWEEN '01.07.2016' AND '30.09.2016';

SELECT material_name, messure_name, price, price_date
  FROM t_material JOIN t_messure ON t_material.id_messure = t_messure.id_messure
  LEFT JOIN t_inprice ti ON T_MATERIAL.ID_MATERIAL = ti.ID_MATERIAL
  WHERE (price_date between '01.07.2016' AND '30.09.2016');

SELECT surname, first_name, father_name, phone, 'Контактное лицо' FROM t_contact
  UNION SELECT null, null, null, phone, 'Сотрудник' FROM t_caterer;

SELECT * FROM T_CATERER ORDER BY NAME_CATERER;

SELECT * FROM T_CATERER JOIN t_contact ON T_CATERER.ID_CATERER = T_CONTACT.ID_CATERER ORDER BY name_caterer, surname, first_name, father_name;

SELECT store_name, material_name, volume
  FROM t_surplus JOIN T_MATERIAL ON T_SURPLUS.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
  JOIN T_STORE ON T_SURPLUS.ID_STORE = T_STORE.ID_STORE
  ORDER BY STORE_NAME, volume DESC;

SELECT name_caterer, material_name, sum(volume)
  FROM t_caterer JOIN t_supply ON T_SUPPLY.ID_CATERER=T_CATERER.ID_CATERER
  JOIN T_MATERIAL ON T_MATERIAL.ID_MATERIAL=T_SUPPLY.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.12.2016'
  GROUP BY name_caterer, MATERIAL_NAME
  ORDER BY NAME_CATERER, MATERIAL_NAME;

SELECT material_name, avg(volume*price) FROM t_supply
  JOIN T_MATERIAL ON T_MATERIAL.ID_MATERIAL = T_SUPPLY.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.12.2016'
  GROUP BY MATERIAL_NAME
  ORDER BY MATERIAL_NAME;

SELECT material_name, count(volume)
  FROM t_supply JOIN T_MATERIAL ON T_MATERIAL.ID_MATERIAL=T_SUPPLY.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.12.2016'
  GROUP BY MATERIAL_NAME
  ORDER BY MATERIAL_NAME;

SELECT material_name, avg(tsy.volume*tsy.PRICE), sum(tss.VOLUME) FROM t_material
  JOIN t_supply tsy ON T_MATERIAL.ID_MATERIAL = tsy.ID_MATERIAL
  JOIN t_surplus tss ON T_MATERIAL.ID_MATERIAL = tss.ID_MATERIAL
  WHERE (supply_date BETWEEN '01.01.2016' AND '31.12.2016')
  GROUP BY material_name;

SELECT material_name, price FROM T_MATERIAL tm
  JOIN T_INPRICE ON tm.ID_MATERIAL = tm.ID_MATERIAL;

SELECT store_name FROM t_store tse LEFT JOIN T_SURPLUS tss ON tse.ID_STORE = tss.ID_STORE
  GROUP BY store_name HAVING sum(volume)=0;

SELECT name_caterer FROM t_caterer tc
  JOIN t_supply tsy ON tc.ID_CATERER = tsy.ID_CATERER
  JOIN t_material tm ON tm.ID_MATERIAL = tsy.ID_MATERIAL
  WHERE supply_date BETWEEN '01.01.2016' AND '31.12.2016'
  GROUP BY name_caterer HAVING sum(volume*price)<=1000;

SELECT name_caterer FROM t_caterer tc
  JOIN t_supply tsy ON tc.ID_CATERER = tsy.ID_CATERER
  JOIN t_material tm ON tm.ID_MATERIAL = tsy.ID_MATERIAL
  WHERE (supply_date BETWEEN '01.01.2016' AND '31.12.2016')