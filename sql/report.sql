students_in_class_by_id

SELECT classes.class_name, students.First_Name, students.Last_Name 
FROM `enrollments`
INNER JOIN students on students_id  = (fk_students_id)
INNER JOIN classes on classes_id = (fk_class_id)
WHERE classes.Classes_id = 1


students_in_class_by_name

SELECT classes.class_name, students.First_Name, students.Last_Name 
FROM `enrollments`
INNER JOIN students on students_id  = (fk_students_id)
INNER JOIN classes on classes_id = (fk_class_id)
WHERE classes.class_name = '1A'


show_classes_of_teacher_by_id

SELECT classes.class_name, teachers.First_Name, teachers.Last_Name 
FROM `classes`
INNER JOIN teachers on teacher_id  = (fk_teacher_id)
WHERE fk_teacher_id = 2