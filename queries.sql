-- Retrieve Players’ Information
SELECT * FROM Players;

-- Retrieve Scores of a Specific Player
SELECT * FROM Scores
WHERE player_id = 1;

-- Join Games and Scores for Player Scores in Specific Games
SELECT Players.name, Games.map, Scores.score, Scores.kills, Scores.deaths
FROM Scores
JOIN Players ON Scores.player_id = Players.player_id
JOIN Games ON Scores.game_id = Games.game_id
WHERE Players.name = 'JohnDoe';

-- Get Achievements for a Player
SELECT * FROM Achievements
WHERE player_id = 2;

-- Retrieve All Games Played with Their Scores
SELECT Games.game_date, Games.map, Scores.score
FROM Games
JOIN Scores ON Games.game_id = Scores.game_id;
