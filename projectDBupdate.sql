--Inserts a set of values into consumes table
INSERT INTO Fall24_S003_T9_Consumes (mav_id, F_id, quantity) VALUES (18, 3, 25);

--Inserts a set of values into food leftover table
INSERT INTO Fall24_S003_T9_Food_Leftover (leftover_id, L_quantity) VALUES (9, 75);

--Inserts a set of values into attendance record table
INSERT INTO Fall24_S003_T9_Attendance_record (attendance_id, event_id, mav_id) VALUES (1200, 1111, 22);

--Inserts a set of values into report table
INSERT INTO Fall24_S003_T9_Report (R_id, Rname, Rdate, event_id) VALUES ('11', 'Special Event Report', TO_DATE('2024-12-20', 'YYYY-MM-DD'), 2222);


--Updates the food leftover table by setting leftover quantity for given leftover id
UPDATE Fall24_S003_T9_Food_Leftover
SET L_quantity = 80
WHERE leftover_id = 4;

--Updates the report table by setting report dates for given report ids
UPDATE Fall24_S003_T9_Report
SET Rdate = TO_DATE('2024-11-30', 'YYYY-MM-DD')
WHERE R_id = '03';

UPDATE Fall24_S003_T9_Report
SET Rdate = TO_DATE('2024-11-20', 'YYYY-MM-DD')
WHERE R_id = '02';

--Updates the food leftover table by updating leftover quantity for given leftover id
UPDATE Fall24_S003_T9_Food_Leftover
SET L_quantity = L_quantity + 20
WHERE leftover_id = 3;

--Deletes tuples from consumes table for given mav id and food id
DELETE FROM Fall24_S003_T9_Consumes
WHERE F_id = 1 AND mav_id = 25;

DELETE FROM Fall24_S003_T9_Consumes
WHERE mav_id = 23 AND F_id = 7;
DELETE FROM Fall24_S003_T9_Consumes
WHERE mav_id = 13 AND F_id = 5;


-- SQL> --Inserts a set of values into consumes table
-- SQL> INSERT INTO Fall24_S003_T9_Consumes (mav_id, F_id, quantity) VALUES (18, 3, 25);

-- 1 row created.

-- SQL> 
-- SQL> --Inserts a set of values into food leftover table
-- SQL> INSERT INTO Fall24_S003_T9_Food_Leftover (leftover_id, L_quantity) VALUES (9, 75);

-- 1 row created.

-- SQL> 
-- SQL> --Inserts a set of values into attendance record table
-- SQL> INSERT INTO Fall24_S003_T9_Attendance_record (attendance_id, event_id, mav_id) VALUES (1200, 1111, 22);

-- 1 row created.

-- SQL> 
-- SQL> --Inserts a set of values into report table
-- SQL> INSERT INTO Fall24_S003_T9_Report (R_id, Rname, Rdate, event_id) VALUES ('11', 'Special Event Report', TO_DATE('2024-12-20', 'YYYY-MM-DD'), 2222);

-- 1 row created.

-- SQL> 
-- SQL> 
-- SQL> --Updates the food leftover table by setting leftover quantity for given leftover id
-- SQL> UPDATE Fall24_S003_T9_Food_Leftover
--   2  SET L_quantity = 80
--   3  WHERE leftover_id = 4;

-- 1 row updated.

-- SQL> 
-- SQL> --Updates the report table by setting report dates for given report ids
-- SQL> UPDATE Fall24_S003_T9_Report
--   2  SET Rdate = TO_DATE('2024-11-30', 'YYYY-MM-DD')
--   3  WHERE R_id = '03';

-- 1 row updated.

-- SQL> 
-- SQL> UPDATE Fall24_S003_T9_Report
--   2  SET Rdate = TO_DATE('2024-11-20', 'YYYY-MM-DD')
--   3  WHERE R_id = '02';

-- 1 row updated.

-- SQL> 
-- SQL> --Updates the food leftover table by updating leftover quantity for given leftover id
-- SQL> UPDATE Fall24_S003_T9_Food_Leftover
--   2  SET L_quantity = L_quantity + 20
--   3  WHERE leftover_id = 3;

-- 1 row updated.

-- SQL> 
-- SQL> --Deletes tuples from consumes table for given mav id and food id
-- SQL> DELETE FROM Fall24_S003_T9_Consumes
--   2  WHERE F_id = 1 AND mav_id = 25;

-- 1 row deleted.

-- SQL> 
-- SQL> DELETE FROM Fall24_S003_T9_Consumes
--   2  WHERE mav_id = 23 AND F_id = 7;

-- 1 row deleted.

-- SQL> 
-- SQL> DELETE FROM Fall24_S003_T9_Consumes
--   2  WHERE mav_id = 13 AND F_id = 5;

-- 1 row deleted.