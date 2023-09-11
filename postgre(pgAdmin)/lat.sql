select * from parameter_detail where param_code in ('GENDER', 'MAJOR');

select * from parameter_detail;

insert into
parameter_detail (detail_code, detail_name, param_code, param_value, created_by, created_time)
values ('PERIOD_ODD', 'Semester Ganjil','PERIOD', 'Semester Ganjil', 'Admin', current_timestamp);

insert into
parameter (param_code, param_name, created_by, created_time)
values ('PERIOD', 'Periode', 'Admin', current_timestamp);

select * from teacher;

insert into 
teacher (teacher_id, teacher_no, teacher_name, gender, created_by, created_time)
values ('9', 'L009', 'Benhard Sitohang', 'GENDER_MALE', 'Admin', current_timestamp);

update teacher
set gender = 'GENDER_FEMALE'
where teacher_id = '8';

select * from course;

insert into 
course (course_id, course_code, course_name, credit, teacher_id, created_by, created_time)
values ('18', 'C02', 'Development of Mobile Application', '3', '9', 'Admin', current_timestamp);

update course
set credit = '3'
where course_id = '1';

select * from semester; --bagian ini belum selesai

insert into 
semester (semester_id, year, period, description, created_by, created_time)
values ('4', '2022', 'PERIOD_EVEN', 'Semester Genap 2022', 'Admin', current_timestamp);

ALTER TABLE semester DROP CONSTRAINT semester_year_ak;
ALTER TABLE semester DROP CONSTRAINT semester_year_period_uk;

ALTER TABLE semester ADD CONSTRAINT semester_uc UNIQUE(year, period);

ALTER TABLE student_semester DROP CONSTRAINT student_id_ak;
ALTER TABLE student_semester DROP CONSTRAINT course_id_ak;
ALTER TABLE student_semester DROP CONSTRAINT semester_id_ak;

ALTER TABLE student_semester ADD CONSTRAINT student_uc UNIQUE(student_id, semester_id, course_id);


select * from city;

insert into
city (city_code, city_name, created_by, created_time)
values ('35.78', 'Kota Surabaya', 'Admin', current_timestamp);

select * from student;

INSERT INTO student (student_id, student_no, student_name, gender, birth_place, birth_date, address, major, city_code, created_by, created_time, profile_url)
VALUES 
    ('16', 'IF22016', 'Adhi Wijaya', 'GENDER_MALE', 'Bandung', '1996-10-03', 'Jl. Mekarsari No. 81 Kiaracondong', 'MAJOR_TI', '32.73', 'Admin', current_timestamp, 'default_profile_url_value');

select * from student_semester;

select * from semester;

