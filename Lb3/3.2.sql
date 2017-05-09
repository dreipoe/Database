ALTER TABLE T_EMPLOYER ADD id_manager INT;

UPDATE T_EMPLOYER SET id_manager = 4 WHERE id_employer = 2;

UPDATE T_EMPLOYER SET id_manager = 2 WHERE id_employer = 3;

UPDATE T_EMPLOYER SET id_manager = 5 WHERE id_employer = 4;

UPDATE T_EMPLOYER SET id_manager = 1 WHERE id_employer = 5;