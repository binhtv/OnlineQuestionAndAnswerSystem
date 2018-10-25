
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `topic` (`id`, `name`) VALUES (NULL, 'Technology');

INSERT INTO `topic` VALUES (NULL, 'Social');

INSERT INTO `topic` VALUES (NULL, 'Medical');

INSERT INTO `topic` VALUES (NULL, 'Biology');

INSERT INTO `topic` VALUES (NULL, 'Memes');


-- PERMISSION
INSERT INTO permission VALUES (NULL, "Add Question");

-- ROLE
INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 1, "ROLE_USER");

INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 2, "ROLE_ADMIN");

INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 3, "ROLE_USER");

INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 4, "ROLE_USER");

INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 5, "ROLE_USER");


-- ROLE PERMISSIOn

--INSERT INTO role_permission VALUES (1,1);

-- INSERT INTO role_permission
-- VALUES (2,1);

-- PROFILE
INSERT INTO profile(`id`, `birth_day`, `email`, `first_name`, `last_name`, `gender`, `userid`) VALUES (1, "2018/08/08", "asd@gmail.com", "Binh", "Tran", "Male", 1);
INSERT INTO profile(`id`, `birth_day`, `email`, `first_name`, `last_name`, `gender`, `userid`) VALUES (2, "2018/08/08", "admin@gmail.com", "Administrator", "def", "Male", 2);

-- USER
-- binhtv/123
-- admin/admin
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$oQRoId9L2PxcwryIT8GpS.Wy/ppj9YU.Oq9.nJdhkvWWGHPZPBzB6", "user", TRUE);
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe", "admin", TRUE);
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$oQRoId9L2PxcwryIT8GpS.Wy/ppj9YU.Oq9.nJdhkvWWGHPZPBzB6", "daniel", TRUE);
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$oQRoId9L2PxcwryIT8GpS.Wy/ppj9YU.Oq9.nJdhkvWWGHPZPBzB6", "dawit", TRUE);
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$oQRoId9L2PxcwryIT8GpS.Wy/ppj9YU.Oq9.nJdhkvWWGHPZPBzB6", "benz", TRUE);


-- QUESTION
INSERT INTO question VALUES (NULL, CURTIME(), "Why is a carrot is more orange than an orange?", "Why though, whyyyyy???", 0 , 1);
INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Can you cry under water?', 0, 1);

INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What if Batman get bitten by a vampire', 20, 2);

INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'If a fork were made of gold would it still be considered silverware?', 2, 3);

INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'If you don\'t pay your exorcist, do you get repossessed?', 10, 4);

INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'If man evolved from monkeys and apes, why do we still have monkeys and apes?', 20, 2);

INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Why is greenland white and cover with ice', 4, 2);


-- QUESTION - TOPIC
INSERT INTO question_topic VALUES (1,1);
INSERT INTO question_topic VALUES (1,2);
INSERT INTO question_topic VALUES (2,3);
INSERT INTO question_topic VALUES (3,1);
INSERT INTO question_topic VALUES (4,5);
INSERT INTO question_topic VALUES (5,3);
INSERT INTO question_topic VALUES (6,4);
INSERT INTO question_topic VALUES (7,3);

-- ANSWER
-- INSERT INTO answer VALUES (NULL, false, '2018-10-03 00:00:00' , "This is sample answer");
-- QUESTION - ANSWER
-- INSERT INTO question_answer  VALUES (1,1);


