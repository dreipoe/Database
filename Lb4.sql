CREATE VIEW v_emplist (id_employer, surname, first_name, father_name, birthday, job)
  AS SELECT id_employer, first_name, surname, father_name, birthday, name_job FROM t_employer LEFT JOIN t_job ON t_employer.id_job = t_job.ID_JOB;

SELECT * FROM v_emplist;

INSERT INTO t_job(id_job, NAME_JOB) VALUES (seq_job.NEXTVAL, 'Психолог');

SELECT id_job FROM t_job WHERE name_job = 'Психолог';

INSERT INTO t_employer (id_employer, surname, first_name, father_name, birthday, id_job)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Хохлова', 'Оксана', 'Митрофановна', '02.03.1951', 2);

INSERT INTO v_emplist (id_employer, surname, first_name, father_name, job)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фомичёв', 'Сергей', 'Игнатьевич', 'Инженер');

INSERT INTO v_emplist (id_employer, surname, first_name, father_name)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фомичёв', 'Сергей', 'Игнатьевич');

SELECT id_employer FROM V_EMPLIST;

DELETE FROM V_EMPLIST WHERE id_employer = 41;
DELETE FROM V_EMPLIST WHERE job = 'Психолог';

UPDATE v_emplist SET father_name = 'Георгьевна' WHERE job = 'Психолог';

UPDATE v_emplist SET job = 'Психиатр' WHERE job = 'Психолог';

CREATE VIEW v_surplus (material, store, volume)
  AS SELECT material_name, store_name, volume FROM t_material
    JOIN T_SURPLUS ts ON T_MATERIAL.ID_MATERIAL = ts.ID_MATERIAL
    JOIN T_STORE ts1 ON ts.ID_STORE = ts1.ID_STORE;

SELECT * FROM v_surplus;

CREATE VIEW v_caterer (caterer, material, messure, supply_date, volume)
  AS SELECT name_caterer, material_name, messure_name, supply_date, volume FROM T_CATERER tc
    JOIN t_supply ts ON tc.ID_CATERER = ts.ID_CATERER
    JOIN T_MATERIAL tm ON ts.ID_MATERIAL = tm.ID_MATERIAL
    JOIN T_MESSURE tm1 ON tm.ID_MESSURE = tm1.ID_MESSURE;

SELECT * FROM V_CATERER;

CREATE VIEW v_store (store_name, material_name, messure_name, summ)
  AS SELECT store_name, material_name, messure_name, SUM(volume) FROM T_STORE ts
    JOIN T_SURPLUS ts1 ON ts.ID_STORE = ts1.ID_STORE
    JOIN T_MATERIAL tm ON ts1.ID_MATERIAL = tm.ID_MATERIAL
    JOIN T_MESSURE tm1 ON tm.ID_MESSURE = tm1.ID_MESSURE
    GROUP BY store_name, material_name, messure_name;

SELECT * FROM v_store;

