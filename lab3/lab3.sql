

CREATE VIEW player_public_info AS
SELECT player_id, username, rank, age
FROM players;



ALTER TABLE players
ADD CONSTRAINT unique_username UNIQUE (username);

ALTER TABLE players
ADD CONSTRAINT age_check CHECK (age >= 13);



CREATE INDEX idx_scores_player_id ON scores(player_id);



START TRANSACTION;

INSERT INTO players (username, email, rank, age)
VALUES ('NeonRush', 'neon@example.com', 'Gold', 19);


UPDATE players
SET rank = 'Platinum'
WHERE username = 'NeonRush';

ROLLBACK;


SELECT * FROM players WHERE username = 'NeonRush';




SELECT p.username, s.score, g.map_name
FROM players p
JOIN scores s ON p.player_id = s.player_id
JOIN games g ON s.game_id = g.game_id
WHERE s.score > (
    SELECT AVG(score) FROM scores
)
ORDER BY s.score DESC;