insert into 
student_semester(student_semester_id, student_id, semester_id, course_id, mid_test_score, final_test_score, grade, created_by, created_time)
values 
('2', '1', '3', '13', '70', '75', 'B', 'Admin', current_timestamp),
('3', '1', '3', '17', '80', '70', 'B', 'Admin', current_timestamp),
('4', '1', '3', '11', '80', '80', 'B', 'Admin', current_timestamp),
('5', '1', '3', '16', '70', '70', 'C', 'Admin', current_timestamp),
('6', '1', '3', '5', '75', '75', 'B', 'Admin', current_timestamp),
('7', '2', '3', '3', '75', '75', 'B', 'Admin', current_timestamp),
('8', '2', '3', '13', '80', '90', 'A', 'Admin', current_timestamp),
('9', '2', '3', '17', '70', '70', 'C', 'Admin', current_timestamp),
('10', '2', '3', '11', '70', '75', 'B', 'Admin', current_timestamp),
('11', '2', '3', '16', '80', '80', 'B', 'Admin', current_timestamp),
('12', '2', '3', '5', '80', '70', 'B', 'Admin', current_timestamp),
('13', '3', '3', '3', '81', '91', 'A', 'Admin', current_timestamp),
('15', '3', '3', '17', '81', '71', 'B', 'Admin', current_timestamp),
('16', '3', '3', '11', '81', '81', 'B', 'Admin', current_timestamp),
('17', '3', '3', '16', '71', '71', 'C', 'Admin', current_timestamp),
('18', '3', '3', '5', '76', '76', 'B', 'Admin', current_timestamp),
('19', '4', '3', '3', '76', '76', 'B', 'Admin', current_timestamp),
('21', '4', '3', '17', '71', '71', 'B', 'Admin', current_timestamp),
('22', '4', '3', '11', '71', '76', 'B', 'Admin', current_timestamp),
('24', '4', '3', '5', '81', '71', 'B', 'Admin', current_timestamp),
('25', '5', '3', '3', '82', '92', 'A', 'Admin', current_timestamp),
('26', '5', '3', '13', '72', '77', 'B', 'Admin', current_timestamp),
('27', '5', '3', '17', '82', '72', 'B', 'Admin', current_timestamp),
('28', '5', '3', '11', '82', '82', 'B', 'Admin', current_timestamp),
('29', '5', '3', '16', '72', '72', 'B', 'Admin', current_timestamp),
('30', '5', '3', '5', '77', '77', 'B', 'Admin', current_timestamp),
('31', '6', '3', '3', '77', '77', 'B', 'Admin', current_timestamp),
('32', '6', '3', '13', '82', '82', 'B', 'Admin', current_timestamp),
('33', '6', '3', '17', '72', '72', 'B', 'Admin', current_timestamp),
('34', '6', '3', '11', '72', '77', 'B', 'Admin', current_timestamp),
('35', '6', '3', '16', '82', '82', 'B', 'Admin', current_timestamp),
('36', '6', '3', '5', '82', '72', 'B', 'Admin', current_timestamp),
('37', '7', '3', '3', '83', '93', 'A', 'Admin', current_timestamp),
('38', '7', '3', '13', '73', '78', 'B', 'Admin', current_timestamp),
('39', '7', '3', '17', '83', '73', 'B', 'Admin', current_timestamp),
('40', '7', '3', '11', '83', '83', 'B', 'Admin', current_timestamp),
('41', '7', '3', '16', '73', '73', 'B', 'Admin', current_timestamp),
('42', '7', '3', '5', '78', '78', 'B', 'Admin', current_timestamp),
('43', '8', '3', '3', '78', '78', 'B', 'Admin', current_timestamp),
('44', '8', '3', '13', '83', '83', 'B', 'Admin', current_timestamp),
('45', '8', '3', '17', '73', '73', 'B', 'Admin', current_timestamp),
('46', '8', '3', '11', '73', '78', 'B', 'Admin', current_timestamp),
('47', '8', '3', '16', '83', '83', 'B', 'Admin', current_timestamp),
('48', '8', '3', '5', '83', '73', 'B', 'Admin', current_timestamp),
('49', '9', '3', '3', '84', '94', 'A', 'Admin', current_timestamp),
('50', '9', '3', '13', '74', '79', 'B', 'Admin', current_timestamp),
('51', '9', '3', '17', '84', '74', 'B', 'Admin', current_timestamp),
('52', '9', '3', '11', '84', '84', 'B', 'Admin', current_timestamp),
('53', '9', '3', '16', '74', '74', 'B', 'Admin', current_timestamp),
('54', '9', '3', '5', '79', '79', 'B', 'Admin', current_timestamp),
('55', '10', '3', '3', '79', '79', 'B', 'Admin', current_timestamp),
('56', '10', '3', '13', '84', '84', 'B', 'Admin', current_timestamp),
('57', '10', '3', '17', '74', '74', 'B', 'Admin', current_timestamp),
('58', '10', '3', '11', '74', '79', 'B', 'Admin', current_timestamp),
('59', '10', '3', '16', '84', '84', 'B', 'Admin', current_timestamp),
('60', '10', '3', '5', '84', '74', 'B', 'Admin', current_timestamp),
('61', '11', '3', '1', '80', '90', 'A', 'Admin', current_timestamp),
('62', '11', '3', '4', '70', '75', 'B', 'Admin', current_timestamp),
('63', '11', '3', '14', '80', '70', 'B', 'Admin', current_timestamp),
('64', '11', '3', '18', '80', '80', 'B', 'Admin', current_timestamp),
('65', '11', '3', '15', '70', '70', 'C', 'Admin', current_timestamp),
('66', '11', '3', '12', '75', '75', 'B', 'Admin', current_timestamp),
('67', '12', '3', '1', '75', '75', 'B', 'Admin', current_timestamp),
('68', '12', '3', '4', '80', '90', 'A', 'Admin', current_timestamp),
('69', '12', '3', '14', '70', '70', 'C', 'Admin', current_timestamp),
('70', '12', '3', '18', '70', '75', 'B', 'Admin', current_timestamp),
('71', '12', '3', '15', '80', '80', 'B', 'Admin', current_timestamp),
('72', '12', '3', '12', '80', '70', 'B', 'Admin', current_timestamp),
('73', '13', '3', '1', '81', '91', 'A', 'Admin', current_timestamp),
('74', '13', '3', '4', '71', '76', 'B', 'Admin', current_timestamp),
('75', '13', '3', '14', '81', '71', 'B', 'Admin', current_timestamp),
('76', '13', '3', '18', '81', '81', 'B', 'Admin', current_timestamp),
('77', '13', '3', '15', '71', '71', 'B', 'Admin', current_timestamp),
('78', '13', '3', '12', '76', '76', 'B', 'Admin', current_timestamp),
('80', '14', '3', '4', '81', '91', 'A', 'Admin', current_timestamp),
('81', '14', '3', '14', '71', '71', 'B', 'Admin', current_timestamp),
('82', '14', '3', '18', '71', '76', 'B', 'Admin', current_timestamp),
('83', '14', '3', '15', '81', '81', 'B', 'Admin', current_timestamp),
('84', '14', '3', '12', '81', '71', 'B', 'Admin', current_timestamp),
('85', '15', '3', '1', '82', '92', 'A', 'Admin', current_timestamp),
('86', '15', '3', '4', '72', '77', 'B', 'Admin', current_timestamp),
('87', '15', '3', '14', '82', '72', 'B', 'Admin', current_timestamp),
('88', '15', '3', '18', '82', '82', 'B', 'Admin', current_timestamp),
('89', '15', '3', '15', '72', '72', 'B', 'Admin', current_timestamp),
('90', '15', '3', '12', '77', '77', 'B', 'Admin', current_timestamp),
('91', '16', '3', '1', '77', '77', 'B', 'Admin', current_timestamp),
('92', '16', '3', '4', '82', '92', 'A', 'Admin', current_timestamp),
('93', '16', '3', '14', '72', '72', 'B', 'Admin', current_timestamp),
('94', '16', '3', '18', '72', '77', 'B', 'Admin', current_timestamp),
('95', '16', '3', '15', '82', '82', 'B', 'Admin', current_timestamp),
('96', '16', '3', '12', '82', '72', 'B', 'Admin', current_timestamp),
('14', '3', '3', '1', '77', '77', 'B', 'Admin', current_timestamp),
('79', '14', '3', '1', '78', '78', 'B', 'Admin', current_timestamp),
('97', '16', '1', '14', '80', '80', 'A', 'Admin', current_timestamp),
('98', '16', '2', '14', '80', '80', 'A', 'Admin', current_timestamp);
--('99', '17', '3', '1', '70', '80', 'B', 'Admin', current_timestamp);

select * from student;

-- update parameter_detail
-- set detail_name = 'Male', param_value = 'Male'
-- where detail_code = 'GENDER_MALE';

-- update parameter_detail
-- set detail_name = 'Female', param_value = 'Female'
-- where detail_code = 'GENDER_FEMALE';

