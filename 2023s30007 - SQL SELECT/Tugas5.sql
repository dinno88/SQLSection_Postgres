SELECT 
s.student_no as Nomor_Siswa,
s.student_name as Nama_Siswa,
s.birth_place as Kota,
s.address as Alamat,
st.description,
c.course_name
FROM student s
JOIN Semester st ON (st.semester_id = st.semester_id)
JOIN course c ON (c.course_id = c.course_id)
WHERE st.description = 'Semester Genap 2021' AND s.birth_place LIKE '%Bandung%' AND c.course_name LIKE '%C++%';