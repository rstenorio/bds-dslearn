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


INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 1', 1, 1);
INSERT INTO tb_content(id, text_Content,videoURI) VALUES(1, 'Material de apoio','https://www.youtube.com/watch?v=ZswdxS2p8lE');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 2', 2, 1);
INSERT INTO tb_content(id, text_Content,videoURI) VALUES(2, '','https://www.youtube.com/watch?v=ZswdxS2p8lE');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 3', 3, 1);
INSERT INTO tb_content(id, text_Content,videoURI) VALUES(3, '','https://www.youtube.com/watch?v=ZswdxS2p8lE');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Tarefa capitulo 1', 4, 1);
INSERT INTO tb_task(id, description, question_Count, approval_Count, weight, due_Date) VALUES(4,'fazer um job cool', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-08-15T013:00:00');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', false, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_delivery (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
