insert into users 
(name,email,"password",age,gender)
values
('Rafael Perilla','rafael_perilla@hotmail.com','Rafa123',29,'M'),
('Alan Gomez','alan@gmail.com','Alan321',26,'M');


insert into teachers 
(name)
values
('Benjamin H'),
('Sahid L');

insert into levels  
(name)
values
('Beginner'),
('Middle'),
('Advanced');

insert into courses 
(user_id,title,level_id,description,teacher_id)
values
(1,'React Js',2,'Bienvenidos al curso de react disfruta del proceso',2),
(2,'Node Js',3,'Bienvenidos al curso de node disfruta del proceso',1);

insert into course_videos 
(course_id,title,url)
values
(1,'Como realizar una peticion fetch','https://www.youtube.com/watch?v=36UP-i_qtp4'),
(2,'Validación de datos en NODE EXPRESS / Validación de datos en API','https://www.youtube.com/watch?v=VMRgFfmv6j0');

insert into categories 
(name,id_course)
values
('Programacion Frontend',1),
('Programacion Backend',2);