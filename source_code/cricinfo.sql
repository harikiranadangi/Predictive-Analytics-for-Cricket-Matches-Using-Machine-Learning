CREATE DATABASE cricket_data;

USE cricket_data;

DROP TABLE matches;

CREATE TABLE matches (
    match_id VARCHAR(50) PRIMARY KEY,
    season YEAR NOT NULL,
    match_date DATE NOT NULL,
    event_name VARCHAR(255) NOT NULL,
    gender ENUM('male', 'female', 'Mixed') NOT NULL,
    match_type VARCHAR(50) NOT NULL,
    team1 VARCHAR(100) NOT NULL,
    team2 VARCHAR(100) NOT NULL,
    toss_winner VARCHAR(100) NOT NULL,
    toss_decision ENUM('bat', 'field') NOT NULL,
    winner VARCHAR(100) NOT NULL,
    ground VARCHAR(255) NOT NULL
);

SELECT count(*) FROM matches;