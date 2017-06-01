CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_deliver
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_employer
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_group
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_inprice
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_material
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_messure
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_section
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_store
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_supply
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_surplus
  START WITH 1
  INCREMENT BY 1;

CREATE SEQUENCE seq_job
  START WITH 1
  INCREMENT BY 1;

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejure, defact)
  VALUES (seq_caterer.NEXTVAL, '��� "���������� ����"', 83422292150, '�. �����, ��. �������������, 6, ���� 8', '�. �����, ��. �������������, 6, ���� 8');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejure, defact)
  VALUES (seq_caterer.NEXTVAL, '��� "��������"', 83422762830, '�. �����, ��. �����������, 2', '�. �����, ��. �����������, 2');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejure, defact)
  VALUES (seq_caterer.NEXTVAL, '��� "����� ������"', 83422252787, '�. �����, ��. ����������, 51, ���� 216', '�������� ����, ���. ����������, ��. ��������, 13, ���� 27');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejure, defact)
  VALUES (seq_caterer.NEXTVAL, '��� "��������"', 83422207895, '�. �����, ��. ���������, 51', '�. �����, ��. ���������, 51');

INSERT INTO t_caterer(id_caterer, name_caterer, phone, dejure, defact)
  VALUES (seq_caterer.NEXTVAL, '��� "Polonia"', 83422422462, '�. �����, ��. ���������, 24, ���� 2', '�. �����, ��. ���������, 24, ���� 2');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, '�������', '���������', '���������');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, '������', '���������', '�������������');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, '������', 'ϸ��', '����������');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, '����������', '�����', '���������');

INSERT INTO t_employer(id_employer, surname, FIRST_NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, '�����', '�����', '������������');

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
  VALUES (seq_messure.NEXTVAL, '��');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, '�');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, '��');

INSERT INTO t_messure(ID_MESSURE, messure_name)
  VALUES (seq_messure.NEXTVAL, '�');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 1, '����������������� �����');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 2, '�����������');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 3, '������');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 4, '������� ����������');

INSERT INTO t_section(id_section, ID_EMPLOYER, section_name)
  VALUES (seq_section.NEXTVAL, 5, '������� �������');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, '����� �1');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, '����� �2');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, '����� �3');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, '����� �4');

INSERT INTO t_store(id_store, store_name)
  VALUES (seq_store.NEXTVAL, '����� �5');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 4, '������ �������');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 1, '������');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 2, '������� �����');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 3, '��-12');

INSERT INTO t_material(ID_MATERIAL, ID_MESSURE, MATERIAL_NAME)
  VALUES (seq_material.NEXTVAL, 4, '������');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 1, 3, 1, '27.06.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 2, 1, 2, '18.08.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 3, 4, 3, '29.08.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 4, 5, 5, '15.09.2016');

INSERT INTO t_deliver(ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES(SEQ_DELIVER.NEXTVAL, 5, 2, 4, '17.10.2016');

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

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME, price)
  VALUES(SEQ_SUPPLY.NEXTVAL, 1, 2, 4, '17.10.2016', 100, 50.00);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME, price)
  VALUES(SEQ_SUPPLY.NEXTVAL, 2, 3, 1, '27.10.2016', 1, 80.00);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME, price)
  VALUES(SEQ_SUPPLY.NEXTVAL, 3, 1, 2, '18.08.2016', 3000, 50.00);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME, price)
  VALUES(SEQ_SUPPLY.NEXTVAL, 4, 5, 5, '15.09.2016', 2500, 50000.00);

INSERT INTO T_SUPPLY(ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME, price)
  VALUES(SEQ_SUPPLY.NEXTVAL, 5, 4, 3, '29.08.2016', 10, 25.00);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(3, 1, 100);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(4, 3, 10);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(2, 4, 5000);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(1, 2, 7500);

INSERT INTO T_SURPLUS(ID_MATERIAL, ID_STORE, VOLUME)
  VALUES(5, 5, 5000);

DELETE FROM T_INPRICE WHERE PRICE_DATE < '31.12.2000';
UPDATE t_surplus SET volume = 0 WHERE id_material = 3;
UPDATE t_inprice SET price = price * 0.85 WHERE id_material = 3;