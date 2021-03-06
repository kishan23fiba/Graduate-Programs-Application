
    alter table academicrecords 
        drop constraint FK_obdedsfqjeke2wogm7o4bn6ay;

    alter table additionalinfo 
        drop constraint FK_hxmgolrp1rvwnlmyeby1unysm;

    alter table application 
        drop constraint FK_jplo32usnvewby5mij6snjwpm;

    alter table application 
        drop constraint FK_nwa7wmdrl0o8a1x28hnnussrt;

    alter table application 
        drop constraint FK_h9u0xjnhimvufx7efxul79ukf;

    alter table educationalbackground 
        drop constraint FK_s1ykj38wtv8sa2bv57hruu7bo;

    alter table programs 
        drop constraint FK_2j2n4xbtfr730a4ld1dn0q7m6;

    alter table student 
        drop constraint FK_p7o3g730licdkpuaug9fjw31c;

    drop table if exists academicrecords cascade;

    drop table if exists additionalinfo cascade;

    drop table if exists application cascade;

    drop table if exists department cascade;

    drop table if exists educationalbackground cascade;

    drop table if exists programs cascade;

    drop table if exists status cascade;

    drop table if exists student cascade;

    drop table if exists users cascade;

    drop sequence hibernate_sequence;
