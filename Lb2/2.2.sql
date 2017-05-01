INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'ООО "Ностратида Линк"', 83422292150, 'г. Пермь, ул. Углеуральская, 6, офис 8', 'г. Пермь, ул. Углеуральская, 6, офис 8');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'ЗАО "Кольчуга"', 83422762830, 'г. Пермь, ул. Челюскинцев, 2', 'г. Пермь, ул. Челюскинцев, 2');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НКО "Левый Сектор"', 83422252787, 'г. Пермь, ул. Покровская, 51, офис 216', 'Пермский край, дер. Кондратово, ул. Культуры, 13, офис 27');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НПО "Аргумент"', 83422207895, 'г. Пермь, ул. Рязанская, 51', 'г. Пермь, ул. Рязанская, 51');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НКО "Polonia"', 83422422462, 'г. Пермь, ул. Сибирская, 24, офис 2', 'г. Пермь, ул. Сибирская, 24, офис 2');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Орешкин', 'Александр', 'Андреевич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Батуев', 'Александр', 'Владиславович');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Черных', 'Пётр', 'Васильевич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Вишневский', 'Томаш', 'Збигневич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Шмидт', 'Алиса', 'Лаврентьевна');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '1');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '2');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '3');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '4');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '5');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'кг');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'м');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'шт');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'л');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 1, 'Легкопромышленный отдел');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 2, 'Лаборатория');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 3, 'Оружие');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 4, 'Научные разработки');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 5, 'Военная техника');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Склад №1');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Склад №2');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Склад №3');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Склад №4');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Склад №5');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 4, 'Серная кислота');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 1, 'Цемент');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 2, 'Льняная ткань');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 3, 'АК-12');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 4, 'Бензин');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 1, 3, 1, '27.06.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 2, 1, 2, '18.08.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 3, 4, 3, '29.08.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 5, 5, 5, '15.09.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 4, 2, 4, '17.10.2016');

INSERT INTO T_INPRICE(ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES(1, '08.06.2016', 60);

INSERT INTO T_INPRICE(ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES(2, '10.06.2016', 90);

INSERT INTO T_INPRICE(ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES(3, '14.07.2016', 60);

INSERT INTO T_INPRICE(ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES(4, '27.07.2016', 60000);

INSERT INTO T_INPRICE(ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES(5, '07.12.2016', 30);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES(SEQ_SUPPLY.NEXTVAL, 4, 2, 4, '17.10.2016', 100);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES(SEQ_SUPPLY.NEXTVAL, 1, 3, 1, '27.10.2016', 1);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES(SEQ_SUPPLY.NEXTVAL, 2, 1, 2, '18.08.2016', 3000);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES(SEQ_SUPPLY.NEXTVAL, 3, 5, 5, '15.09.2016', 2500);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES(SEQ_SUPPLY.NEXTVAL, 5, 4, 3, '29.08.2016', 10);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(3, 1, 100);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(4, 3, 10);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(2, 4, 5000);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(1, 2, 7500);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(5, 5, 5000)