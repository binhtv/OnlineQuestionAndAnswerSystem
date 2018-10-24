


INSERT INTO `Topic` (`id`, `name`) VALUES (NULL, 'Technology');

INSERT INTO `Topic` VALUES (NULL, 'Social');

INSERT INTO `Topic` VALUES (NULL, 'Medical');

-- PERMISSION
INSERT INTO Permission VALUES (NULL, "Add Question");

-- ROLE
INSERT INTO Role VALUES (NULL, "ROLE_USER", 1);

INSERT INTO Role VALUES (NULL, "ROLE_ADMIN", 2);

-- ROLE PERMISSIOn

INSERT INTO role_permission VALUES (1,1);

-- INSERT INTO role_permission
-- VALUES (2,1);

-- PROFILE
INSERT INTO Profile VALUES (1, "2018/08/08", "asd@gmail.com", "Binh", "Tran", "Male");
INSERT INTO Profile VALUES (2, "2018/08/08", "admin@gmail.com", "Administrator", "def", "Male");

-- USER
-- binhtv/123
-- admin/123
INSERT INTO User VALUES (NULL, "$2y$12$jd4NLDpcsN4XsTNmfOaxieWhzuWby05J6T6zOTbOXHY2kp3ibOuLG", "binhtv", 1);
INSERT INTO User VALUES (NULL, "$2y$12$jd4NLDpcsN4XsTNmfOaxieWhzuWby05J6T6zOTbOXHY2kp3ibOuLG", "admin", 1);

-- QUESTION
INSERT INTO Question VALUES (NULL, CURTIME(), "TEST", "TEST CONTENT", 0 , 1);
INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'This is the detail', 'This is a title', 0, 1);

-- QUESTION - TOPIC
INSERT INTO question_topic VALUES (1,1);
INSERT INTO question_topic VALUES (1,2);
INSERT INTO question_topic VALUES (2,3);

-- ANSWER
INSERT INTO answer VALUES (NULL, false, '2018-10-03 00:00:00' , "This is sample answer");

-- QUESTION - ANSWER
INSERT INTO question_answer  VALUES (1,1);


