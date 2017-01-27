create table types(
	type_id integer primary key autoincrement,
	name varchar(100) not null
);
create index types_name_idx on types (name);

create table objects(
	obj_id integer primary key autoincrement,
	type_id int not null,
	created datetime not null,
	updated datetime,
	json text
);
create index objects_type_id_idx on objects (type_id);

create table files(
	file_id integer primary key autoincrement,
	type_id int not null,
	original_name varchar(200) not null
	uploaded datetime not null,
	hash varchar(100) not null,
	size int not null,
	file_name varchar(100) not null
);
create index files_type_id_idx on files (type_id);

create table users(
	user_id integer primary key autoincrement,
	login varchar(100) not null,
	password varchar(100) not null,
	role_id int not null
);
create index users_login_idx on users (login);
create index users_role_id_idx on users (role_id);

create table roles(
	role_id integer primary key autoincrement,
	name varchar(100) not null
);
create index roles_name_idx on roles (name);

create table permissions(
	permission_id integer primary key autoincrement,
	role_id int not null,
	type_id int not null,
	crud_flags varchar(4) not null
);
create index permissions_idx on permissions (role_id, type_id);
