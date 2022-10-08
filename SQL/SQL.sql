/* Users
id
email
name
password
*/

/* Answers 
id
answer
*/


/* Questions 
id
question
answer a
answer b
answer c
answer d
correct answer
*/

/* Score history 
id
user
date
score
*/

INSERT INTO application_user(password, username, first_name, last_name, email, is_superuser, is_staff, is_active, date_joined)
VALUES('fake', 'john1988', 'John', 'Doe', 'john.doe@one.com', FALSE, FALSE, FALSE, CURRENT_TIMESTAMP);

INSERT INTO application_user(password, username, first_name, last_name, email, is_superuser, is_staff, is_active, date_joined)
VALUES('fake', 'tteddy', 'Teddy', 'Bear', 'teddybear@gmail.com', FALSE, FALSE, FALSE, '2022-01-05');

INSERT INTO application_user(password, username, first_name, last_name, email, is_superuser, is_staff, is_active, date_joined)
VALUES('fake', 'proteline', 'Coconut', 'Superfood', 'energy_bar@gmail.com', FALSE, FALSE, FALSE, '2022-02-08 23:20');

INSERT INTO application_user(password, username, first_name, last_name, email, is_superuser, is_staff, is_active, date_joined)
VALUES('fake', 'themaster', 'Vita', 'Solaris', 'vitamind@yahoo.com', FALSE, FALSE, FALSE, '2022-04-15 06:22');

INSERT INTO application_leaderboard(score, date_created, user_id)
SELECT
  10,
  '2022-01-02',
  id
FROM
  application_user
WHERE
  (username = 'john1988');

INSERT INTO application_leaderboard(score, date_created, user_id)
SELECT
  5000,
  '2022-02-23',
  id
FROM
  application_user
WHERE
  (username = 'tteddy');

INSERT INTO application_leaderboard(score, date_created, user_id)
SELECT
  5000,
  '2022-05-11',
  id
FROM
  application_user
WHERE
  (username = 'proteline');

INSERT INTO application_leaderboard(score, date_created, user_id)
SELECT
  1000,
  '2022-08-15 21:52',
  id
FROM
  application_user
WHERE
  (username = 'themaster');
