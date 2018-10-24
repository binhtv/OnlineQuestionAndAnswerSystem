
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `topic` (`id`, `name`) VALUES (NULL, 'Technology');

INSERT INTO `topic` VALUES (NULL, 'Social');

INSERT INTO `topic` VALUES (NULL, 'Medical');

-- PERMISSION
INSERT INTO permission VALUES (NULL, "Add Question");

-- ROLE
INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 1, "ROLE_USER");

INSERT INTO role(`id`, `userid`, `role`) VALUES (NULL, 2, "ROLE_ADMIN");

-- ROLE PERMISSIOn

--INSERT INTO role_permission VALUES (1,1);

-- INSERT INTO role_permission
-- VALUES (2,1);

-- PROFILE
INSERT INTO profile(`id`, `birth_day`, `email`, `first_name`, `last_name`, `gender`, `userid`) VALUES (1, "2018/08/08", "asd@gmail.com", "Binh", "Tran", "Male", 1);
INSERT INTO profile(`id`, `birth_day`, `email`, `first_name`, `last_name`, `gender`, `userid`) VALUES (2, "2018/08/08", "admin@gmail.com", "Administrator", "def", "Male", 2);

-- USER
-- binhtv/123
-- admin/123
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe", "binhtv", TRUE);
INSERT INTO user(`id`, `password`, `username`, `enabled`) VALUES (NULL, "$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe", "admin", TRUE);

-- QUESTION
INSERT INTO question VALUES (NULL, CURTIME(), "TEST", "TEST CONTENT", 0 , 1);
INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'This is the detail', 'This is a title', 0, 1);

-- QUESTION - TOPIC
INSERT INTO question_topic VALUES (1,1);
INSERT INTO question_topic VALUES (1,2);
INSERT INTO question_topic VALUES (2,3);

-- ANSWER
INSERT INTO answer VALUES (NULL, false, '2018-10-03 00:00:00' , "This is sample answer");
-- QUESTION - ANSWER
-- INSERT INTO question_answer  VALUES (1,1);


