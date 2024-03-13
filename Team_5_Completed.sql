drop table if exists student ;
drop table if exists enrollment ;
drop table if exists course;
drop table if exists class_offering ;
drop table if exists grade_level ;
drop table if exists schoolgrades;
drop table if exists school ;
drop table if exists teacher ;
drop table if exists gpa;
drop table if exists non_attendance ;



CREATE or replace TABLE student(
student_id int(10) NOT NULL,
gpa_id int(10), 
first_name char(15),
last_name char(15),
dob date,
address varchar(100),
contact int(11),
email varchar(30),
gender varchar(20),
program_level int(10),
enrollment_date date,
age int(3),
primary key (student_id)
);

desc student; 

CREATE or replace TABLE enrollment(
enrollment_id int(10) NOT NULL,
student_id int(11),
course_id int(11),
enrollment_date date,
acaedmic_year date,
enrollment_type varchar(15),
primary key (enrollment_id)
);


CREATE or replace TABLE course(
course_id int(10) primary key NOT NULL,
grade_id int(11),
course_code int(11),
course_name varchar(15)
);

CREATE or REPLACE TABLE class_offering(
classoffering_id int(10) primary key NOT NULL,
grade_id int(11),
course_id int(11),
teacher_id int(11),
class_offering_note varchar(100)
);

CREATE or REPLACE  TABLE grade_level(
grade_id int(11)primary key NOT NULL,
grade_name varchar(15)
);

CREATE TABLE schoolgrades(
school_grade_id int(10) primary key not null,
school_id int(10),
grade_id int(10),
grade_history varchar(100)
);

CREATE TABLE school(
school_id int(10) primary key not null,
school_name varchar(100),
school_address varchar(100),
principal_name varchar(25),
school_contact int(11),
school_website varchar(100)
);

CREATE TABLE teacher(
teacher_id int(10) primary key not null,
first_name varchar(15),
last_name varchar(15),
teacher_email varchar(50),
subject_taught varchar(25),
experience_years int(10)
);

CREATE TABLE gpa(
gpa_id int(10) primary key not null,
grade_decsc varchar(100)
);

CREATE TABLE non_attendance(
no_attendance_id int(10),
student_id int(10),
no_attendance_date date,
status varchar(20)
);


ALTER table non_attendance
add constraint fk_student_id 
foreign key (student_id ) references student(student_id);

ALTER table student 
add constraint fk_student_gpa_id 
foreign key (gpa_id ) references gpa(gpa_id);

ALTER table enrollment  
add constraint fk_enrollment_student_id 
foreign key (student_id ) references student(student_id);

ALTER table enrollment  
add constraint fk_enrol_course_id 
foreign key (course_id ) references course(course_id);


ALTER table class_offering  
add constraint fk_co_course_id 
foreign key (course_id ) references course(course_id);

ALTER table class_offering  
add constraint fk_t_id 
foreign key (teacher_id ) references teacher(teacher_id);

ALTER table class_offering  
add constraint fk_gr_grade_id 
foreign key (grade_id ) references grade_level(grade_id);

ALTER table schoolgrades  
add constraint fk_sg_grade_id 
foreign key (grade_id ) references grade_level(grade_id);

ALTER table schoolgrades  
add constraint fk_sc_school_id 
foreign key (school_id) references school(school_id);

