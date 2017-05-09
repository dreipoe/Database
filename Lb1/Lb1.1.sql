CREATE TABLE t_caterer
  (id_caterer INT NOT NULL PRIMARY KEY,
  name_caterer NVARCHAR2(150) NOT NULL,
  address NVARCHAR2(150) NOT NULL,
  phone INT NOT NULL,
  fax INT);

CREATE TABLE t_store
  (id_store INT NOT NULL PRIMARY KEY,
  store_name NVARCHAR2(150) NOT NULL);

CREATE TABLE t_messure
  (id_messure INT NOT NULL PRIMARY KEY,
  messure_name NVARCHAR2(50) NOT NULL);

CREATE TABLE t_material
  (id_material INT NOT NULL PRIMARY KEY,
  id_messure INT NOT NULL,
  material_name NVARCHAR2(150) NOT NULL,
  CONSTRAINT fk_material_messure FOREIGN KEY(id_messure)
  REFERENCES t_messure(id_messure));

CREATE TABLE t_supply
  (id_supply INT NOT NULL PRIMARY KEY,
  id_caterer INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  supply_date DATE NOT NULL,
  volume INT NOT NULL,
  CONSTRAINT fk_supply_caterer FOREIGN KEY(id_caterer)
  REFERENCES t_caterer(id_caterer),
  CONSTRAINT fk_supply_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material),
  CONSTRAINT fk_supply_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store));

CREATE TABLE t_surplus
  (id_material INT NOT NULL,
  id_store INT NOT NULL,
  volume INT,
  CONSTRAINT fk_surplus_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_surplus_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store) ON DELETE CASCADE);

CREATE TABLE t_inprice
  (id_material INT NOT NULL,
  price_date DATE NOT NULL,
  price NUMBER(10,2) CHECK (price>=0),
  CONSTRAINT fk_inprice_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material) ON DELETE CASCADE);

CREATE TABLE t_employer
  (id_employer INT NOT NULL PRIMARY KEY,
  surname NVARCHAR2(150) NOT NULL,
  first_name NVARCHAR2(150) NOT NULL,
  father_name NVARCHAR2(150));

CREATE TABLE t_section
  (id_section INT NOT NULL PRIMARY KEY,
  id_employer INT NOT NULL,
  section_name NVARCHAR2(150) NOT NULL,
  CONSTRAINT fk_section_employer FOREIGN KEY(id_employer)
  REFERENCES t_employer(id_employer));

CREATE TABLE t_deliver
  (id_deliver INT NOT NULL PRIMARY KEY,
  id_section INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  deliver_date DATE NOT NULL,
  CONSTRAINT fk_deliver_section FOREIGN KEY(id_section)
  REFERENCES t_section(id_section),
  CONSTRAINT fk_deliver_material FOREIGN KEY(id_material)
  REFERENCES t_material(id_material),
  CONSTRAINT fk_deliver_store FOREIGN KEY(id_store)
  REFERENCES t_store(id_store))
