CREATE TABLE t_caterer
  (id_caterer INT NOT NULL ENABLE,
  name_caterer NVARCHAR2(150) NOT NULL ENABLE,
  address NVARCHAR2(150) NOT NULL ENABLE,
  phone INT NOT NULL ENABLE,
  fax INT,
  CONSTRAINT pk_caterer PRIMARY KEY(id_caterer) ENABLE);

CREATE TABLE t_store
  (id_store INT NOT NULL ENABLE,
  store_name NVARCHAR2(150) NOT NULL ENABLE,
  CONSTRAINT pk_store PRIMARY KEY(id_store) ENABLE);

CREATE TABLE t_messure
  (id_messure INT NOT NULL ENABLE,
  messure_name NVARCHAR2(50) NOT NULL ENABLE,
  CONSTRAINT pk_messure PRIMARY KEY(id_messure) ENABLE);

CREATE TABLE t_material
  (id_material INT NOT NULL ENABLE,
  id_messure INT NOT NULL ENABLE,
  material_name NVARCHAR2(150) NOT NULL ENABLE,
  CONSTRAINT pk_material PRIMARY KEY(id_material) ENABLE,
  CONSTRAINT fk_material_messure FOREIGN KEY(id_messure)
  REFERENCES t_messure(id_messure) ENABLE);

CREATE TABLE t_supply
  (id_supply INT NOT NULL ENABLE,
  id_caterer INT NOT NULL ENABLE,
  id_material INT NOT NULL ENABLE,
  id_store INT NOT NULL ENABLE,
  supply_date DATE NOT NULL ENABLE,
  volume INT NOT NULL ENABLE,
  CONSTRAINT pk_supply PRIMARY KEY(id_supply) ENABLE,
  CONSTRAINT fk_supply_caterer FOREIGN KEY(id_caterer)
  REFERENCES t_caterer(id_caterer) ENABLE,
  CONSTRAINT fk_supply_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ENABLE,
  CONSTRAINT fk_supply_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store) ENABLE);

CREATE TABLE t_surplus
  (id_material INT NOT NULL ENABLE,
  id_store INT NOT NULL ENABLE,
  volume INT,
  CONSTRAINT fk_surplus_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_surplus_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store) ON DELETE CASCADE);

CREATE TABLE t_inprice
  (id_material INT NOT NULL ENABLE,
  price_date DATE NOT NULL ENABLE,
  price NUMBER(10,2) CHECK (price>=0) ENABLE,
  CONSTRAINT fk_inprice_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ON DELETE CASCADE);

CREATE TABLE t_employer
  (id_employer INT NOT NULL ENABLE,
  surname NVARCHAR2(150) NOT NULL ENABLE,
  first_name NVARCHAR2(150) NOT NULL ENABLE,
  father_name NVARCHAR2(150),
  CONSTRAINT pk_employer PRIMARY KEY(id_employer) ENABLE);

CREATE TABLE t_section
  (id_section INT NOT NULL ENABLE,
  id_employer INT NOT NULL ENABLE,
  section_name NVARCHAR2(150) NOT NULL ENABLE,
  CONSTRAINT pk_section PRIMARY KEY(id_section) ENABLE,
  CONSTRAINT fk_section_employer FOREIGN KEY(id_employer)
  REFERENCES t_employer(id_employer) ENABLE);

CREATE TABLE t_deliver
  (id_deliver INT NOT NULL ENABLE,
  id_section INT NOT NULL ENABLE,
  id_material INT NOT NULL ENABLE,
  id_store INT NOT NULL ENABLE,
  deliver_date DATE NOT NULL ENABLE,
  CONSTRAINT pk_deliver PRIMARY KEY(id_deliver) ENABLE,
  CONSTRAINT fk_deliver_section FOREIGN KEY(id_section)
  REFERENCES t_section(id_section) ENABLE,
  CONSTRAINT fk_deliver_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ENABLE,
  CONSTRAINT fk_deliver_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store) ENABLE)
