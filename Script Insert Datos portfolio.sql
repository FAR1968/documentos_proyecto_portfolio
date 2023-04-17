-- -----------------------------------------------------
-- INSERT Datos en BD
-- -----------------------------------------------------

-- -----------------------------------------------------
-- 1-Table `person`
-- -----------------------------------------------------
INSERT INTO person(name,surname,address,birth_date,age,phone,email,lit_about,about) 
           VALUES('John','Doe','Araoz 14500','18/06/90','40','157732890','john@gmail.com','','');

-- -----------------------------------------------------
-- 2-Table `education`
-- -----------------------------------------------------
INSERT INTO education(wheres,degree,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person) 
        VALUES('Universidad del Norte','Ing en Sistemas','1','18/06/2013','18/06/2013','url','url','1','1');
INSERT INTO education(wheres,degree,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person) 
        VALUES('Educacion IT','Desarrollo Web','1','18/06/2013','18/06/2018','url','url','1','1');
INSERT INTO education(wheres,degree,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person) 
        VALUES('Udemy','Desarrollo Angular','1','18/06/2018','18/06/2019','url','url','1','1');


-- -----------------------------------------------------
-- 3-Table `user`
-- -----------------------------------------------------
INSERT INTO user(username,password) VALUES('jhond','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f');



-- -----------------------------------------------------
-- 4-Table `image`
-- -----------------------------------------------------
INSERT INTO image(header,about,person_id_person) VALUES('Mi Foto','Desarrollador Web Fullstack','1');



-- -----------------------------------------------------
-- 5-Table `skill`
-- -----------------------------------------------------

INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('Angular','70','url/angular.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('Javascript','80','url/js.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('Typescript','50','url/typ.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('github','70','url/angular.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('HTML','70','url/angular.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('CSS','70','url/angular.png','1');
INSERT INTO skill(name,percentage,icon,person_id_person) VALUES('Bootstrap','70','url/angular.png','1');


-- -----------------------------------------------------
-- 6-Table `project`
-- -----------------------------------------------------

INSERT INTO project(name,description,img_url,link,enabled_link,person_id_person) VALUES('Proyecto SRET','Sistema de Reserva en Torres','url/sret.png','url','1','1');
INSERT INTO project(name,description,img_url,link,enabled_link,person_id_person) VALUES('Proyecto Mobile GPS','Sistema mobile CABA','url/mobile.png','url','1','1');
INSERT INTO project(name,description,img_url,link,enabled_link,person_id_person) VALUES('Proyecto Gestion SGB','Sistema de Gestion','url/sgb.png','url','1','1');
INSERT INTO project(name,description,img_url,link,enabled_link,person_id_person) VALUES('Proyecto ROT','Sistema Registro Transporte','url/srot.png','url','1','1');

-- -----------------------------------------------------
-- 7-Table `job_type`
-- -----------------------------------------------------
INSERT INTO job_type(name,id_job_type) VALUES('Desarrollo Fullstack','1');
INSERT INTO job_type(name,id_job_type) VALUES('Desarrollo Frontend','2');
INSERT INTO job_type(name,id_job_type) VALUES('Desarrollo Backend','3');

-- -----------------------------------------------------
-- 8-Table `experience`
-- -----------------------------------------------------
INSERT INTO experience(company,job,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person,job_type_id_job_type) 
         VALUES('BGH industrias','Desarrollador','1','10/01/2020','10/01/2021','url','url','1','1','1');
INSERT INTO experience(company,job,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person,job_type_id_job_type) 
         VALUES('IBM','Desarrollador','1','10/01/2020','10/01/2021','url','url','1','1','1');
INSERT INTO experience(company,job,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person,job_type_id_job_type) 
         VALUES('Vangent SRL','Desarrollador','1','10/01/2020','10/01/2021','url','url','1','1','1');
INSERT INTO experience(company,job,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person,job_type_id_job_type) 
         VALUES('ITH informatica','Desarrollador','1','10/01/2020','10/01/2021','url','url','1','1','1');
INSERT INTO experience(company,job,is_actual,start_date,end_date,img_url,link,enabled_link,person_id_person,job_type_id_job_type) 
         VALUES('Buenos Aires Design IT','Desarrollador','1','10/01/2020','10/01/2021','url','url','1','1','1');

-- -----------------------------------------------------
-- 9-Table `social_media`
-- -----------------------------------------------------
INSERT INTO social_media(id_social_media,facebook,twitter,instagram,github,linkedin,person_id_person,cv) 
     VALUES('1','url_facebook','url_twitter','url_instagram','url_github','url_linkedin','1','url_cv');

