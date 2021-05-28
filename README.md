# CodeReview_w7_Christian_Sander
Simple Sql-Database with JDBC application.

Base Points:

(5) Create a database, name it CR7_Surname with the following tables:

    Teachers, tracking all the teachers with name, surname, email and auto increment ID

field.

    Students, tracking all the students with name, surname, email and auto increment ID

field.

    Classes, tracking all the classes, with the class name (“1a”, 1b”, “2a”...) and auto

increment ID field.

(5) Fill the database with test data (at least 4 teachers, 4 classes and 10 students)

(5) Add 1-n relation depicting that a student belongs to a class. Do that by either  modifying

existing table(s), or by creating another table to track that relation.

Create a file “report.sql”. In this file, save the following SQLs:

(5) Create a SQL statement that reports all the student of a specific class when you know a

specific class ID (aka something like “show all students of the class 1b, which has the ID=2”)

(5) Create a SQL statement that reports all the student of a specific class when you know a

specific class name (aka something like “show all students of the class ‘1b’; I don’t know the students ID”)

(5) Add n-to-m relation to database that saves the data of type “a single teacher can teach

several classes”. Connect the tables accordingly.

Notes:

Use phpMyAdmin to export the database into a file “database-dump.sql”.

Create a Java JDBC based project in IntelliJ, add the whole project to your Git repository. Then, add a folder “sql” in the project structure and add files “report.sql” and “database-

dump.sql” to it.

(5) Create a simple menu, where the user is able to perform certain actions.

The interface consists of the following options to select:

1) Display all students.

2) Display all teachers.

3) Display all classes.

4) Display classes of teacher  id (int i) → Here the user inputs a specific id for a teacher and it will display teacher data (name, surname …) and the according classes they teach. (This is only for ONE specific teacher).

Java part:

Menu points 1-3

(10) Display all students in a list-like view, showing the students data as

Surname, Name.

Repeat process for teachers and classes.

Menu point 4

(55) Once a teacher id is read in from the console, you need to DYNAMICALLY (i.e send a SQL statement  to the database) display all classes, the specific teacher teaches in a list-like view.

To get a better understanding take a look at the given example below.

Note: this just counts for ONE specific teacher.

e.g

Input = 1 ← ID of teacher

Output Example: 

ID 1: Teacher “John Doe” teaches:

1a

2a

4b
