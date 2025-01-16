-- Table: Attendee
CREATE TABLE Fall24_S003_T9_Attendee (
    mav_id NUMBER,
    email VARCHAR2(100) NOT NULL,
    dietary_pref VARCHAR2(100),
    Fname VARCHAR2(50),
    Lname VARCHAR2(50),
    PRIMARY KEY (mav_id)
);


-- Table: Event
CREATE TABLE Fall24_S003_T9_Event (
    event_id NUMBER,
    Edate VARCHAR(20),
    Ename VARCHAR2(100),
    PRIMARY KEY (event_id)
);


-- Table: Event_Location
CREATE TABLE Fall24_S003_T9_Event_Location (
    event_id NUMBER,
    Elocation VARCHAR2(100),
    PRIMARY KEY (event_id, Elocation),
    FOREIGN KEY (event_id)
      REFERENCES Fall24_S003_T9_Event (event_id)
        ON DELETE CASCADE
);

-- Table: Attendance_record
CREATE TABLE Fall24_S003_T9_Attendance_record (
    attendance_id NUMBER,
    event_id NUMBER,
    mav_id NUMBER,
    PRIMARY KEY (attendance_id, event_id, mav_id),
    FOREIGN KEY (event_id) 
      REFERENCES Fall24_S003_T9_Event(event_id) 
        ON DELETE CASCADE,
    FOREIGN KEY (mav_id) 
      REFERENCES Fall24_S003_T9_Attendee(mav_id) 
        ON DELETE CASCADE
);

-- Table: Attendance_Record_date
CREATE TABLE Fall24_S003_T9_Attendance_Record_date (
    attendance_id NUMBER,
    event_id NUMBER,
    mav_id NUMBER,
    c_in TIMESTAMP,
    c_out TIMESTAMP,
    PRIMARY KEY (attendance_id, event_id, mav_id),
    FOREIGN KEY (attendance_id, event_id, mav_id) 
      REFERENCES Fall24_S003_T9_Attendance_record (attendance_id, event_id, mav_id) 
        ON DELETE CASCADE
);

-- Table: Food_item
CREATE TABLE Fall24_S003_T9_Food_item (
    F_id NUMBER,
    Food_name VARCHAR2(100),
    Fi_quantity NUMBER,
    cost NUMBER(10, 2),
    PRIMARY KEY (F_id)
);

-- Table: Food_Leftover
CREATE TABLE Fall24_S003_T9_Food_Leftover (
    leftover_id NUMBER,
    L_quantity NUMBER,
    PRIMARY KEY (leftover_id)
);

-- Table: Consumes
CREATE TABLE Fall24_S003_T9_Consumes (
    mav_id NUMBER,
    F_id NUMBER,
    quantity NUMBER,
    PRIMARY KEY (mav_id, F_id),
    FOREIGN KEY (mav_id) 
      REFERENCES Fall24_S003_T9_Attendee(mav_id) 
        ON DELETE CASCADE,
    FOREIGN KEY (F_id) 
      REFERENCES Fall24_S003_T9_Food_item(F_id) 
        ON DELETE CASCADE
);

-- Table: Produces
CREATE TABLE Fall24_S003_T9_Produces (
    leftover_id NUMBER,
    event_id NUMBER,
    PRIMARY KEY (leftover_id, event_id),
    FOREIGN KEY (leftover_id) 
      REFERENCES Fall24_S003_T9_Food_Leftover(leftover_id) 
        ON DELETE CASCADE,
    FOREIGN KEY (event_id) 
      REFERENCES Fall24_S003_T9_Event(event_id) 
        ON DELETE CASCADE
);

-- Table: Keeps
CREATE TABLE Fall24_S003_T9_Keeps (
    F_id NUMBER,
    event_id NUMBER,
    cquantity NUMBER,
    PRIMARY KEY (F_id, event_id),
    FOREIGN KEY (F_id) 
      REFERENCES Fall24_S003_T9_Food_item(F_id) 
        ON DELETE CASCADE,
    FOREIGN KEY (event_id) 
      REFERENCES Fall24_S003_T9_Event(event_id) 
        ON DELETE CASCADE
);

-- Table: Administrator
CREATE TABLE Fall24_S003_T9_Administrator (
    Admin_ID NUMBER,
    Admin_Name VARCHAR2(100),
    Admin_email VARCHAR2(100),
    PRIMARY KEY (Admin_ID)
);


-- Table: Report
CREATE TABLE Fall24_S003_T9_Report (
    R_id NUMBER,
    Rname VARCHAR2(100),
    Rdate DATE,
    event_id NUMBER,
    PRIMARY KEY (R_id),
    FOREIGN KEY (event_id) 
      REFERENCES Fall24_S003_T9_Event(event_id) 
        ON DELETE CASCADE
);


-- Table: Validated_By
CREATE TABLE Fall24_S003_T9_Validated_By (
    R_id NUMBER,
    Admin_ID NUMBER,
    Timestamp TIMESTAMP,
    PRIMARY KEY (Admin_ID, R_id),
    FOREIGN KEY (R_id)
      REFERENCES Fall24_S003_T9_Report(R_id)
        ON DELETE CASCADE,
    FOREIGN KEY (Admin_ID) 
      REFERENCES Fall24_S003_T9_Administrator(Admin_ID) 
        ON DELETE CASCADE
);





-- OUTPUT



-- SQL> -- Table: Attendee
-- SQL> CREATE TABLE Fall24_S003_T9_Attendee (
--   2      mav_id NUMBER,
--   3      email VARCHAR2(100) NOT NULL,
--   4      dietary_pref VARCHAR2(100),
--   5      Fname VARCHAR2(50),
--   6      Lname VARCHAR2(50),
--   7      PRIMARY KEY (mav_id)
--   8  );




