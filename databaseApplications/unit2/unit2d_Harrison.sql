-- ============================================================================
-- Unit 2d — Counting and Summarizing
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2d_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- ============================================================================


-- 1. How many teams are in the database?
SELECT COUNT(*) AS team_count FROM teams;

-- 30

-- 2. How many players?
SELECT COUNT(*) AS player_count FROM players;

-- 1029

-- 3. What is the earliest founding year of any team?
SELECT MAX(year_founded) AS newest_team 
FROM teams;

-- 2002

-- 4. What is the most recent?
SELECT MAX(season) AS recent_season
FROM team_game_stats;

-- 2025-26 (it doesnt say what it is asking for)

-- 5. What is the average founding year, rounded to a whole number?
SELECT ROUND(AVG(year_founded)) AS founding_year
FROM teams;

-- 1970

-- 6. What is the total number of points scored across every game in
--    the database?
SELECT SUM(pts) AS total_points
FROM team_game_stats;

-- 1399607
-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 6 reads 10,842 rows and gives you one number. What is it?
-- idk 

-- COUNT(*) counts rows. What does COUNT(birth_year) count instead?
-- 14397

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Aggregate function: takes row and puts it into one value 
