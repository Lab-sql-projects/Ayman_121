# SQL Operations & Database Management - Lab 2

## Overview

This repository contains the solution for **Lab 2** of the SQL Operations & Database Management course. In this lab, we focus on applying key SQL concepts such as **Joins**, **Updates**, **Deletes**, **Aggregations**, and **Subqueries** to a **Gaming Platform** database (related to **Valorant**).

## Objectives

The main objectives of this lab are:

1. **Verify Database Tables**: Ensure there are 4 tables with at least 3 records in each table.
2. **Joins & Relationships**:
   - Perform **INNER JOIN** and **LEFT JOIN** to combine data from two or more related tables.
3. **Updating & Deleting Data**:
   - Update data based on specific conditions (e.g., updating player ranks).
   - Delete data based on a condition (e.g., deleting players with no scores).
4. **Aggregation**:
   - Use aggregation functions (`COUNT`, `AVG`, `SUM`) along with `GROUP BY` and the `HAVING` clause to summarize data.
5. **Subqueries**:
   - Use subqueries in `WHERE`, `SELECT`, or `FROM` clauses to solve more complex problems (e.g., comparing player scores with the average).

## Tables Used

The following 4 tables are part of the **Valorant gaming platform** database:

1. **Players**: Stores player details such as `player_id`, `name`, `email`, and `rank`.
2. **Games**: Contains information about each game, including `game_id`, `map`, `date`, and `duration`.
3. **Scores**: Tracks player performance in each game, including `score_id`, `game_id`, `player_id`, `score`, `kills`, `deaths`.
4. **Achievements**: Stores achievements earned by players, including `achievement_id`, `player_id`, `achievement_name`, and `date_achieved`.

## SQL Queries

The following SQL queries are included in the `lab2_queries.sql` file:

1. **Joins**:
   - **INNER JOIN**: Combines data from two tables where there is a match.
   - **LEFT JOIN**: Combines data from two tables and returns all records from the first table, even if there’s no match in the second table.

2. **Update**:
   - **UPDATE**: Modifies data based on a condition, such as updating the rank of players who scored above a threshold.

3. **Delete**:
   - **DELETE**: Removes records based on specific conditions, such as deleting scores of players who haven't participated in any games.

4. **Aggregation**:
   - **GROUP BY**: Summarizes data (e.g., total score per player) and uses **HAVING** to filter results (e.g., players with total scores greater than a certain value).

5. **Subquery**:
   - **Subquery**: A nested query that helps solve complex problems, such as finding players who scored higher than the average score in a game.

