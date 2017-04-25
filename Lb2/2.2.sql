INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'ООО "Ностратида Линк"', 8(342)229-21-50, 'г.Пермь, ул. Углеуральская, 6, офис 8', 'г.Пермь, ул. Углеуральская, 6, офис 8');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'ЗАО "Кольчуга"', 8(342)276-28-30, 'г.Пермь, ул. Челюскинцев, 2', 'г.Пермь, ул. Челюскинцев, 2');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НКО "Левый Сектор"', 8(342)225-27-87, 'г.Пермь, ул. Покровская, 51, офис 216', 'Пермский край, дер. Кондратово, ул. Культуры, 13, офис 27');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НПО "Аргумент"', 8(342)220-78-95, 'г.Пермь, ул. Рязанская, 51', 'г.Пермь, ул. Рязанская, 51');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejureaddr, defactoaddr)
  VALUES (seq_caterer.NEXTVAL, 'НКО "Polonia"', 8(342)242-24-62, 'г.Пермь, ул. Сибирская, 24, офис 2', 'г.Пермь, ул. Сибирская, 24, офис 2');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Орешкин','Александр','Андреевич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Батуев','Александр','Владиславович');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Черных','Пётр','Васильевич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Вишневский','Томаш','Збигневич');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Шмидт','Алиса','Лаврентьевна');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '');

INSERT INTO t_group(ID_GROUP, NAME_GROUP)
  VALUES (seq_group.NEXTVAL, '');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'кг');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'л');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'м');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'м3');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, 'т');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 1, 'Сетевое оборудование');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 2, 'Лаборатория');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 3, 'Оружие');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 4, 'Научные разработки');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 5, 'Военная техника');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Сетевое оборудование');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Лаборатория');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Оружие');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Научные разработки');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, 'Военная техника');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 4, 'Серная кислота');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 5, 'Цемент');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 1, 'Древесина');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 1, 'Древесина');