create table parameter(
	param_code varchar(64) not null,
	param_name varchar(64) not null,
	description varchar(128),
    created_by varchar(64) not null,
	created_time timestamp not null,
	updated_by varchar(64),
	updated_time timestamp,
	CONSTRAINT param_pk PRIMARY KEY (param_code)
);

create table parameter_detail(
    detail_code varchar(64) not null,
    detail_name varchar(64) not null,
    param_code varchar(64) not null,
	param_value varchar(128),
    created_by varchar(64) not null,
	created_time timestamp not null,
	updated_by varchar(64),
	updated_time timestamp,
	CONSTRAINT param_detali_pk PRIMARY KEY (detail_code),
    CONSTRAINT param_detail_fk FOREIGN KEY (param_code)
    REFERENCES parameter (param_code)
);

create table teacher(
    teacher_id integer not null,
    teacher_no varchar(16) not null UNIQUE,
    teacher_name varchar(32) not null,
    gender varchar(64) not null, --tidak ada table tapi di gambar fk
    created_by varchar(32) not null,
    created_time timestamp not null,
    updated_by varchar(32),
    updated_time timestamp,
    CONSTRAINT teacher_pk PRIMARY KEY (teacher_id),
    CONSTRAINT teacher_gender_fk FOREIGN KEY (gender) REFERENCES parameter_detail(detail_code)
);

create table course(
    course_id integer not null,
    course_code varchar(32) not null UNIQUE,
    course_name varchar(64) not null,
    credit integer not null,
    teacher_id integer not null,
    created_by varchar(32) not null,
    created_time timestamp not null,
    updated_by varchar(32),
    updated_time timestamp,
    CONSTRAINT course_pk PRIMARY KEY (course_id),
	CONSTRAINT course_code_ak UNIQUE (course_code),
    CONSTRAINT teacher_id_fk FOREIGN KEY (teacher_id)REFERENCES teacher(teacher_id)
);

create table city(
	city_code varchar(16) not null,
	city_name varchar(64) not null,
	created_by varchar(64) not null,
	created_time timestamp not null,
	updated_by varchar(64),
	updated_time timestamp,
	CONSTRAINT city_pk PRIMARY KEY (city_code)
);

CREATE TABLE student (
    student_id integer NOT NULL,
    student_no varchar(16) NOT NULL,
    student_name varchar(32) NOT NULL,
    gender varchar(64) NOT NULL, 
    birth_place varchar(16) NOT NULL,
    birth_date date NOT NULL,
    address varchar(128) NOT NULL,
    major varchar(64) NOT NULL, 
    city_code varchar(16),
    profile_url varchar(256) NOT NULL,
    created_by varchar(32) NOT NULL,
    created_time timestamp NOT NULL,
    updated_by varchar(32),
    updated_time timestamp,
    CONSTRAINT student_pk PRIMARY KEY (student_id),
	CONSTRAINT student_gender_fk FOREIGN KEY (gender) REFERENCES parameter_detail(detail_code),
	CONSTRAINT student_major_fk FOREIGN KEY (major) REFERENCES parameter_detail(detail_code),
    CONSTRAINT student_city_code_fk FOREIGN KEY (city_code) 
	REFERENCES city(city_code)
);

create table semester(
    semester_id integer not null,
    year varchar(4) not null, 
    period varchar(64) not null, --tidak ada table tapi di gambar fk
    description varchar(128),
    created_by varchar(32) not null,
    created_time timestamp not null,
    updated_by varchar(32),
    updated_time timestamp,
    CONSTRAINT semester_pk PRIMARY KEY (semester_id),
	CONSTRAINT semester_period_fk FOREIGN KEY (period) REFERENCES parameter_detail(detail_code),
	CONSTRAINT semester_year_ak UNIQUE (year)
);

create table student_semester(
    student_semester_id integer not null,
    student_id integer not null, --UNIQUE dan FOREIGN
    semester_id integer not null, --UNIQUE dan FOREIGN
    course_id integer not null, --UNIQUE dan FOREIGN
    mid_test_score numeric(3, 2) not null,
    final_test_score numeric(3, 2) not null,
    grade varchar(1) not null,
    created_by varchar(32) not null,
    created_time timestamp not null,
    updated_by varchar(32),
    updated_time timestamp,
    CONSTRAINT student_semester_pk PRIMARY KEY (student_semester_id),
    CONSTRAINT student_id_fk FOREIGN KEY (student_id)REFERENCES student(student_id),
    CONSTRAINT semester_id_fk FOREIGN KEY (semester_id)REFERENCES semester(semester_id),
    CONSTRAINT course_id_fk FOREIGN KEY(course_id)REFERENCES course(course_id),
	CONSTRAINT student_id_ak UNIQUE(student_id),
	CONSTRAINT semester_id_ak UNIQUE(semester_id),
	CONSTRAINT course_id_ak UNIQUE(course_id)
);

