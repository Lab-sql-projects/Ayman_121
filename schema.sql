-- Players Table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    player_rank VARCHAR(50),
    join_date TIMESTAMP
);

-- Games Table
CREATE TABLE Games (
    game_id INT PRIMARY KEY,
    game_date TIMESTAMP,
    map VARCHAR(100),
    duration INT,
    player_count INT
);

-- Scores Table
CREATE TABLE Scores (
    score_id INT PRIMARY KEY,
    game_id INT,
    player_id INT,
    score INT,
    kills INT,
    deaths INT,
    assists INT,
    FOREIGN KEY (game_id) REFERENCES Games(game_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Achievements Table
CREATE TABLE Achievements (
    achievement_id INT PRIMARY KEY,
    player_id INT,
    achievement_name VARCHAR(100),
    date_achieved TIMESTAMP,
    description TEXT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
