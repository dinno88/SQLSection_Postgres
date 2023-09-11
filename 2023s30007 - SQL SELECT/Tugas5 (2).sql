--5
select 
student_semester_id,
student_semester.student_id as "ID Siswa",
student_no as "No Siswa",
student_name as "Nama Siswa",
student_semester.semester_id as "ID Semester",
year as "Tahun",
period as "Periode",
student_semester.course_id as "ID Mapel",
course_code as "kode Mapel",
course_name as "Nama Mapel",
mid_test_score,
final_test_score,
grade,
city_name as "Nama Kota"
from student_semester
LEFT JOIN student ON student_semester.student_id = student.student_id
LEFT JOIN semester  ON student_semester.semester_id = semester.semester_id
LEFT JOIN course ON student_semester.course_id = course.course_id
LEFT JOIN parameter_detail ON semester.period = parameter_detail.detail_code
LEFT JOIN city ON student.city_code = city.city_code
WHERE city.city_name LIKE '%Bandung%' 
AND parameter_detail.detail_name = 'Semester Genap' 
AND semester.year = '2021' 
AND course.course_name LIKE '%C++%';

-- select * from student
