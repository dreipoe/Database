CREATE TABLE t_readers
  (id_reader INT NOT NULL PRIMARY KEY,
  surname NVARCHAR2(32) NOT NULL,
  name NVARCHAR2(32) NOT NULL,
  patronym NVARCHAR2(32));

CREATE TABLE t_fact
  (id_fact INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(32) NOT NULL);

CREATE TABLE t_group
  (id_group INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(16) NOT NULL,
  id_fact INT,
  CONSTRAINT fk_gf FOREIGN KEY(id_fact) REFERENCES t_fact(id_fact) ON DELETE SET NULL);

CREATE TABLE t_students
  (id_reader INT NOT NULL,
  id_group INT,
  CONSTRAINT fk_sg FOREIGN KEY(id_group) REFERENCES t_group(id_group) ON DELETE SET NULL,
  CONSTRAINT fk_sr FOREIGN KEY(id_reader) REFERENCES t_readers(id_reader) ON DELETE CASCADE);

CREATE TABLE t_chair
  (id_chair INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(255));

CREATE TABLE t_level
  (id_level INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(255));

CREATE TABLE t_rank
  (id_rank INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(255));

CREATE TABLE t_lectors
  (id_reader INT NOT NULL,
  id_chair INT,
  id_rank INT NOT NULL,
  id_level INT NOT NULL,
  CONSTRAINT fk_lr FOREIGN KEY(id_reader) REFERENCES T_READERS(id_reader) ON DELETE CASCADE,
  CONSTRAINT fk_lc FOREIGN KEY(id_chair) REFERENCES t_chair(id_chair) ON DELETE SET NULL,
  CONSTRAINT fk_lrk FOREIGN KEY(id_rank) REFERENCES T_RANK(id_rank),
  CONSTRAINT fk_ll FOREIGN KEY(id_level) REFERENCES T_level(id_level));

CREATE TABLE t_reasons
  (id_reason INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(255) NOT NULL);

CREATE TABLE t_bans
  (id_ban INT NOT NULL PRIMARY KEY,
  id_reader INT NOT NULL,
  start_ban DATE NOT NULL,
  end_ban DATE NOT NULL,
  id_reason INT NOT NULL,
  CONSTRAINT fk_br FOREIGN KEY(id_reader) REFERENCES t_readers(id_reader),
  CONSTRAINT fk_brn FOREIGN KEY(id_reason) REFERENCES t_reasons(id_reason));

CREATE TABLE t_card
  (id_card INT NOT NULL PRIMARY KEY,
  id_book INT NOT NULL,
  volume INT NOT NULL,
  id_point INT NOT NULL,
  CONSTRAINT fk_cp FOREIGN KEY(id_point) REFERENCES t_point(id_point));

CREATE TABLE t_issues
  (id_issue INT NOT NULL PRIMARY KEY,
  id_reader INT NOT NULL,
  id_card INT NOT NULL,
  issue DATE NOT NULL,
  CONSTRAINT fk_ir FOREIGN KEY(id_reader) REFERENCES t_readers(id_reader),
  CONSTRAINT fk_ic FOREIGN KEY(id_card) REFERENCES t_card(id_card));

CREATE TABLE t_point
  (id_point INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(32) NOT NULL,
  max_volume INT);

CREATE TABLE t_type
  (id_type INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(32) NOT NULL);

CREATE TABLE t_books
  (id_book INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(64),
  autor NVARCHAR2(64),
  year INT,
  id_type INT,
  CONSTRAINT fk_bt FOREIGN KEY(ID_TYPE) REFERENCES t_type(id_type));