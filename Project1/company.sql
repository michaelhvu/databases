/* 
   Michael Vu
   CSE 3330
   Professor Elmasri
   Project 1
   ID#: 1001078218
*/
create table EMPLOYEE(
    Fname varchar(15) not null,
    Minit char,
    Lname varchar(15) not null,
    Ssn char(9) not null,
    Bdate date,
    Address varchar(30),
    Sex char,
    Salary decimal(10,2),
    Super_ssn char(9),
    Dno int not null,
    CONSTRAINT EMPPK PRIMARY KEY (Ssn)
    /*CONSTRAINT EMPSUPERFK FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn),
    CONSTRAINT EMPDEPTFK FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)*/
);

create table DEPARTMENT(
    Dname varchar(15) not null,
    Dnumber int not null,
    Mgr_ssn char(9) not null,
    Mgr_start_date date,
    CONSTRAINT DEPTPK PRIMARY KEY (Dnumber)
    /*CONSTRAINT DEPTSK UNIQUE (Dname),
    CONSTRAINT DEPTMGRFK FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn)*/
);

create table DEPT_LOCATIONS(
    Dnumber int not null,
    Dlocation varchar(15) not null,
    PRIMARY KEY (Dnumber, Dlocation)
    --FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

create table PROJECT(
    Pname varchar(15) not null,
    Pnumber int not null,
    Plocation varchar(15),
    Dnum int not null,
    PRIMARY KEY (Pnumber)
    --FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)
);

create table WORKS_ON(
    Essn char(9) not null,
    Pno int not null,
    Hours decimal(3,1) not null,
    PRIMARY KEY (Essn, Pno)
    /*FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
    FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)*/
);

commit;