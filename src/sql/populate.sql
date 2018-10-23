INSERT INTO `question` (`id`, `date_time`, `details`, `title`, `votes`, `questioner_id`) VALUES
(1, '2018-10-03 00:00:00', 'This is the detail', 'This is a title', 0, 1);

INSERT INTO `user` (`id`, `password`, `username`, `profile_id`, `role_id`) VALUES
(1, '12345', 'binhtv', NULL, NULL);

INSERT INTO `answer` (`id`, `accepted`, `date_time`, `details`) VALUES
(1, b'0', '2018-10-05 00:00:00', 'This is a answer'),
(2, b'0', '2018-10-10 00:00:00', 'Answer 2');