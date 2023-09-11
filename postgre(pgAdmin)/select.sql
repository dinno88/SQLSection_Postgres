select count(*) from city
select * from city
select * from city where city_name like '%Jakarta%';
select * from city where city_name like '%Kabupaten%';
select * from city where city_code like '%7%';
select * from city order by city_code
select * from city order by city_code, city_name

--kota yang digit ke 2 city_code = '2'
select 
city_code, city_name
from city 
where substring(city_code, 2, 1) = '2';

select 
substring(city_code, 2, 1), city_code, length(city_code), city_name, length(city_name)
from city 
where substring(city_code, 2, 1) = '2';

--kota yang digit ke 2 city_code = '2'and kata didepan city_name = '---'
select 
city_code, city_name
from city 
where substring(city_code, 2, 1) = '2' and 
city_name like 'Kabupaten%';

select count(*) from parameter
select * from parameter

select count(*) from parameter_detail
select * from parameter_detail

select 
	pd.detail_code, pd.detail_name, pd.param_code, p.param_name, pd.param_value
from parameter_detail pd
left join parameter p on (pd.param_code = p.param_code)

select count(*) from teacher
select * from teacher
--join teacher jenis kelamin dan course
select
t.teacher_no, t.teacher_name, c.course_code, c.course_name, c.credit
from
teacher t
left join course c on (t.teacher_id = c.teacher_id)


-- select 
-- teacher_id, teacher_no, teacher_name, detail_name, as gender,t.created_by,t.created_time,t.updated_by,t.updated_time
-- from teacher
-- left join parameter_detail pd on t.gender = pd.detail_code

-- Cari guru berjenis kelamin laki laki
select * from teacher where gender = 'GENDER_MALE'
-- Cari guru berjenis kelamin laki laki dan nama memiliki karakter 0
SELECT * FROM teacher 
WHERE gender = 'GENDER_MALE'
	AND teacher_name LIKE '%o%';
SELECT count(*) FROM teacher 
WHERE gender = 'GENDER_MALE'
	AND teacher_name LIKE '%o%';
	
select lower(gender), * from teacher where lower(gender) = lower('gender_male') and teacher_name like '%o%';
	
--cari guru laki-laki yang memiliki nama huruf g
select * from teacher where upper(gender) = upper('GENDER_MALE') and teacher_name like 'o'; --belum selesai

select count(*) from course
select * from course

select count(*) from student
select * from student

select count(*) from semester
select * from semester

select count(*) from student_semester
select * from student_semester

--menampilkan data dari 3 table 
select
ss.student_semester_id,
ss.mid_test_score,
ss.final_test_score,
ss.grade,
s.student_no,
s.student_name,
st.year, st.period,
c.course_id,
c.course_code,
c.course_name
from student_semester ss
left join student s on (ss.student_id = s.student_id)
left join semester st on (ss.semester_id = st.semester_id)
left join course c on (ss.course_id = c.course_id)


