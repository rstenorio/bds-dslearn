INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Black', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_OPERATOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course(name,img_uri, img_gray_uri) VALUES ('BootCamp HTML','https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg','https://www.zooplus.it/magazine/wp-content/uploads/2018/12/cane-corso-welpe-1024x768.jpg');

INSERT INTO tb_offer(edition, start_Moment, end_Moment,course_id) VALUES('1.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment,course_id) VALUES('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00', TIMESTAMP WITH TIME ZONE '2021-01-20T03:00:00Z',1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('Trilha HTML','Trilha principal do curso',1,'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('FORUM','Tire suas Duvidas',2,'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('Lives','Lives Exclusivas',3,'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 0, 1);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Cap. 01', 'Start Cap.', 1, 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 1, null);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Cap. 02', 'Continue Cap.', 2, 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 1, 1);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Cap. 03', 'End Cap.', 3, 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18123713/Cane-Corso-AKC-121516-296.jpg', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES(1, 1, TIMESTAMP WITH TIME ZONE '2020-12-20T013:00:00', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES(2, 1, TIMESTAMP WITH TIME ZONE '2020-12-20T013:00:00', null, true, false);
