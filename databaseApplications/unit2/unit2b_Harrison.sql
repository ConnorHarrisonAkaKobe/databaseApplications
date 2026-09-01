-- =====================================================================
-- Unit 2b — Filtering with Logic
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players
--
-- Rename this file with your last name before you start.
--
-- Read unit2b_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Show every team in Ohio or California, with its state.

SELECT full_name, state
FROM   teams
WHERE  state = 'California';

-- 2. Show teams founded between 1960 and 1980, with their founding
--    years. Use BETWEEN.
SELECT full_name, state, year_founded
FROM   teams
WHERE year_founded BETWEEN 1960 AND 1980;

-- 3. Show teams in Texas, Florida, or New York, with their states.
--    Use IN.

SELECT full_name, state 
FROM  teams
WHERE state IN ('Texas', 'Florida', 'New York');

-- 4. Show teams whose nickname starts with the letter C.
SELECT full_name
FROM teams
WHERE nickname LIKE 'C%';

-- 5. Find every player whose name contains "James".
SELECT full_name
FROM players
WHERE full_name LIKE '%James%';

-- 6. List each state that has at least one team — each state only
--    once, sorted alphabetically.

SELECT DISTINCT state FROM teams;



-- 7. Show every team that is NOT in California. Use NOT.
SELECT full_name, state
FROM teams
WHERE state <> 'California';
-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 5 returns more than just LeBron. Who else shows up, and why?

-- Bronny, and Sion also have james in there name including 6 others who have James as their first name

-- Query 6 returns fewer rows than there are teams. Why?

-- Becuase there is no duplicates

-- Query 7 could also be written with <> instead of NOT. Why do they
-- give the same result?

-- The <> stands for NOT

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Boolean logic: rows get tested until they get a true or false answer


-- Wildcard: looks for nickname with a certain character


-- NULL: piece of information that is missing
