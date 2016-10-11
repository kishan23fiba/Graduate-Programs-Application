    create table academicrecords (
        id int4 not null,
        gpa float8,
        transcript varchar(255),
        student_id int4,
        primary key (id)
    );

    create table additionalinfo (
        id int4 not null,
        name varchar(255),
        required boolean not null,
        type varchar(255),
        department_dno int4,
        primary key (id)
    );

    create table application (
        id int4 not null,
        dateSubmitted timestamp,
        status varchar(255),
        term varchar(255),
        department_dno int4,
        prog_id int4,
        student_id int4,
        primary key (id)
    );

    create table department (
        dno int4 not null,
        dname varchar(255),
        primary key (dno)
    );

    create table educationalbackground (
        id int4 not null,
        collegeName varchar(255),
        degree varchar(255),
        major varchar(255),
        timePeriod int4,
        student_id int4,
        primary key (id)
    );

    create table programs (
        id int4 not null,
        pname varchar(255),
        department_dno int4,
        primary key (id)
    );

    create table status (
        id int4 not null,
        comments varchar(255),
        lastUpdated timestamp,
        name varchar(255),
        primary key (id)
    );

    create table student (
        id int4 not null,
        cin varchar(255),
        citizenship varchar(255),
        dob timestamp,
        email varchar(255),
        fname varchar(255),
        gender varchar(255),
        lname varchar(255),
        phone varchar(255),
        users_id int4,
        primary key (id)
    );

    create table users (
        id int4 not null,
        email varchar(255),
        fname varchar(255),
        lname varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    );

    alter table academicrecords 
        add constraint FK_obdedsfqjeke2wogm7o4bn6ay 
        foreign key (student_id) 
        references student;

    alter table additionalinfo 
        add constraint FK_hxmgolrp1rvwnlmyeby1unysm 
        foreign key (department_dno) 
        references department;

    alter table application 
        add constraint FK_jplo32usnvewby5mij6snjwpm 
        foreign key (department_dno) 
        references department;

    alter table application 
        add constraint FK_nwa7wmdrl0o8a1x28hnnussrt 
        foreign key (prog_id) 
        references programs;

    alter table application 
        add constraint FK_h9u0xjnhimvufx7efxul79ukf 
        foreign key (student_id) 
        references student;

    alter table educationalbackground 
        add constraint FK_s1ykj38wtv8sa2bv57hruu7bo 
        foreign key (student_id) 
        references student;

    alter table programs 
        add constraint FK_2j2n4xbtfr730a4ld1dn0q7m6 
        foreign key (department_dno) 
        references department;

    alter table student 
        add constraint FK_p7o3g730licdkpuaug9fjw31c 
        foreign key (users_id) 
        references users;

    create sequence hibernate_sequence minvalue 300;

ALTER TABLE hibernate_sequence
  OWNER TO gapp;
ALTER TABLE academicrecords
  OWNER TO gapp;
ALTER TABLE additionalinfo
  OWNER TO gapp;
  ALTER TABLE application
  OWNER TO gapp;
  ALTER TABLE department
  OWNER TO gapp;
  ALTER TABLE educationalbackground
  OWNER TO gapp;
  ALTER TABLE programs
  OWNER TO gapp;
  ALTER TABLE student
  OWNER TO gapp;
  ALTER TABLE status
  OWNER TO gapp;
  ALTER TABLE users
  OWNER TO gapp;




INSERT INTO users(
            id, email, fname, lname, password, role)
    VALUES (1, 'admin@localhost.localdomain', 'John', 'Doe', 'abcd', 'administrator');

INSERT INTO users(
            id, email, fname, lname, password, role)
    VALUES (2, 'staff1@localhost.localdomain', 'Joe', 'Barnes', 'abcd', 'staff');

INSERT INTO users(
            id, email, fname, lname, password, role)
    VALUES (3, 'staff2@localhost.localdomain', 'Stacy', 'McGuire', 'abcd', 'staff');


INSERT INTO users(
            id, email, fname, lname, password, role)
    VALUES (4, 'student1@localhost.localdomain', 'Kishan', 'Mistry', 'abcd', 'student');

INSERT INTO users(
            id, email, fname, lname, password, role)
    VALUES (5, 'student2@localhost.localdomain', 'Tom', 'Riddle', 'abcd', 'student');

INSERT INTO department(
            dno, dname)
    VALUES (1, 'Accounting');

INSERT INTO department(
            dno, dname)
    VALUES (2, 'Computer Science');

INSERT INTO programs(
            id, pname, department_dno)
    VALUES (1, 'MS in Accounting', 1);

INSERT INTO programs(
            id, pname, department_dno)
    VALUES (2, 'BS in Accounting', 1);

INSERT INTO programs(
            id, pname, department_dno)
    VALUES (3, 'MS in Computer Science', 2);

INSERT INTO additionalinfo(
            id, name, required, type, department_dno)
    VALUES (1, 'GMAT', true, 'number', 1);

INSERT INTO student(
            id, cin, citizenship, dob, email, fname, gender, lname, phone, 
            users_id)
    VALUES (201, '304398684', 'indian', '08/23/1992', 'student1@localhost.localdomain', 'Kishan', 'male', 'Mistry', '6267805117', 
            '4');

INSERT INTO educationalbackground(
            id, collegename, degree, major, timeperiod, student_id)
    VALUES (1, 'CSULA', 'BS in Computer Science', 'Computer Science', 4, 201);

INSERT INTO academicrecords(
            id, gpa, transcript, student_id)
    VALUES (1, 3.7, 'test1.txt', 201);

INSERT INTO application(
            id, datesubmitted, status, term, department_dno, prog_id, student_id)
    VALUES (1, '02/03/2016', 'Submitted', 'Fall 2016', 2, 2, 201);


INSERT INTO student(
            id, cin, citizenship, dob, email, fname, gender, lname, phone, 
            users_id)
    VALUES (202, '304398684', 'indian', '08/23/1992', 'student2@localhost.localdomain', 'Tom', 'male', 'Riddle', '6267805117', 
            '5');


INSERT INTO application(
            id, datesubmitted, status, term, department_dno, prog_id, student_id)
    VALUES (3, '3/15/2016', 'Not Submitted', 'Fall 2016', 1, 1, 202);

INSERT INTO student(
            id, cin, citizenship, dob, email, fname, gender, lname, phone, 
            users_id)
    VALUES (203, '30444009', 'indian', '03/18/1994', 'something@abcd.com', 'Fname', 'male', 'Lname', '9864566272', 
            4);

INSERT INTO application(
            id, datesubmitted, status, term, department_dno, prog_id, student_id)
    VALUES (2, '4/16/2016', 'Not Submitted', 'Fall 2016', 1, 1, 203);

INSERT INTO educationalbackground(
            id, collegename, degree, major, timeperiod, student_id)
    VALUES (2, 'CSULB', 'BS in CS', 'IT', 3, 203);

INSERT INTO academicrecords(
            id, gpa, transcript, student_id)
    VALUES (2, 3.2, 'test1.txt', 203);