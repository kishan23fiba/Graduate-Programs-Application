
    create table academicrecords (
        id int4 not null,
        gpa float8,
        transcript varchar(255),
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
        term varchar(255),
        prog_id int4,
        status_id int4,
        student_id int4,
        primary key (id)
    );

    create table department (
        dno int4 not null,
        dname varchar(255),
        primary key (dno)
    );

    create table educationalbackground (
        collegeName varchar(255),
        degree varchar(255),
        id int4,
        major varchar(255),
        timePeriod int4,
        student_id int4 not null,
        primary key (student_id)
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

    alter table additionalinfo 
        add constraint FK_hxmgolrp1rvwnlmyeby1unysm 
        foreign key (department_dno) 
        references department;

    alter table application 
        add constraint FK_nwa7wmdrl0o8a1x28hnnussrt 
        foreign key (prog_id) 
        references programs;

    alter table application 
        add constraint FK_5yrcnwlc91l320nm4do3c4nk2 
        foreign key (status_id) 
        references status;

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