-- Inserting the data into students table
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age)  VALUES (1, 1, 'Ann', 'Davis', '2003-05-02', '63542 Jennifer Parkway Suite 431 Stephaniefort', 779076277, 'ubrewer@yahoo.com', 'Other', 2, '2023-09-12', 28);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (2, 4, 'Dana', 'Petersen', '1996-11-08', '691 Gina Circles
Taylorport, NC 30831', 60847692, 'thomas41@hernandez.org', 'Other', 3, '2019-05-02', 19);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (3, 1, 'Yolanda', 'Lee', '1996-05-19', '03620 Taylor Loaf
Catherineshire, DC 88950', 447657388, 'kevin09@yahoo.com', 'Other', 1, '2022-10-11', 27);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (4, 3, 'Annette', 'Jensen', '2003-02-18', '30616 Amanda Groves
South Mariaburgh, DC 99933', 478063584, 'bellchristopher@gmail.com', 'Other', 4, '2020-04-05', 30);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (5, 4, 'Robert', 'Bradley', '2003-06-04', '10496 Clark Parkway Suite 667
East James, NM 71484', 468910747, 'obrienjames@miller.com', 'Other', 4, '2021-08-26', 24);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (6, 2, 'Margaret', 'Harrington', '1992-12-25', '3549 Janice Crossroad Suite 164
South Oscar, MI 26485', 470530837, 'walkercarrie@owen.com', 'Male', 1, '2021-01-15', 18);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (7, 4, 'Alec', 'Clark', '1998-01-24', '132 Jesse Dale
Katelynborough, AL 59773', 683016737, 'millsjohn@gmail.com', 'Other', 2, '2020-07-03', 21);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (8, 5, 'Jack', 'Woods', '2001-02-25', '4075 Katie Ferry Suite 232
Port Richardton, ND 88201', 957961228, 'robinsonnicholas@yahoo.com', 'Female', 4, '2022-07-04', 29);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (9, 5, 'Jordan', 'Johnson', '1995-11-06', '2425 Kelley Meadows Apt. 041
Fletcherborough, WV 05365', 248459514, 'acallahan@yahoo.com', 'Male', 3, '2023-08-23', 20);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (10, 3, 'Leonard', 'Jones', '1996-09-17', '59756 Alvarez Fort
Franklinland, FL 96466', 293792657, 'katiesuarez@vance.com', 'Male', 1, '2022-07-09', 18);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (11, 4, 'Krystal', 'Norris', '1999-09-15', '2170 Wayne Walk
Hunterstad, NJ 02090', 173966165, 'janice60@massey-riddle.info', 'Female', 4, '2020-11-28', 21);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (12, 2, 'Gilbert', 'Mcdonald', '1998-10-12', 'Unit 7193 Box 7234
DPO AP 55821', 819290786, 'eric37@yahoo.com', 'Male', 2, '2019-02-14', 25);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (13, 1, 'Sharon', 'Ruiz', '1995-10-11', '307 James Glens
Levineshire, VA 50233', 446722873, 'hmcknight@villarreal-jones.net', 'Male', 2, '2021-07-08', 29);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (14, 2, 'Laura', 'Collier', '1998-03-02', '1170 Middleton Locks
Stephaniehaven, AR 82293', 324865023, 'merediththomp@rodriguez.info', 'Male', 1, '2019-12-02', 29);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (15, 5, 'Manuel', 'Proctor', '2002-10-01', '734 Garcia Parkways Suite 161
Zoeburgh, GA 68803', 105143737, 'wesleymorgan@johnston.com', 'Other', 1, '2021-01-08', 25);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (16, 1, 'Karla', 'Shepherd', '2005-10-24', '847 White Gateway Apt. 810
West Brittany, AZ 56108', 336010899, 'tinatorres@hotmail.com', 'Female', 3, '2020-05-10', 27);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (17, 2, 'Anthony', 'Anthony', '1999-09-15', '56155 Emily Row Suite 567
South Michael, NC 71823', 719908430, 'johnsondouglas@wood-flynn.com', 'Male', 3, '2021-04-19', 23);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (18, 4, 'Fernando', 'Huffman', '1996-09-03', '2338 Berry Views
New Peter, KS 80166', 826663470, 'matthew52@yahoo.com', 'Female', 2, '2022-12-19', 18);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (19, 1, 'Nicole', 'Wright', '2000-02-25', '326 Anderson Gateway Apt. 994
Williamfurt, SC 59910', 416369351, 'xchavez@powers-ford.org', 'Male', 2, '2020-04-04', 22);
INSERT INTO student (student_id, gpa_id, first_name, last_name, dob, address, contact, email, gender, program_level, enrollment_date, age) VALUES (20, 5, 'Samantha', 'Green', '2000-11-27', '5252 Julian Ranch
Esparzabury, OR 02356', 415061056, 'elliottchristine@stein.com', 'Other', 2, '2020-05-04', 25);

SELECT * from student s ;

-- gpa table
INSERT INTO gpa  (gpa_id, grade_decsc) VALUES (1.0, 2.0);
INSERT INTO gpa (gpa_id, grade_decsc) VALUES (2.0, 2.5);
INSERT INTO gpa  (gpa_id, grade_decsc) VALUES (3.0, 3.0);
INSERT INTO gpa (gpa_id, grade_decsc) VALUES (4.0, 3.5);
INSERT INTO gpa (gpa_id, grade_decsc) VALUES (5.0, 4.0);

SELECT * from gpa g ;

-- non attendance table
INSERT INTO non_attendance  (no_attendance_id, student_id, no_attendance_date, status) VALUES (1, 16, '2021-07-08', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (2, 12, '2022-04-21', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (3, 10, '2021-12-04', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (4, 10, '2022-03-26', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (5, 14, '2021-01-07', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (6, 14, '2021-04-28', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (7, 19, '2020-12-25', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (8, 12, '2022-07-26', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (9, 2, '2021-04-08', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (10, 9, '2023-02-05', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (11, 17, '2021-11-07', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (12, 12, '2023-01-23', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (13, 7, '2021-04-22', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (14, 15, '2022-11-08', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (15, 17, '2023-10-20', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (16, 15, '2021-02-22', 'Unexcused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (17, 13, '2022-08-29', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (18, 14, '2022-06-19', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (19, 6, '2021-01-01', 'Excused');
INSERT INTO non_attendance (no_attendance_id, student_id, no_attendance_date, status) VALUES (20, 10, '2021-10-18', 'Unexcused');


SELECT * from non_attendance na  ;



-- insert for teacher
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (1, 'Emily', 'Pace', 'justinwatts@wolfe-glenn.com', 'Science', 18);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (2, 'Gregory', 'Miller', 'irangel@green-jones.com', 'Science', 14);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (3, 'Jo', 'Singh', 'sarah02@gmail.com', 'English', 4);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (4, 'Emily', 'Le', 'wcobb@yahoo.com', 'Science', 14);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (5, 'Jeremy', 'Smith', 'debrafowler@shepherd-jackson.com', 'History', 11);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (6, 'Brittney', 'Mcgee', 'johnwilcox@gmail.com', 'English', 1);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (7, 'Miguel', 'Hernandez', 'jamieschmitt@hotmail.com', 'Mathematics', 18);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (8, 'Sandra', 'Johnson', 'danielcastro@wright.com', 'Mathematics', 8);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (9, 'Sean', 'Martinez', 'qcarey@stewart.info', 'Art', 2);
INSERT INTO teacher (teacher_id, first_name, last_name, teacher_email, subject_taught, experience_years) VALUES (10, 'Jonathon', 'Douglas', 'joanne93@crosby.com', 'Mathematics', 5);

SELECT * FROM teacher t ;


-- insert for school
INSERT INTO school (school_id, school_name, school_address, principal_name, school_contact, school_website) VALUES (1, 'Middleton-Perkins School', '2618 Price Mission
Lake Stacy, AK 20340', 'Erica Allen', 674587408, 'yang.com');
INSERT INTO school (school_id, school_name, school_address, principal_name, school_contact, school_website) VALUES (2, 'Gomez, Lee and Larson School', '2499 Cabrera Burg
Lake Stevenstad, CA 79134', 'Thomas Lowery', 527709150, 'johnson.com');
INSERT INTO school (school_id, school_name, school_address, principal_name, school_contact, school_website) VALUES (3, 'Key-Santiago School', '727 Alexander Isle Apt. 630
Ballardview, IA 22417', 'Gregory Lam', 783390389, 'gonzalez.com');
INSERT INTO school (school_id, school_name, school_address, principal_name, school_contact, school_website) VALUES (4, 'Young Ltd School', '187 Amy Manor
Stephensshire, MO 69602', 'John Leon', 106208368, 'fisher.net');
INSERT INTO school (school_id, school_name, school_address, principal_name, school_contact, school_website) VALUES (5, 'Cain and Sons School', '89411 Michael Corners Apt. 366
South Heatherhaven, FL 86476', 'Anthony Webster', 824608077, 'lozano-davis.com');

SELECT * FROM school s ;


-- school grades insert
INSERT INTO schoolgrades  (school_grade_id, school_id, grade_id, grade_history) VALUES (1, 5, 5, 'Door baby past turn present century.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (2, 1, 4, 'Often news education bad with.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (3, 1, 1, 'Order protect figure.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (4, 4, 5, 'Pull but help president door career very.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (5, 5, 3, 'Evidence computer choice oil point.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (6, 5, 2, 'Debate car build recent.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (7, 4, 2, 'Claim than design power spend large hope.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (8, 4, 4, 'Know would opportunity than.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (9, 2, 3, 'Special choice series effect toward.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (10, 4, 1, 'Candidate Mr idea table talk better play general.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (11, 4, 4, 'Crime computer budget.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (12, 4, 2, 'One discussion among such finally.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (13, 4, 1, 'Simple how floor.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (14, 1, 1, 'Executive activity quality put hour.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (15, 1, 2, 'Why religious discover center until.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (16, 5, 5, 'Kind system fear government player.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (17, 1, 5, 'Water difficult party class same medical body.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (18, 5, 5, 'Public whether pay modern represent.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (19, 5, 4, 'Door maybe window federal source article increase.');
INSERT INTO schoolgrades (school_grade_id, school_id, grade_id, grade_history) VALUES (20, 2, 1, 'Media standard season discuss also hotel every.');

SELECT * from schoolgrades s ;

-- grade level
INSERT INTO grade_level(grade_id, grade_name) VALUES (1, 'Grade 1');
INSERT INTO grade_level(grade_id, grade_name) VALUES (2, 'Grade 2');
INSERT INTO grade_level(grade_id, grade_name) VALUES (3, 'Grade 3');
INSERT INTO grade_level(grade_id, grade_name) VALUES (4, 'Grade 4');
INSERT INTO grade_level(grade_id, grade_name) VALUES (5, 'Grade 5');

SELECT * FROM grade_level gl ;


-- class offering
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (1, 2, 4, 1, 'Write guess according about town.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (2, 2, 8, 3, 'His fear community authority pretty.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (3, 1, 14, 4, 'Thought spend issue left.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (4, 3, 9, 2, 'Draw his speak evening reason boy green.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (5, 4, 15, 9, 'Suddenly coach hospital claim turn rule.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (6, 1, 10, 7, 'Camera energy carry.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (7, 5, 13, 4, 'Tax wife news involve together statement beyond.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (8, 1, 5, 7, 'Despite could reality send seat usually once.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (9, 2, 12, 4, 'Like opportunity if recently.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (10, 5, 8, 4, 'Technology suffer real according board measure.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (11, 1, 2, 10, 'This message two day.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (12, 3, 4, 6, 'Yet professional lot image challenge manage model key.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (13, 3, 19, 9, 'Group fight stage quality.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (14, 5, 14, 4, 'Amount attack parent nearly course could.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (15, 4, 6, 6, 'Movement girl artist change doctor certainly perform.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (16, 3, 18, 5, 'Nothing to gas hot reduce fact less green.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (17, 3, 13, 6, 'Number back three very condition minute.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (18, 3, 15, 5, 'Reason read same our high economy into.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (19, 1, 20, 7, 'Investment environment day pay wish four.');
INSERT INTO class_offering (classoffering_id, grade_id, course_id, teacher_id, class_offering_note) VALUES (20, 3, 6, 4, 'Economic happy physical here as task foreign.');

SELECT * from class_offering co ;


-- course id
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (1, 3, 9691, 'English');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (2, 3, 8384, 'Math');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (3, 3, 5270, 'Art');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (4, 1, 7207, 'Science');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (5, 2, 7064, 'History');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (6, 3, 3153, 'Music');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (7, 1, 1460, 'Geography');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (8, 5, 9563, 'PE');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (9, 4, 8754, 'Drama');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (10, 2, 1574, 'Biology');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (11, 1, 5995, 'Chemistry');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (12, 1, 1896, 'Physics');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (13, 1, 2144, 'IT');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (14, 2, 7574, 'FL');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (15, 3, 9705, 'Social Studies');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (16, 1, 8552, 'Technology');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (17, 5, 7701, 'Philosophy');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (18, 4, 8147, 'Literature');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (19, 1, 9604, 'Algebra');
INSERT INTO course (course_id, grade_id, course_code, course_name) VALUES (20, 4, 9819, 'Geometry');

SELECT * FROM course c ;


-- enrollment
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (1, 5, 1, '2021-12-14', '2021-05-30', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (2, 16, 6, '2023-05-24', '2021-11-03', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (3, 13, 10, '2023-10-16', '2019-02-02', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (4, 20, 7, '2019-01-11', '2019-09-19', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (5, 18, 7, '2019-02-17', '2022-02-22', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (6, 5, 10, '2023-10-09', '2020-05-10', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (7, 17, 3, '2020-05-20', '2021-09-02', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (8, 2, 10, '2021-09-27', '2020-02-03', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (9, 17, 7, '2021-10-23', '2021-01-26', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (10, 3, 3, '2022-05-31', '2021-06-21', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (11, 20, 5, '2022-05-11', '2020-09-14', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (12, 6, 10, '2020-05-31', '2022-11-11', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (13, 5, 8, '2023-10-16', '2023-06-02', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (14, 5, 4, '2022-05-16', '2021-12-13', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (15, 4, 10, '2023-08-23', '2019-12-14', 'Full-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (16, 5, 2, '2023-01-16', '2021-09-03', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (17, 20, 8, '2022-08-06', '2023-10-24', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (18, 14, 1, '2019-05-20', '2023-10-04', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (19, 15, 10, '2020-09-29', '2020-07-10', 'Part-time');
INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date, acaedmic_year, enrollment_type) VALUES (20, 10, 7, '2019-10-12', '2022-08-06', 'Full-time');

SELECT * from enrollment e ;




-- Report 1
-- Student Enrollment by Course and Grade Level
SELECT UPPER(c.course_name) as CourseName, gl.grade_name, COUNT(e.student_id) AS TotalEnrolled
FROM course c
JOIN enrollment e ON c.course_id = e.course_id
JOIN grade_level gl ON c.grade_id = gl.grade_id
GROUP BY c.course_name, gl.grade_name;




-- Report 2
-- Teacher Workload Analysis
SELECT CONCAT(t.first_name, ' ', t.last_name) AS TeacherName,COUNT(co.classoffering_id) AS TotalClasses,
    SUM((SELECT COUNT(e.student_id) FROM enrollment e WHERE e.course_id = co.course_id)) AS TotalStudents,
    DATE_FORMAT(MAX(e.enrollment_date), '%Y-%m-%d') as LatestEnrollmentDate
FROM teacher t
JOIN class_offering co ON t.teacher_id = co.teacher_id
LEFT JOIN enrollment e ON co.course_id = e.course_id
GROUP BY TeacherName;




-- Report 3
-- Attendance Analysis
SELECT s.first_name, s.last_name, COUNT(na.student_id) AS TotalAbsences,
    DATE_FORMAT(MAX(na.no_attendance_date), '%Y-%m-%d') as LastAbsenceDate,
    CASE 
        WHEN COUNT(na.student_id) > 10 THEN 'High Absence'
        WHEN COUNT(na.student_id) BETWEEN 5 AND 10 THEN 'Moderate Absence'
        ELSE 'Low Absence'
    END AS AbsenceLevel
FROM student s
LEFT JOIN non_attendance na ON s.student_id = na.student_id
GROUP BY s.first_name, s.last_name;




-- Report 4
-- Creating a view for average GPA per school
CREATE VIEW SchoolAverageGPA AS
SELECT sch.school_id, AVG(CAST(g.grade_decsc AS DECIMAL(10,2))) AS AverageGPA
FROM student stu
JOIN gpa g ON stu.gpa_id = g.gpa_id
JOIN schoolgrades sg ON stu.program_level = sg.grade_id
JOIN school sch ON sg.school_id = sch.school_id
GROUP BY sch.school_id;

DROP VIEW SchoolAverageGPA;

-- Report query with subquery
-- School Performance Overview
SELECT sch.school_name, sch.school_address,
    (SELECT ROUND(AverageGPA,2) FROM SchoolAverageGPA WHERE SchoolAverageGPA.school_id = sch.school_id) AS AvgGPA,
    (SELECT COUNT(*) FROM non_attendance na JOIN student stu ON na.student_id = stu.student_id WHERE stu.program_level = sg.grade_id) AS TotalAbsences
FROM school sch
JOIN schoolgrades sg ON sch.school_id = sg.school_id
ORDER BY AvgGPA DESC;


-- Report 5
--  Course and Grade Level Analysis with Set Operators
SELECT CONCAT(course_name, ' - Offered in Grade ', grade_name) AS CourseInfo
FROM course
JOIN grade_level ON course.grade_id = grade_level.grade_id
UNION ALL
SELECT CONCAT(course_name, ' - Not Offered in Grade ', grade_name) AS CourseInfo
FROM course
CROSS JOIN grade_level
WHERE course.grade_id != grade_level.grade_id;
