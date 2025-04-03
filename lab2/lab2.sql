-- 1. INNER JOIN: Get player names and their scores in a specific game
SELECT Players.name, Scores.score
FROM Players
INNER JOIN Scores ON Players.player_id = Scores.player_id
WHERE Scores.game_id = 1;

-- 2. LEFT JOIN: Get all players and their achievements (even if they have none)
SELECT Players.name, Achievements.achievement_name
FROM Players
LEFT JOIN Achievements ON Players.player_id = Achievements.player_id;

-- 3. UPDATE: Update the rank of players who scored above 300 points
UPDATE Players
SET rank = 'Diamond'
WHERE player_id IN (
    SELECT player_id 
    FROM Scores 
    WHERE score > 300
);

-- 4. DELETE: Remove scores of players who haven’t played any games
DELETE FROM Scores
WHERE player_id NOT IN (
    SELECT player_id 
    FROM Games
);

-- 5. Aggregation Query (GROUP BY): Get total scores of each player with a total > 500
SELECT Players.name, SUM(Scores.score) AS total_score
FROM Players
JOIN Scores ON Players.player_id = Scores.player_id
GROUP BY Players.name
HAVING SUM(Scores.score) > 300;

-- 6. Subquery: Find players who scored higher than the average score in a specific game
SELECT Players.name
FROM Players
WHERE Players.player_id IN (
    SELECT player_id 
    FROM Scores 
    WHERE score > (
        SELECT AVG(score) 
        FROM Scores 
        WHERE game_id = 1
    )
);
