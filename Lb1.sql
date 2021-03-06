CREATE TABLE t_caterer
  (id_caterer INT NOT NULL PRIMARY KEY,
  name_caterer NVARCHAR2(255),
  address NVARCHAR2(255),
  phone NVARCHAR2(20),
  fax NVARCHAR2(20));

CREATE TABLE t_store
  (id_store INT NOT NULL PRIMARY KEY,
  store_name NVARCHAR2(255),
  address NVARCHAR2(255));

CREATE TABLE t_messure
  (id_messure INT NOT NULL PRIMARY KEY,
  messure_name NVARCHAR2(255));

CREATE TABLE t_material
  (id_material INT NOT NULL PRIMARY KEY,
  id_messure INT NOT NULL,
  material_name NVARCHAR2(255),
  CONSTRAINT fk_material_messure FOREIGN KEY(id_messure) REFERENCES t_messure(id_messure));

CREATE TABLE t_supply
  (id_supply INT NOT NULL PRIMARY KEY,
  id_caterer INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  supply_date DATE,
  volume INT,
  price NUMBER(10,2) CHECK (price>=0),
  CONSTRAINT fk_supply_caterer FOREIGN KEY(id_caterer) REFERENCES t_caterer(id_caterer),
  CONSTRAINT fk_supply_material FOREIGN KEY(id_material) REFERENCES t_material(id_material),
  CONSTRAINT fk_supply_store FOREIGN KEY(id_store) REFERENCES t_store(id_store));

CREATE TABLE t_surplus
  (id_material INT NOT NULL,
  id_store INT NOT NULL,
  volume INT,
  CONSTRAINT fk_surplus_material FOREIGN KEY(id_material) REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_surplus_store FOREIGN KEY(id_store) REFERENCES t_store(id_store) ON DELETE CASCADE);

CREATE TABLE t_inprice
  (id_material INT NOT NULL,
  price_date DATE NOT NULL,
  price NUMBER(10,2) CHECK (price>=0),
  CONSTRAINT fk_inprice_material FOREIGN KEY(id_material) REFERENCES t_material(id_material) ON DELETE CASCADE);

CREATE TABLE t_employer
  (id_employer INT NOT NULL PRIMARY KEY,
  id_store INT NOT NULL,
  surname NVARCHAR2(255),
  first_name NVARCHAR2(255),
  father_name NVARCHAR2(255),
  birthday DATE,
  phone NVARCHAR2(20),
  CONSTRAINT fk_employer_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store));

CREATE TABLE t_section
  (id_section INT NOT NULL PRIMARY KEY,
  id_employer INT NOT NULL,
  section_name NVARCHAR2(255) NOT NULL,
  CONSTRAINT fk_section_employer FOREIGN KEY(id_employer)
  REFERENCES t_employer(id_employer));

CREATE TABLE t_deliver
  (id_deliver INT NOT NULL PRIMARY KEY,
  id_section INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  deliver_date DATE,
  CONSTRAINT fk_deliver_section FOREIGN KEY(id_section) REFERENCES t_section(id_section),
  CONSTRAINT fk_deliver_material FOREIGN KEY(id_material) REFERENCES t_material(id_material),
  CONSTRAINT fk_deliver_store FOREIGN KEY(id_store) REFERENCES t_store(id_store));

CREATE TABLE t_job
  (id_job INT NOT NULL PRIMARY KEY,
  name_job NVARCHAR2(255) NOT NULL);

ALTER TABLE T_CATERER DROP COLUMN address;
ALTER TABLE T_CATERER ADD dejure NVARCHAR2(255) NOT NULL;
ALTER TABLE T_CATERER ADD defact NVARCHAR2(255) NOT NULL;
ALTER TABLE T_CATERER ADD email NVARCHAR2(255);
ALTER TABLE T_INPRICE ADD CONSTRAINT pk_price_material PRIMARY KEY(id_material, price_date);

CREATE TABLE T_GROUP
  (id_group INT NOT NULL PRIMARY KEY,
  name_group NVARCHAR2(255) NOT NULL);

ALTER TABLE T_MATERIAL ADD id_group INT;
ALTER TABLE T_MATERIAL ADD CONSTRAINT fk_material_group FOREIGN KEY(id_group) REFERENCES t_group(id_group) ON DELETE SET NULL;

ALTER TABLE t_employer ADD id_job INT;
ALTER TABLE t_employer ADD CONSTRAINT fk_employer_job FOREIGN KEY(id_job) REFERENCES t_job(id_job) ON DELETE SET NULL;