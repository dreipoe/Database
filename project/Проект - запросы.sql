//Запрос 1
SELECT surname, tr.name FROM T_READERS tr
  JOIN T_ISSUES ti ON tr.ID_READER = ti.ID_READER
  JOIN T_CARD tc ON ti.ID_CARD = tc.ID_CARD
  JOIN T_POINT tp ON tc.ID_POINT = tp.ID_POINT
  LEFT JOIN T_LECTORS tl ON tr.ID_READER = tl.ID_READER
  LEFT JOIN T_STUDENTS ts ON tr.ID_READER = ts.ID_READER;
  WHERE t_chair.name = 'Кафедра информационной безопасности' AND t_point.name = 'Абонемент №12';

SELECT sum(tr.name) FROM T_READERS tr
  JOIN T_ISSUES ti ON tr.ID_READER = ti.ID_READER
  JOIN T_CARD tc ON ti.ID_CARD = tc.ID_CARD
  JOIN T_POINT tp ON tc.ID_POINT = tp.ID_POINT
  LEFT JOIN T_LECTORS tl ON tr.ID_READER = tl.ID_READER
  LEFT JOIN T_STUDENTS ts ON tr.ID_READER = ts.ID_READER;
  WHERE t_chair.NAME = 'Кафедра информационной безопасности' AND t_point.NAME = 'Абонемент №12';

//Запрос 2
SELECT tr.name FROM T_READERS tr
  JOIN t_issues ti ON tr.ID_READER = ti.ID_READER
  WHERE TRUNC(sysdate - to_date(deliver, 'yyyy/mm/dd')) >= 10
  AND t_chair.name = 'Кафедра информационной безопасности' AND t_point.name = 'Абонемент №12';

SELECT SUM(tr.name) FROM T_READERS tr
  JOIN t_issues ti ON tr.ID_READER = ti.ID_READER
  WHERE TRUNC(sysdate - to_date(deliver, 'yyyy/mm/dd')) >= 10
  AND t_chair.name = 'Кафедра информационной безопасности' AND t_point.name = 'Абонемент №12';

//Запрос 3
SELECT * FROM T_ISSUES ti
  JOIN T_CARD tc ON ti.ID_CARD = tc.ID_CARD
  JOIN T_BOOKS tb ON tc.ID_BOOK = tb.ID_BOOK
  WHERE ROWNUM <= 20 AND t_fact = 'Механико-математический факультет';



