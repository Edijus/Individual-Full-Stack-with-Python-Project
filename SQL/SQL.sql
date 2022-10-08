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
  '2022-08-15',
  id
FROM
  application_user
WHERE
  (username = 'themaster');

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('In Greek Mythology, who is the Queen of the Underworld and wife of Hades?', 100, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Persephone', TRUE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Medusa', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Acidusa', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Daeira', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Chromia', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Electryone', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Brettia', FALSE, CURRENT_DATE, 1);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('Which house was Harry Potter almost sorted into?', 100, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Slytherin', TRUE, CURRENT_DATE, 2);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Dragaeran', FALSE, CURRENT_DATE, 2);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Vallista', FALSE, CURRENT_DATE, 2);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Jhegaala', FALSE, CURRENT_DATE, 1);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Valhalla', FALSE, CURRENT_DATE, 2);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('The White House', FALSE, CURRENT_DATE, 2);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('The Pentagon', false, CURRENT_DATE, 2);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('Which country gifted the Statue of Liberty to the US?', 200, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('France', TRUE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Vilnius', FALSE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Lithuania', FALSE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Japan', FALSE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Valhalla', FALSE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Germany', FALSE, CURRENT_DATE, 3);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Italy', false, CURRENT_DATE, 3);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What was the name of the Robin Williams film where he dresses up as an elderly British nanny?', 200, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Mrs. Doubtfire', TRUE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Hary Potter', FALSE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Reminiscence', FALSE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Jungle', FALSE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Luck', FALSE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Super 8', FALSE, CURRENT_DATE, 4);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Terminator', false, CURRENT_DATE, 4);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What is the rarest blood type?', 300, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('AB-Negative', TRUE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('AB-Positive', FALSE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('A Positive', FALSE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('A Negative', FALSE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('B Positive', FALSE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('B Negative', FALSE, CURRENT_DATE, 5);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('O Negative', false, CURRENT_DATE, 5);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What sport does Cristiano Ronaldo play?', 500, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Soccer/football', TRUE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Basketball', FALSE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Golf', FALSE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Footgolf', FALSE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Futsal', FALSE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Kickball', FALSE, CURRENT_DATE, 6);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Tennis', false, CURRENT_DATE, 6);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('How many bones are there in the human body?', 1000, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('206', TRUE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('10', FALSE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('16', FALSE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('105', FALSE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('207', FALSE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('208', FALSE, CURRENT_DATE, 7);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('200', false, CURRENT_DATE, 7);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What is the name of the longest river in South America?', 2000, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Amazon', TRUE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Nile', FALSE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Nemunas', FALSE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Neris', FALSE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Betwa', FALSE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Brahmani', FALSE, CURRENT_DATE, 8);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Brahmaputra', false, CURRENT_DATE, 8);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What is the name of the musical artist who sings the song “Watermelon Sugar”?', 2000, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Harry Styles', TRUE, CURRENT_DATE, 9);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Harry Potter', FALSE, CURRENT_DATE, 9);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Sel', FALSE, CURRENT_DATE, 89);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Mary J. Blige', FALSE, CURRENT_DATE, 9);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Steven Tyler', FALSE, CURRENT_DATE, 9);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Stevie Nicks', FALSE, CURRENT_DATE, 9);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Joe Cocker', false, CURRENT_DATE, 9);

INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What does Na stand for on the periodic table?', 4000, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Sodium', TRUE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Hydrogen', FALSE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Beryllium', FALSE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Mary J. Blige', FALSE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Aluminum', FALSE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Titanium', FALSE, CURRENT_DATE, 10);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Sulfur', false, CURRENT_DATE, 10);


INSERT INTO application_questions(inquiry, sum, date_created)
VALUES('What is the name of the actor who played Jack in Titanic?', 8000, CURRENT_DATE);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Leonardo DiCaprio', TRUE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Robert De Niro', FALSE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Jack Nicholson', FALSE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Mary J. Blige', FALSE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Marlon Brando', FALSE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Denzel Washington', FALSE, CURRENT_DATE, 11);

INSERT INTO application_answers(answer, is_correct, date_created, question_id)
VALUES('Humphrey Bogart', false, CURRENT_DATE, 11);
