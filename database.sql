CREATE DATABASE IF NOT EXISTS master_python;
use master_python;

CREATE TABLE users(
id       int(25) auto_increment not null,
name  varchar(255),
email   varchar(255),
password varchar(255) not null ,
date   date not null ,
CONSTRAINT pk_usuarios PRIMARY KEY (id),
CONSTRAINT uq_email UNIQUE (email)
)ENGINE =InnoDb;

CREATE TABLE notes(
id          int(25) not null ,
user_id     int(25) not null ,
title       varchar(255) not null ,
description MEDIUMTEXT,
date        date not null ,
CONSTRAINT pk_notes PRIMARY KEY (id),
CONSTRAINT fk_user_note FOREIGN KEY (user_id) references users(id)
)ENGINE =InnoDb;