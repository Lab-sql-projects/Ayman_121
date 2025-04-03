-- Inserting data into Players Table
INSERT INTO Players (player_id, name, email, rank, join_date)
VALUES
(1, 'JohnDoe', 'johndoe@email.com', 'Gold', '2025-03-01 14:00:00'),
(2, 'JaneDoe', 'janedoe@email.com', 'Platinum', '2025-03-05 16:30:00'),
(3, 'AlexSmith', 'alexsmith@email.com', 'Diamond', '2025-03-10 18:45:00');

-- Inserting data into Games Table
INSERT INTO Games (game_id, game_date, map, duration, player_count)
VALUES
(1, '2025-03-15 10:00:00', 'Bind', 30, 10),
(2, '2025-03-16 14:30:00', 'Ascent', 35, 10),
(3, '2025-03-17 20:00:00', 'Haven', 40, 10);

-- Inserting data into Scores Table
INSERT INTO Scores (score_id, game_id, player_id, score, kills, deaths, assists)
VALUES
(1, 1, 1, 250, 20, 10, 5),
(2, 2, 2, 300, 25, 8, 10),
(3, 3, 3, 350, 30, 5, 12);

-- Inserting data into Achievements Table
INSERT INTO Achievements (achievement_id, player_id, achievement_name, date_achieved, description)
VALUES
(1, 1, 'First Blood', '2025-03-15 10:10:00', 'Earned for the first kill in a game'),
(2, 2, 'Ace', '2025-03-16 15:00:00', 'Earned for killing all five enemies in one round'),
(3, 3, 'Clutch', '2025-03-17 20:05:00', 'Earned for winning the game in a 1v5 situation');
