R--  DDL for Sequence ACTSQU
--------------------------------------------------------

   CREATE SEQUENCE  "ACTSQU"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RESERVATION_ID_SEQ"  MINVALUE 1 MAXVALUE 100 INCREMENT BY 1 START WITH 22 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AGENCYMANAGER
--------------------------------------------------------

  CREATE TABLE "AGENCYMANAGER" 
   (	"AGENCYID" NUMBER(3,0), 
	"EMPLOYID" NUMBER(3,0), 
	"STARTDATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table AGENCYPHONE
--------------------------------------------------------

  CREATE TABLE "AGENCYPHONE" 
   (	"AGENCYID" NUMBER(3,0), 
	"PHONE" NUMBER(11,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CARAGENCY
--------------------------------------------------------

  CREATE TABLE "CARAGENCY" 
   (	"AGENCY_ID" NUMBER(3,0), 
	"AGENCY_EMAIL" VARCHAR2(25), 
	"LOCATION" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table CUSRTOMERPHONE
--------------------------------------------------------

  CREATE TABLE "CUSRTOMERPHONE" 
   (	"CUSTOMERID" NUMBER(3,0), 
	"PHONE" NUMBER(11,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CUSTOMER" 
   (	"CUSTOMER_ID" NUMBER(3,0), 
	"CUSTOMERSSN" NUMBER(14,0), 
	"ADDRESS" VARCHAR2(30), 
	"CUSFNAME" VARCHAR2(7), 
	"CUSLNAME" VARCHAR2(7), 
	"EMAIL" VARCHAR2(25), 
	"TOTALRENTALS" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DEAL
--------------------------------------------------------

  CREATE TABLE "DEAL" 
   (	"DEAL_ID" NUMBER(6,0), 
	"RESERVATION_ID" NUMBER(3,0), 
	"EMP_ID" NUMBER(3,0), 
	"PICKUPDATE" DATE, 
	"RETURNDATE" DATE, 
	"RETURNLOCATION" VARCHAR2(20), 
	"PAYMENTMETHOD" VARCHAR2(4), 
	"ENSURANCE" NUMBER(5,0), 
	"CONTRACT" VARCHAR2(3)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPIOYEEPHONE
--------------------------------------------------------

  CREATE TABLE "EMPIOYEEPHONE" 
   (	"EMPLOYEE_ID" NUMBER(3,0), 
	"PHONE" VARCHAR2(11)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMPLOYEE_ID" NUMBER(3,0), 
	"AGENCY_ID" NUMBER(3,0), 
	"EMPSSN" VARCHAR2(14), 
	"SALARY" NUMBER(5,2), 
	"EMPFNAME" VARCHAR2(7), 
	"EMPLNAME" VARCHAR2(7)
   ) ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" 
   (	"RESERVATIONID" NUMBER(6,0), 
	"CUSTOMERID" NUMBER(3,0), 
	"vehicleID" VARCHAR2(8), 
	"DEALID" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table RESERVATIONDEAL
--------------------------------------------------------

  CREATE TABLE "RESERVATIONDEAL" 
   (	"RESERVATION_ID" NUMBER(6,0), 
	"DEAL_ID" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table REVERVATIONVEHICLE
--------------------------------------------------------

  CREATE TABLE "REVERVATIONVEHICLE" 
   (	"VEHICLEID" VARCHAR2(8), 
	"RESERVATIONID" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLE
--------------------------------------------------------

  CREATE TABLE "VEHICLE" 
   (	"VEHICLE_ID" VARCHAR2(8), 
	"EMPLOYEE_ID" NUMBER(3,0), 
	"AGENCY_ID" NUMBER(3,0), 
	"MILEAGE" NUMBER(9,0), 
	"BRAND" VARCHAR2(20), 
	"LICENSEENDDATE" DATE, 
	"MODEL" VARCHAR2(20), 
	"YEAR" NUMBER(4,0), 
	"PRICEPERDATE" NUMBER(5,0), 
	"TRANSMISSIONS" VARCHAR2(9), 
	"RENTALSTATUS" VARCHAR2(9)
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLECOLOR
--------------------------------------------------------

  CREATE TABLE "VEHICLECOLOR" 
   (	"VEHICLE_ID" VARCHAR2(8), 
	"COLOR" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLEFEATURES
--------------------------------------------------------

  CREATE TABLE "VEHICLEFEATURES" 
   (	"VEHICLE_ID" VARCHAR2(8), 
	"FEATURES" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLEFUELTYPE
--------------------------------------------------------

  CREATE TABLE "VEHICLEFUELTYPE" 
   (	"VEHICLE_ID" VARCHAR2(8), 
	"FUELTYPE" VARCHAR2(20)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE AGENCYMANAGER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AGENCYMANAGER
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (1,6,to_timestamp('12-JAN-23 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (2,9,to_timestamp('12-JAN-23 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (8,11,to_timestamp('12-JAN-23 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (1,1,to_timestamp('30-JAN-15 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (1,2,to_timestamp('15-JUN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (4,3,to_timestamp('07-DEC-09 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into AGENCYMANAGER (AGENCYID,EMPLOYID,STARTDATE) values (2,4,to_timestamp('10-NOV-12 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE AGENCYMANAGER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE AGENCYPHONE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AGENCYPHONE
Insert into AGENCYPHONE (AGENCYID,PHONE) values (1,1111111111);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (1,1234567890);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (2,1113298767);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (2,1276971234);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (4,1134987523);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (4,1190908765);
Insert into AGENCYPHONE (AGENCYID,PHONE) values (8,1212303056);

---------------------------------------------------
--   END DATA FOR TABLE AGENCYPHONE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CARAGENCY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CARAGENCY
Insert into CARAGENCY (AGENCY_ID,AGENCY_EMAIL,LOCATION) values (5,'agency5@mail.com','Gouna');
Insert into CARAGENCY (AGENCY_ID,AGENCY_EMAIL,LOCATION) values (1,'ahmed@gmail.com','elhegaz');
Insert into CARAGENCY (AGENCY_ID,AGENCY_EMAIL,LOCATION) values (2,'abcd@outlook.com','madinet naser');
Insert into CARAGENCY (AGENCY_ID,AGENCY_EMAIL,LOCATION) values (4,'abCAR@outlook.com','Fifth settlement');
Insert into CARAGENCY (AGENCY_ID,AGENCY_EMAIL,LOCATION) values (8,'ccCAR@outlook.com','sheraton');

---------------------------------------------------
--   END DATA FOR TABLE CARAGENCY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CUSRTOMERPHONE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CUSRTOMERPHONE
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (1,1055448822);
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (2,1514161718);
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (3,1010009812);
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (3,1267897652);
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (4,1090909876);
Insert into CUSRTOMERPHONE (CUSTOMERID,PHONE) values (5,1013216756);

---------------------------------------------------
--   END DATA FOR TABLE CUSRTOMERPHONE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CUSTOMER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CUSTOMER
Insert into CUSTOMER (CUSTOMER_ID,CUSTOMERSSN,ADDRESS,CUSFNAME,CUSLNAME,EMAIL,TOTALRENTALS) values (1,1234567899874,'50 hegaz street','Ali','Ahmed','ali@gmail.com',0);
Insert into CUSTOMER (CUSTOMER_ID,CUSTOMERSSN,ADDRESS,CUSFNAME,CUSLNAME,EMAIL,TOTALRENTALS) values (2,1234567895125,'50 hegaz','KOKO','Ali','KOKO@gmail.com',0);
Insert into CUSTOMER (CUSTOMER_ID,CUSTOMERSSN,ADDRESS,CUSFNAME,CUSLNAME,EMAIL,TOTALRENTALS) values (3,12127898765431,'sheraton','Lolo','mohamed','lolo@outlook.com',2);
Insert into CUSTOMER (CUSTOMER_ID,CUSTOMERSSN,ADDRESS,CUSFNAME,CUSLNAME,EMAIL,TOTALRENTALS) values (4,98981234324543,'hegaz','lili','ali','lili@outlook.com',1);
Insert into CUSTOMER (CUSTOMER_ID,CUSTOMERSSN,ADDRESS,CUSFNAME,CUSLNAME,EMAIL,TOTALRENTALS) values (5,56543219090876,'tagmoua','asim','ahmed','asim@outlook.com',1);

---------------------------------------------------
--   END DATA FOR TABLE CUSTOMER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DEAL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEAL
Insert into DEAL (DEAL_ID,RESERVATION_ID,EMP_ID,PICKUPDATE,RETURNDATE,RETURNLOCATION,PAYMENTMETHOD,ENSURANCE,CONTRACT) values (4,null,1,null,null,null,null,null,null);
Insert into DEAL (DEAL_ID,RESERVATION_ID,EMP_ID,PICKUPDATE,RETURNDATE,RETURNLOCATION,PAYMENTMETHOD,ENSURANCE,CONTRACT) values (1,1,2,to_timestamp('30-JAN-24 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('03-FEB-24 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'heliopolis','cash',5000,'yes');
Insert into DEAL (DEAL_ID,RESERVATION_ID,EMP_ID,PICKUPDATE,RETURNDATE,RETURNLOCATION,PAYMENTMETHOD,ENSURANCE,CONTRACT) values (3,3,4,to_timestamp('01-DEC-23 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('25-DEC-23 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'hegaz','visa',7900,'yes');
Insert into DEAL (DEAL_ID,RESERVATION_ID,EMP_ID,PICKUPDATE,RETURNDATE,RETURNLOCATION,PAYMENTMETHOD,ENSURANCE,CONTRACT) values (2,2,1,to_timestamp('09-JUL-22 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-AUG-22 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'nasr city','visa',9000,'yes');

---------------------------------------------------
--   END DATA FOR TABLE DEAL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPIOYEEPHONE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPIOYEEPHONE
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (5,'01012128956');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (8,'01013211278');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (6,'01118765456');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (3,'01020304050');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (10,'01245789547');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (11,'01054895623');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (9,'01254963258');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (1,'01055447710');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (2,'01672948230');
Insert into EMPIOYEEPHONE (EMPLOYEE_ID,PHONE) values (4,'01287654230');

---------------------------------------------------
--   END DATA FOR TABLE EMPIOYEEPHONE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPLOYEE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEE
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (1,1,'01234567890123',350,'ahmed','ali');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (2,4,'12301230141440',900,'ahmed','mohamed');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (5,8,'67867845341234',200,'salem','ali');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (4,1,'56785678123456',450,'ali','yousef');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (8,4,'90908765432123',320,'mona','salim');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (6,1,'98761234567891',900,'michael','ehab');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (7,2,'20304030203234',760,'mohsen','mohsen');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (3,4,'12030104474836',670,'mohsen','mohsen');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (10,8,'12045178496554',960,'erahim','saad');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (11,8,'54879635214754',990,'khaled','mohamed');
Insert into EMPLOYEE (EMPLOYEE_ID,AGENCY_ID,EMPSSN,SALARY,EMPFNAME,EMPLNAME) values (9,2,'21548785963237',900,'noura','elseyed');

---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RESERVATION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RESERVATION
Insert into RESERVATION (RESERVATIONID,CUSTOMERID,"vehicleID",DEALID) values (1,1,'1',1);
Insert into RESERVATION (RESERVATIONID,CUSTOMERID,"vehicleID",DEALID) values (2,1,'1',2);
Insert into RESERVATION (RESERVATIONID,CUSTOMERID,"vehicleID",DEALID) values (3,2,'2',3);

---------------------------------------------------
--   END DATA FOR TABLE RESERVATION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RESERVATIONDEAL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RESERVATIONDEAL
Insert into RESERVATIONDEAL (RESERVATION_ID,DEAL_ID) values (1,1);
Insert into RESERVATIONDEAL (RESERVATION_ID,DEAL_ID) values (2,2);
Insert into RESERVATIONDEAL (RESERVATION_ID,DEAL_ID) values (3,3);

---------------------------------------------------
--   END DATA FOR TABLE RESERVATIONDEAL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE REVERVATIONVEHICLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into REVERVATIONVEHICLE
Insert into REVERVATIONVEHICLE (VEHICLEID,RESERVATIONID) values ('1',1);
Insert into REVERVATIONVEHICLE (VEHICLEID,RESERVATIONID) values ('1',2);
Insert into REVERVATIONVEHICLE (VEHICLEID,RESERVATIONID) values ('2',3);
Insert into REVERVATIONVEHICLE (VEHICLEID,RESERVATIONID) values ('wee2834',2);
Insert into REVERVATIONVEHICLE (VEHICLEID,RESERVATIONID) values ('wee2834',3);

---------------------------------------------------
--   END DATA FOR TABLE REVERVATIONVEHICLE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE VEHICLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VEHICLE
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('4',1,1,1000,'hundai',to_timestamp('03-JAN-24 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'verna',2008,50,'auto','yes');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('1',1,1,50000,'hyndai',to_timestamp('18-JAN-26 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'verna',2006,200,'auto','no');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('mnb1243',1,1,2000,'tesla',to_timestamp('10-FEB-40 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'x',2022,500,'A','yes');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('2',1,1,1000,'Mercedes',to_timestamp('03-FEB-24 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'C180',2009,500,'auto','yes');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('in2020',null,2,60254,'Ford',to_timestamp('19-FEB-25 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'Mustang',2022,600,'A','no');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('rry299',null,4,4000,'Honda',to_timestamp('05-JAN-24 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'accord',2024,500,'M','no');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('aa11',null,4,70000,'chevrolet',to_timestamp('23-MAR-26 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'malibu',2021,600,'A','no');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('qwq1734',null,8,151281,'nissan',to_timestamp('17-JUL-26 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'altima',2021,300,'A','no');
Insert into VEHICLE (VEHICLE_ID,EMPLOYEE_ID,AGENCY_ID,MILEAGE,BRAND,LICENSEENDDATE,MODEL,YEAR,PRICEPERDATE,TRANSMISSIONS,RENTALSTATUS) values ('wee2834',null,8,78254,'subaru',to_timestamp('12-OCT-28 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'forseter',2020,600,'M','n
---------------------------------------------------
--   END DATA FOR TABLE VEHICLE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE VEHICLECOLOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VEHICLECOLOR
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('4','yellow');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('1','green');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('mnb1243','black');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('2','black');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('in2020','blue');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('rry299','black');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('aa11','black');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('qwq1734','gray');
Insert into VEHICLECOLOR (VEHICLE_ID,COLOR) values ('wee2834','blue');

---------------------------------------------------
--   END DATA FOR TABLE VEHICLECOLOR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE VEHICLEFEATURES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VEHICLEFEATURES
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('1','AC');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('mnb1243','AC');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('2','AC');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('in2020','V8 Engine');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('rry299','Turbocharged engine');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('aa11','luxury');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('qwq1734','spacious cabin');
Insert into VEHICLEFEATURES (VEHICLE_ID,FEATURES) values ('wee2834','eyesight driver');

---------------------------------------------------
--   END DATA FOR TABLE VEHICLEFEATURES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE VEHICLEFUELTYPE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VEHICLEFUELTYPE
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('mnb1243','electric');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('1','gas');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('2','gasoline');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('in2020','gasoline');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('rry299','gasoline');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('aa11','electric');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('qwq1734','electric');
Insert into VEHICLEFUELTYPE (VEHICLE_ID,FUELTYPE) values ('wee2834','gas');

---------------------------------------------------
--   END DATA FOR TABLE VEHICLEFUELTYPE
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table REVERVATIONVEHICLE
--------------------------------------------------------

  ALTER TABLE "REVERVATIONVEHICLE" ADD CONSTRAINT "REVERVATIONVEHICLE_PK" PRIMARY KEY ("VEHICLEID", "RESERVATIONID") ENABLE;
 
  ALTER TABLE "REVERVATIONVEHICLE" MODIFY ("VEHICLEID" NOT NULL ENABLE);
 
  ALTER TABLE "REVERVATIONVEHICLE" MODIFY ("RESERVATIONID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD PRIMARY KEY ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLECOLOR
--------------------------------------------------------

  ALTER TABLE "VEHICLECOLOR" ADD PRIMARY KEY ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLEFEATURES
--------------------------------------------------------

  ALTER TABLE "VEHICLEFEATURES" ADD PRIMARY KEY ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RESERVATIONID") ENABLE;
 
  ALTER TABLE "RESERVATION" MODIFY ("RESERVATIONID" NOT NULL ENABLE);
 
  ALTER TABLE "RESERVATION" MODIFY ("CUSTOMERID" NOT NULL ENABLE);
 
  ALTER TABLE "RESERVATION" MODIFY ("vehicleID" NOT NULL ENABLE);
 
  ALTER TABLE "RESERVATION" MODIFY ("DEALID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGENCYMANAGER
--------------------------------------------------------

  ALTER TABLE "AGENCYMANAGER" ADD CONSTRAINT "AGENCYMANAGER_PK" PRIMARY KEY ("AGENCYID", "EMPLOYID") ENABLE;
 
  ALTER TABLE "AGENCYMANAGER" MODIFY ("AGENCYID" NOT NULL ENABLE);
 
  ALTER TABLE "AGENCYMANAGER" MODIFY ("EMPLOYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATIONDEAL
--------------------------------------------------------

  ALTER TABLE "RESERVATIONDEAL" ADD CONSTRAINT "RESERVATIONDEAL_PK" PRIMARY KEY ("RESERVATION_ID", "DEAL_ID") ENABLE;
 
  ALTER TABLE "RESERVATIONDEAL" MODIFY ("RESERVATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "RESERVATIONDEAL" MODIFY ("DEAL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGENCYPHONE
--------------------------------------------------------

  ALTER TABLE "AGENCYPHONE" ADD CONSTRAINT "AGENCYPHONE_PK" PRIMARY KEY ("AGENCYID", "PHONE") ENABLE;
 
  ALTER TABLE "AGENCYPHONE" MODIFY ("AGENCYID" NOT NULL ENABLE);
 
  ALTER TABLE "AGENCYPHONE" MODIFY ("PHONE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPIOYEEPHONE
--------------------------------------------------------

  ALTER TABLE "EMPIOYEEPHONE" ADD PRIMARY KEY ("EMPLOYEE_ID") ENABLE;
 
  ALTER TABLE "EMPIOYEEPHONE" ADD UNIQUE ("PHONE") ENABLE;
--------------------------------------------------------
--  Constraints for Table DEAL
--------------------------------------------------------

  ALTER TABLE "DEAL" ADD CONSTRAINT "DEAL_ID_PK1" PRIMARY KEY ("DEAL_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_PK111" PRIMARY KEY ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" ADD PRIMARY KEY ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLEFUELTYPE
--------------------------------------------------------

  ALTER TABLE "VEHICLEFUELTYPE" ADD PRIMARY KEY ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSRTOMERPHONE
--------------------------------------------------------

  ALTER TABLE "CUSRTOMERPHONE" ADD CONSTRAINT "CUSRTOMERPHONE_PK" PRIMARY KEY ("CUSTOMERID", "PHONE") ENABLE;
 
  ALTER TABLE "CUSRTOMERPHONE" MODIFY ("CUSTOMERID" NOT NULL ENABLE);
 
  ALTER TABLE "CUSRTOMERPHONE" MODIFY ("PHONE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CARAGENCY
--------------------------------------------------------

  ALTER TABLE "CARAGENCY" ADD PRIMARY KEY ("AGENCY_ID") ENABLE;
--------------------------------------------------------
--  DDL for Index VEHICLE_PK111
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICLE_PK111" ON "VEHICLE" ("VEHICLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RESERVATIONID") 
  ;
--------------------------------------------------------
--  DDL for Index CUSRTOMERPHONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSRTOMERPHONE_PK" ON "CUSRTOMERPHONE" ("CUSTOMERID", "PHONE") 
  ;
--------------------------------------------------------
--  DDL for Index REVERVATIONVEHICLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVERVATIONVEHICLE_PK" ON "REVERVATIONVEHICLE" ("VEHICLEID", "RESERVATIONID") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATIONDEAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATIONDEAL_PK" ON "RESERVATIONDEAL" ("RESERVATION_ID", "DEAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index AGENCYMANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGENCYMANAGER_PK" ON "AGENCYMANAGER" ("AGENCYID", "EMPLOYID") 
  ;
--------------------------------------------------------
--  DDL for Index AGENCYPHONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGENCYPHONE_PK" ON "AGENCYPHONE" ("AGENCYID", "PHONE") 
  ;
--------------------------------------------------------
--  DDL for Index DEAL_ID_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEAL_ID_PK1" ON "DEAL" ("DEAL_ID") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table AGENCYMANAGER
--------------------------------------------------------

  ALTER TABLE "AGENCYMANAGER" ADD CONSTRAINT "AGENCYMANAGER_CARAGENCY_FK1" FOREIGN KEY ("AGENCYID")
	  REFERENCES "CARAGENCY" ("AGENCY_ID") ENABLE;
 
  ALTER TABLE "AGENCYMANAGER" ADD CONSTRAINT "AGENCYMANAGER_EMPLOYEE_FK1" FOREIGN KEY ("EMPLOYID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGENCYPHONE
--------------------------------------------------------

  ALTER TABLE "AGENCYPHONE" ADD CONSTRAINT "AGENCYPHONE_CARAGENCY_FK1" FOREIGN KEY ("AGENCYID")
	  REFERENCES "CARAGENCY" ("AGENCY_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table CUSRTOMERPHONE
--------------------------------------------------------

  ALTER TABLE "CUSRTOMERPHONE" ADD CONSTRAINT "CUSRTOMERPHONE_CUSTOMER_FK1" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "CUSTOMER" ("CUSTOMER_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table DEAL
--------------------------------------------------------

  ALTER TABLE "DEAL" ADD CONSTRAINT "DEAL_EMPLOYEE_FK1" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPIOYEEPHONE
--------------------------------------------------------

  ALTER TABLE "EMPIOYEEPHONE" ADD CONSTRAINT "EMPIOYEEPHONE_EMPLOYEE_FK1" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_CARAGENCY_FK1" FOREIGN KEY ("AGENCY_ID")
	  REFERENCES "CARAGENCY" ("AGENCY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_CUSTOMER_FK1" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "CUSTOMER" ("CUSTOMER_ID") ENABLE;
 
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_DEAL_FK1" FOREIGN KEY ("DEALID")
	  REFERENCES "DEAL" ("DEAL_ID") ENABLE;
 
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_VEHICLE_FK1" FOREIGN KEY ("vehicleID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATIONDEAL
--------------------------------------------------------

  ALTER TABLE "RESERVATIONDEAL" ADD CONSTRAINT "RESERVATIONDEAL_DEAL_FK1" FOREIGN KEY ("DEAL_ID")
	  REFERENCES "DEAL" ("DEAL_ID") ENABLE;
 
  ALTER TABLE "RESERVATIONDEAL" ADD CONSTRAINT "RESERVATIONDEAL_RESERVATI_FK1" FOREIGN KEY ("RESERVATION_ID")
	  REFERENCES "RESERVATION" ("RESERVATIONID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVERVATIONVEHICLE
--------------------------------------------------------

  ALTER TABLE "REVERVATIONVEHICLE" ADD CONSTRAINT "REVERVATIONVEHICLE_RESERV_FK1" FOREIGN KEY ("RESERVATIONID")
	  REFERENCES "RESERVATION" ("RESERVATIONID") ENABLE;
 
  ALTER TABLE "REVERVATIONVEHICLE" ADD CONSTRAINT "REVERVATIONVEHICLE_VEHICL_FK1" FOREIGN KEY ("VEHICLEID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_CARAGENCY_FK1" FOREIGN KEY ("AGENCY_ID")
	  REFERENCES "CARAGENCY" ("AGENCY_ID") ENABLE;
 
  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_EMPLOYEE_FK1" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLECOLOR
--------------------------------------------------------

  ALTER TABLE "VEHICLECOLOR" ADD CONSTRAINT "VEHICLECOLOR_VEHICLE_FK1" FOREIGN KEY ("VEHICLE_ID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLEFEATURES
--------------------------------------------------------

  ALTER TABLE "VEHICLEFEATURES" ADD CONSTRAINT "VEHICLEFEATURES_VEHICLE_FK1" FOREIGN KEY ("VEHICLE_ID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLEFUELTYPE
--------------------------------------------------------

  ALTER TABLE "VEHICLEFUELTYPE" ADD CONSTRAINT "VEHICLEFUELTYPE_VEHICLE_FK1" FOREIGN KEY ("VEHICLE_ID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ENABLE;
