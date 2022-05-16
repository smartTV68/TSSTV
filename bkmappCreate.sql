create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, version bigint, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, version bigint, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, version bigint, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
create table bkm_tag (bkm_id bigint not null, tag_id bigint not null, primary key (bkm_id, tag_id)) engine=InnoDB
create table bookmark (id bigint not null auto_increment, bkmark varchar(255) not null, descr varchar(256), shared bit, user_id bigint not null, primary key (id)) engine=InnoDB
create table tag (id bigint not null auto_increment, name varchar(255) not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255) not null, firstname varchar(255) not null, lastname varchar(255) not null, pwd varchar(255) not null, primary key (id)) engine=InnoDB
alter table tag add constraint UK_1wdpsed5kna2y38hnbgrnhi5b unique (name)
alter table bkm_tag add constraint FK2yxkevinbk6n8ad2lsuyxitue foreign key (tag_id) references tag (id)
alter table bkm_tag add constraint FKo0y5vae18n8pjgt9sexq7tnc7 foreign key (bkm_id) references bookmark (id)
alter table bookmark add constraint FK3ogdxsxa4tx6vndyvpk1fk1am foreign key (user_id) references user (id)
