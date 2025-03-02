CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    season INT,
    match_date DATE,
    event_name TEXT,
    gender TEXT,
    match_type TEXT,
    team1 TEXT,
    team2 TEXT,
    toss_winner TEXT,
    toss_decision TEXT,
    winner TEXT,
    ground TEXT
);

SET datestyle = 'DMY';

ALTER TABLE matches ALTER COLUMN match_id TYPE TEXT USING match_id::TEXT;


COPY matches(match_id, season, match_date, event_name, gender, match_type, team1, team2, toss_winner, toss_decision, winner, ground)
FROM 'D:/GITHUB/Predictive-Analytics-for-Cricket-Matches-Using-Machine-Learning/source_data/Summary/match_summary/summary_cleaned.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM "matches"

SELECT * FROM "matches" WHERE match_type = "T20";