-- Table created.

-- SQL> 
-- SQL> -- Table Fall24_S003_T9_Attendee created Execution time: 60ms
-- SQL> 
-- SQL> -- Table: Event
-- SQL> CREATE TABLE Fall24_S003_T9_Event (
--   2      event_id NUMBER,
--   3      Edate VARCHAR(20),
--   4      Ename VARCHAR2(100),
--   5      PRIMARY KEY (event_id)
--   6  );

-- Table created.

-- SQL> 
-- SQL> -- Table Fall24_S003_T9_Event created Execution time: 52ms
-- SQL> 
-- SQL> 
-- SQL> -- Table: Event_Location
-- SQL> CREATE TABLE Fall24_S003_T9_Event_Location (
--   2      event_id NUMBER,
--   3      Elocation VARCHAR2(100),
--   4      PRIMARY KEY (event_id, Elocation),
--   5      FOREIGN KEY (event_id)
--   6        REFERENCES Fall24_S003_T9_Event (event_id)
--   7          ON DELETE CASCADE
--   8  );

-- Table created.

-- SQL> 
-- SQL> 
-- SQL> 
-- SQL> 
-- SQL> -- Table: Attendance_record
-- SQL> CREATE TABLE Fall24_S003_T9_Attendance_record (
--   2      attendance_id NUMBER,
--   3      event_id NUMBER,
--   4      mav_id NUMBER,
--   5      PRIMARY KEY (attendance_id, event_id, mav_id),
--   6      FOREIGN KEY (event_id) REFERENCES Fall24_S003_T9_Event(event_id),
--   7      FOREIGN KEY (mav_id) REFERENCES Fall24_S003_T9_Attendee(mav_id)
--   8  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Attendance_Record_date
-- SQL> CREATE TABLE Fall24_S003_T9_Attendance_Record_date (
--   2      attendance_id NUMBER,
--   3      event_id NUMBER,
--   4      mav_id NUMBER,
--   5      c_in TIMESTAMP,
--   6      c_out TIMESTAMP,
--   7      PRIMARY KEY (attendance_id, event_id, mav_id),
--   8      FOREIGN KEY (attendance_id, event_id, mav_id) REFERENCES Fall24_S003_T9_Attendance_record (attendance_id, event_id, mav_id)
--   9  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Food_item
-- SQL> CREATE TABLE Fall24_S003_T9_Food_item (
--   2      F_id NUMBER PRIMARY KEY,
--   3      Food_name VARCHAR2(100),
--   4      Fi_quantity NUMBER,
--   5      cost NUMBER(10, 2)
--   6  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Food_Leftover
-- SQL> CREATE TABLE Fall24_S003_T9_Food_Leftover (
--   2      leftover_id NUMBER PRIMARY KEY,
--   3      L_quantity NUMBER
--   4  );

-- Table created.

-- SQL> 
-- SQL> 
-- SQL> -- Table: Consumes
-- SQL> CREATE TABLE Fall24_S003_T9_Consumes (
--   2      mav_id NUMBER,
--   3      F_id NUMBER,
--   4      quantity NUMBER,
--   5      PRIMARY KEY (mav_id, F_id),
--   6      FOREIGN KEY (mav_id) REFERENCES Fall24_S003_T9_Attendee(mav_id),
--   7      FOREIGN KEY (F_id) REFERENCES Fall24_S003_T9_Food_item(F_id)
--   8  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Produces
-- SQL> CREATE TABLE Fall24_S003_T9_Produces (
--   2      leftover_id NUMBER,
--   3      event_id NUMBER,
--   4      PRIMARY KEY (leftover_id, event_id),
--   5      FOREIGN KEY (leftover_id) REFERENCES Fall24_S003_T9_Food_Leftover(leftover_id),
--   6      FOREIGN KEY (event_id) REFERENCES Fall24_S003_T9_Event(event_id)
--   7  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Keeps
-- SQL> CREATE TABLE Fall24_S003_T9_Keeps (
--   2      F_id NUMBER,
--   3      event_id NUMBER,
--   4      cquantity NUMBER,
--   5      PRIMARY KEY (F_id, event_id),
--   6      FOREIGN KEY (F_id) REFERENCES Fall24_S003_T9_Food_item(F_id),
--   7      FOREIGN KEY (event_id) REFERENCES Fall24_S003_T9_Event(event_id)
--   8  );

-- Table created.

-- SQL> 
-- SQL> -- Table: Administrator
-- SQL> CREATE TABLE Fall24_S003_T9_Administrator (
--   2      Admin_ID NUMBER PRIMARY KEY,
--   3      Admin_Name VARCHAR2(100),
--   4      Admin_email VARCHAR2(100)
--   5  );

-- Table created.

-- SQL> 
-- SQL> 
-- SQL> -- Table: Report
-- SQL> CREATE TABLE Fall24_S003_T9_Report (
--   2      R_id NUMBER PRIMARY KEY,
--   3      Rname VARCHAR2(100),
--   4      Rdate DATE,
--   5      event_id NUMBER,
--   6      FOREIGN KEY (event_id) REFERENCES Fall24_S003_T9_Event(event_id)
--   7  );

-- Table created.

-- SQL> 
-- SQL> 
-- SQL> -- Table: Validated_By
-- SQL> CREATE TABLE Fall24_S003_T9_Validated_By (
--   2      Admin_ID NUMBER,
--   3      R_id NUMBER REFERENCES Fall24_S003_T9_Report(R_id),
--   4      Timestamp TIMESTAMP,
--   5      PRIMARY KEY (Admin_ID, R_id),
--   6      FOREIGN KEY (Admin_ID) REFERENCES Fall24_S003_T9_Administrator(Admin_ID)
--   7  );

-- Table created.

-- SQL> spool off






