create table t_code
	(id_article INT NOT NULL PRIMARY KEY,
	name_article NVARCHAR2(50));

create table t_crime
	(id_crime INT NOT NULL PRIMARY KEY,
	crime_date DATE,
	id_article INT,
	id_solution INT,
  CONSTRAINT fk_article FOREIGN KEY(id_article) REFERENCES t_code(id_article) ON DELETE SET NULL,
  CONSTRAINT fk_solution FOREIGN KEY(id_solution) REFERENCES t_solution(id_article),

create table t_solution
	(id_solution INT NOT NULL PRIMARY KEY,
	name_solution NVARCHAR2(50));

create table t_face
	(id_face INT NOT NULL PRIMARY KEY,
	first_name NVARCHAR2(50),
	last_name NVARCHAR2(50),
	father_name NVARCHAR2(50),
	address NVARCHAR2(250),
	criminal_record INT);

create table t_face_crime
	(id_face INT NOT NULL,
	id_crime INT NOT NULL,
	id_status INT NOT NULL,
  CONSTRAINT fk_crime FOREIGN KEY(id_crime) REFERENCES t_crime(id_crime) ON DELETE CASCADE,
  CONSTRAINT fk_face FOREIGN KEY(id_face) REFERENCES t_face(id_face) ON DELETE CASCADE)
  CONSTRAINT fk_status FOREIGN KEY(id_status) REFERENCES t_status(id_status));

create table t_status
  (id_status INT NOT NULL PRIMARY KEY,
  name_status NVARCHAR2(50));

create SEQUENCE seq_crime START WITH 1 INCREMENT by 1;
create SEQUENCE seq_face START WITH 1 INCREMENT by 1;
create SEQUENCE seq_article START WITH 1 INCREMENT by 1;

/* здесь можно разместить операторы добавления статей Уголовного кодекса 

INSERT INTO t_code(id_article, name_article)
  VALUES(seq_article.NEXTVAL, 'Статья 228. Незаконный оборот, приобретение и хранение наркотических средств')

*/

INSERT INTO t_status(id_status, name_status) VALUES (1, 'Обвиняемый');
INSERT INTO t_status(id_status, name_status) VALUES (2, 'Подозреваемый');
INSERT INTO t_status(id_status, name_status) VALUES (3, 'Потерпевший');
INSERT INTO t_status(id_status, name_status) VALUES (4, 'Свидетель');
INSERT INTO t_solution(id_solution, name_solution) VALUES (1, 'В возбуждении дела отказано');
INSERT INTO t_solution(id_solution, name_solution) VALUES (2, 'Ходатайство удовлетворено');
INSERT INTO t_solution(id_solution, name_solution) VALUES (3, 'Отправлено по территориальному признаку')