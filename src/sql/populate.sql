


INSERT INTO `Topic` (`id`, `name`) VALUES (NULL, 'Technology');

INSERT INTO `Topic` VALUES (NULL, 'Social');

INSERT INTO `Topic` VALUES (NULL, 'Medical');

-- PERMISSION
INSERT INTO Permission VALUES (NULL, "Add Question");

-- ROLE
INSERT INTO Role VALUES (NULL, "User");

INSERT INTO Role VALUES (NULL, "Admin");

-- ROLE PERMISSIOn

INSERT INTO role_permission VALUES (1,1);

-- INSERT INTO role_permission
-- VALUES (2,1);

-- PROFILE
INSERT INTO Profile VALUES (1, "2018/08/08", "asd@gmail.com", "abc", "def");

-- USER
INSERT INTO User VALUES (NULL, "123", "abc", 1, 1);

-- QUESTION
INSERT INTO Question VALUES (NULL, CURTIME(), "TEST", "TEST CONTENT", 0 , 1);
INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES (NULL, '2018-10-03 00:00:00', 'This is the detail', 'This is a title', 0, 1);

-- QUESTION - TOPIC
INSERT INTO question_topic VALUES (1,1);
INSERT INTO question_topic VALUES (1,2);
INSERT INTO question_topic VALUES (2,3);

-- ANSWER
INSERT INTO answer VALUES (NULL, false, '2018-10-03 00:00:00' , "sfsdf");

-- QUESTION - ANSWER
INSERT INTO question_answer  VALUES (1,1);


