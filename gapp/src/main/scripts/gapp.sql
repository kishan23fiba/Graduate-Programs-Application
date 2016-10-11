
    create table Programs (
        id int4 not null,
        pname varchar(255),
        department_dno int4,
        primary key (id)
    );

    create table academicrecords (
        id int4 not null,
        gpa float8,
        transcript varchar(255),
        primary key (id)
    );

    create table additionalinfo (
        id int4,
        name varchar(255),
        required boolean not null,
        type varchar(255),
        department_dno int4 not null,
        primary key (department_dno)
    );

    create table application (
        id int4 not null,
        term varchar(255),
        prog_id int4,
        student_id int4,
        primary key (id)
    );

    create table department (
        dno int4 not null,
        dname varchar(255),
        primary key (dno)
    );

    create table department_Programs (
        department_dno int4 not null,
        program_id int4 not null
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

    create table status (
        comments varchar(255),
        id int4,
        lastUpdated timestamp,
        name varchar(255),
        application_id int4 not null,
        primary key (application_id)
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
        primary key (id)
    );

    create table users (
        id int4 not null,
        enabled boolean not null,
        password varchar(255),
        username varchar(255),
        email varchar(255),
        fname varchar(255),
        lname varchar(255),
        role varchar(255),
        student_id int4 not null,
        primary key (student_id)
    );

    alter table department_Programs 
        add constraint UK_qivccax3yb91ujjq01r9ph1bm unique (program_id);

    alter table Programs 
        add constraint FK_lb33792hjrnerlg0mqjjwwatc 
        foreign key (department_dno) 
        references department;

    alter table additionalinfo 
        add constraint FK_hxmgolrp1rvwnlmyeby1unysm 
        foreign key (department_dno) 
        references department;

    alter table application 
        add constraint FK_nwa7wmdrl0o8a1x28hnnussrt 
        foreign key (prog_id) 
        references Programs;

    alter table application 
        add constraint FK_h9u0xjnhimvufx7efxul79ukf 
        foreign key (student_id) 
        references student;

    alter table department_Programs 
        add constraint FK_qivccax3yb91ujjq01r9ph1bm 
        foreign key (program_id) 
        references Programs;

    alter table department_Programs 
        add constraint FK_m4oq5uc16up80no0b6wsykc69 
        foreign key (department_dno) 
        references department;

    alter table educationalbackground 
        add constraint FK_s1ykj38wtv8sa2bv57hruu7bo 
        foreign key (student_id) 
        references student;

    alter table status 
        add constraint FK_4k6d2fq6rldgac1txlsfvhcgw 
        foreign key (application_id) 
        references application;

    alter table users 
        add constraint FK_qh3otyipv2k9hqte4a1abcyhq 
        foreign key (student_id) 
        references student;

    create sequence hibernate_sequence;
