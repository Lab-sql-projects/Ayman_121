# 🎮 Gaming Platform - Valorant

Welcome to the **Gaming Platform** project for **Valorant**! This repository contains a relational database schema that simulates a platform for tracking players, games, scores, and achievements in **Valorant**.

## 📋 Project Overview

This project focuses on creating and managing a **gaming platform** database using SQL. The platform includes four primary tables that track the following:

- **Players**: Information about each player, such as their rank and join date.
- **Games**: Details about each game played, including the map, duration, and player count.
- **Scores**: Scores for each player in every game, including kills, deaths, and assists.
- **Achievements**: In-game accomplishments earned by players.

The project demonstrates core SQL concepts, including:

- **Creating Tables** using `CREATE TABLE`
- **Inserting Data** using `INSERT INTO`
- **Joining Tables** using SQL `JOIN` statements
- **Querying Data** to retrieve, filter, and analyze game statistics

## 🛠 Technologies Used

- **SQL** (Structured Query Language)
- **Git & GitHub** (for version control and collaboration)

## 📂 Files in This Repository

- **`schema.sql`**: Contains the SQL statements to create the database schema (tables, primary keys, foreign keys).
- **`insert.sql`**: Includes SQL queries to insert sample data into the tables.
- **`queries.sql`**: Contains SQL queries for data retrieval, filtering, sorting, and joining tables.

## 💡 Features

- **Player Tracking**: Store player information such as name, email, rank, and join date.
- **Game Details**: Record game-related data like map, duration, and the number of players.
- **Score Management**: Track player scores, kills, deaths, and assists per game.
- **Achievements**: Log in-game achievements that players earn.

## 📝 Example Queries

- **Retrieve All Players**:
    ```sql
    SELECT * FROM Players;
    ```

- **Retrieve Scores of a Specific Player**:
    ```sql
    SELECT * FROM Scores WHERE player_id = 1;
    ```

- **Join Players and Scores**:
    ```sql
    SELECT Players.name, Games.map, Scores.score, Scores.kills, Scores.deaths
    FROM Scores
    JOIN Players ON Scores.player_id = Players.player_id
    JOIN Games ON Scores.game_id = Games.game_id
    WHERE Players.name = 'JohnDoe';
    ```

- **Get Achievements for a Player**:
    ```sql
    SELECT * FROM Achievements WHERE player_id = 2;
    ```
