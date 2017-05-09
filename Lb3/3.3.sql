ALTER TABLE T_GROUP ADD id_parent INT;

UPDATE T_GROUP SET id_parent = 1 WHERE id_group=2;

UPDATE T_GROUP SET id_parent = 3 WHERE id_group BETWEEN 4 AND 5;

SELECT e1.name_group, e2.name_group FROM T_GROUP e1 LEFT JOIN t_group e2 ON e1.ID_parent = e2.ID_group;

CREATE TABLE t_ex
  (id_employer INT NOT NULL PRIMARY KEY,
  id_job INT,
  surname NVARCHAR2(150) NOT NULL,
  first_name NVARCHAR2(150) NOT NULL,
  father_name NVARCHAR2(150),
  birthday DATE NOT NULL,
  id_manager INT,
  CONSTRAINT fk_ex_job FOREIGN KEY(ID_JOB) REFERENCES T_JOB(ID_JOB));

CREATE SEQUENCE seq_ex
  START WITH 1
  INCREMENT BY 1;

INSERT INTO t_ex(id_employer, id_job, surname, FIRST_NAME, FATHER_NAME, BIRTHDAY)
  VALUES (seq_ex.NEXTVAL, 1, 'Сидоров', 'Теодор', 'Васильевич', '09.06.1957');

INSERT INTO t_ex(id_employer, id_job, surname, FIRST_NAME, FATHER_NAME, BIRTHDAY, ID_MANAGER)
  VALUES (seq_ex.NEXTVAL, 3, 'Черных', 'Андрей', 'Ярославович', '19.02.1960', 1);

INSERT INTO t_ex(id_employer, id_job, surname, FIRST_NAME, FATHER_NAME, BIRTHDAY, ID_MANAGER)
  VALUES (seq_ex.NEXTVAL, 5, 'Кошкин', 'Семён', 'Даниилович', '03.04.1997', 1);

ALTER TABLE t_ex ADD dismissed DATE;

CREATE TABLE t_contact
  (id_caterer INT NOT NULL,
  surname NVARCHAR2(50) NOT NULL,
  first_name NVARCHAR2(50) NOT NULL,
  father_name NVARCHAR2(50),
  phone NVARCHAR2(12) NOT NULL,
  CONSTRAINT fk_caterer FOREIGN KEY(ID_CATERER) REFERENCES T_CATERER(ID_CATERER) ON DELETE CASCADE);