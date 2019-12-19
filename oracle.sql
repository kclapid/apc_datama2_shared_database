CREATE TABLE MI181_KCLAPID."_client" (
    id number(10) NOT NULL,
    client_fname varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    client_lname varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    client_initial varchar2(3) DEFAULT cast(NULL as  varchar2(4000)),
    client_address varchar2(255) DEFAULT cast(NULL as  varchar2(4000)),
    client_contact varchar2(9) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_client"
ADD CONSTRAINT client_pkey PRIMARY KEY (id);

CREATE SEQUENCE client_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_training" (
    id number(10) NOT NULL,
    trai_location varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    trai_num_employ varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_training"
ADD CONSTRAINT training_pkey PRIMARY KEY (id);

CREATE SEQUENCE training_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_commodities" (
    id number(10) NOT NULL,
    com_type varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    com_validity varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    com_worth varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    com_quantity number(5),
    com_brand varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_commodities"
ADD CONSTRAINT commodities_pkey PRIMARY KEY (id);

CREATE SEQUENCE commodities_pkey START WITH 1;

---


CREATE TABLE MI181_KCLAPID."_contract" (
    id number(10) NOT NULL,
    con_signed varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    con_date varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    con_expiration varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_contract"
ADD CONSTRAINT contract_pkey PRIMARY KEY (id);

CREATE SEQUENCE contract_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_delivery" (
    id number(10) NOT NULL,
    del_cour varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    del_data_receive varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_delivery"
ADD CONSTRAINT delivery_pkey PRIMARY KEY (id);

CREATE SEQUENCE delivery_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_employee" (
    id number(10) NOT NULL,
    emp_fname varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    emp_lname varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    emp_initial varchar2(3) DEFAULT cast(NULL as  varchar2(4000)),
    emp_address varchar2(255) DEFAULT cast(NULL as  varchar2(4000)),
    emp_dob varchar2(19) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_employee"
ADD CONSTRAINT employee_pkey PRIMARY KEY (id);

CREATE SEQUENCE employee_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_financial_report" (
    id number(10) NOT NULL,
    fr_amount varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    fr_date varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_financial_report"
ADD CONSTRAINT financial_report_pkey PRIMARY KEY (id);

CREATE SEQUENCE financial_report_pkey START WITH 1;

---

CREATE TABLE MI181_KCLAPID."_salary" (
    id number(10) NOT NULL,
    sal_amount varchar2(45) DEFAULT cast(NULL as  varchar2(4000)),
    sal_received varchar2(45) DEFAULT cast(NULL as  varchar2(4000))
);

ALTER TABLE MI181_KCLAPID."_salary"
ADD CONSTRAINT salary_pkey PRIMARY KEY (id);

CREATE SEQUENCE salary_pkey START WITH 1;

---

ALTER TABLE MI181_KCLAPID."_commodities"
	ADD CONSTRAINT employee_id1 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
ALTER TABLE MI181_KCLAPID."_employee"
	ADD CONSTRAINT client_id FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_client"(id);

ALTER TABLE MI181_KCLAPID."_employee"
	ADD CONSTRAINT financial_report_id FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_financial_report"(id);

ALTER TABLE MI181_KCLAPID."_contract"
	ADD CONSTRAINT employee_id2 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);

ALTER TABLE MI181_KCLAPID."_contract"
	ADD CONSTRAINT employee_client_id1 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);

ALTER TABLE MI181_KCLAPID."_delivery"
	ADD CONSTRAINT client_id2  FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_client"(id);
	
ALTER TABLE MI181_KCLAPID."_salary"
	ADD CONSTRAINT employee_id3  FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
ALTER TABLE MI181_KCLAPID."_salary"
	ADD CONSTRAINT employee_client_id4 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
ALTER TABLE MI181_KCLAPID."_training"
	ADD CONSTRAINT employee_id4 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
ALTER TABLE MI181_KCLAPID."_training"
	ADD CONSTRAINT employee_client_id3 FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
ALTER TABLE MI181_KCLAPID."_training"
	ADD CONSTRAINT employee_financial_report_id FOREIGN KEY (id) REFERENCES MI181_KCLAPID."_employee"(id);
	
---

