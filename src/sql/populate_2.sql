-- TOPICS

INSERT INTO Topic
VALUES (NULL, "Technology");

INSERT INTO Topic
VALUES (NULL, "Social");

INSERT INTO Topic
VALUES (NULL, "Medical");

-- PERMISSION
INSERT INTO Permission 
VALUES (NULL, "Add Question");

-- ROLE
INSERT INTO Role
VALUES (NULL, "User");

INSERT INTO Role
VALUES (NULL, "Admin");

-- ROLE PERMISSIOn

INSERT INTO role_permission
VALUES (1,1);

-- INSERT INTO role_permission
-- VALUES (2,1);

-- PROFILE
INSERT INTO Profile 
VALUES (1, "2018/08/08", "asd@gmail.com", "abc", "def");

-- USER
INSERT INTO User 
VALUES (NULL, "123", "abc", 1, 1);

-- QUESTION
INSERT INTO Question
VALUES (NULL, CURTIME(), "TEST", "TEST CONTENT", 0 , 1);