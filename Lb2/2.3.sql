DELETE FROM T_INPRICE WHERE PRICE_DATE < 31.12.2000

UPDATE t_surplus SET volume = 0 WHERE id_material == 3

UPDATE t_inprice SET price = price * 0.85 WHERE id_material == 3