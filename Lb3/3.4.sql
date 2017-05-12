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
  GROUP BY name_caterer HAVING