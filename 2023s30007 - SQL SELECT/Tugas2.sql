SELECT 
s.student_no as Nomor_Siswa,
s.student_name as Nama_Siswa,
s.birth_place as Kota,
s.address as Alamat,
st.description
FROM student s
JOIN Semester st ON (st.semester_id = st.semester_id)
WHERE st.description = 'Semester Ganjil 2021' AND s.birth_place LIKE '%Bandung%';