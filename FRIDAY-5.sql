-- 1. CREATE DATABASE command
CREATE DATABASE FilmCrew_DB;

USE FilmCrew_DB;

-- CREATE TABLE command
CREATE TABLE CrewMembers_V2 (
    crew_id INT PRIMARY KEY AUTO_INCREMENT,
    crew_name VARCHAR(100) NOT NULL, 
    role VARCHAR(50),
    daily_rate DECIMAL(7, 2) NOT NULL,
    project_days INT
);

-- INSERT DATA
INSERT INTO CrewMembers_V2 (crew_name, role, daily_rate, project_days) VALUES
('Aarav Sharma', 'Director', 15000.00, 60),
('Priya Verma', 'Lead Actor', 18000.00, 55),
('Rohan Gupta', 'Cinematographer', 12000.00, 70),
('Sana Khan', 'Script Writer', 8500.00, 45),
('Vikram Singh', 'Editor', 11000.00, 80),
('Divya Reddy', 'Art Director', 9500.00, 60),
('Kunal Joshi', 'Sound Mixer', 7500.00, 65),
('Isha Patel', 'Assistant Director', 6000.00, 75),
('Neha Chauhan', 'Costume Designer', 8800.00, 50),
('Manish Tiwari', 'Gaffer', 5500.00, 70),
('Aditya Mehta', 'Grip', 4500.00, 70),
('Tanya Malhotra', 'Makeup Artist', 6200.00, 55);

-- UPDATE query(-- Increase the daily rate for the 'Editor')
UPDATE CrewMembers_V2
SET daily_rate = 12100.00
WHERE role = 'Editor';

-- DELETE query(-- Remove the 'Grip' crew member)
DELETE FROM CrewMembers_V2
WHERE role = 'Grip';

-- Find all crew members who are paid exactly 8500.00
SELECT crew_name, role FROM CrewMembers_V2
WHERE daily_rate = 8500.00;

-- Find crew members working for less than 60 project days
SELECT crew_name, project_days FROM CrewMembers_V2
WHERE project_days < 60;

-- Find the crew member who is the 'Director'
SELECT crew_name, daily_rate FROM CrewMembers_V2
WHERE role = 'Director';

-- Find crew members whose name starts with 'V'
SELECT crew_name FROM CrewMembers_V2
WHERE crew_name LIKE 'V%';

-- Find crew members who have a daily rate between 7000 and 10000 (inclusive)
SELECT crew_name, daily_rate FROM CrewMembers_V2
WHERE daily_rate BETWEEN 7000.00 AND 10000.00;

-- List all crew members, ordered by their daily rate (highest paid first)
SELECT crew_name, daily_rate FROM CrewMembers_V2
ORDER BY daily_rate DESC;

-- List all crew members, ordered by their project duration (shortest project first)
SELECT crew_name, project_days FROM CrewMembers_V2
ORDER BY project_days ASC;

-- List all crew members, ordered first by role, and then by name
SELECT role, crew_name FROM CrewMembers_V2
ORDER BY role ASC, crew_name ASC;

-- Get the top 3 highest-paid crew members
SELECT crew_name, daily_rate FROM CrewMembers_V2
ORDER BY daily_rate DESC
LIMIT 3;

-- Get the 2 crew members with the longest project duration
SELECT crew_name, project_days FROM CrewMembers_V2
ORDER BY project_days DESC
LIMIT 2;

-- Analytical Query 1: COUNT (-- Total count of crew members)
SELECT COUNT(crew_id) AS TotalCrewMembers
FROM CrewMembers_V2;

-- Find the maximum and minimum daily rate among all crew members
SELECT MIN(daily_rate) AS LowestDailyRate,
       MAX(daily_rate) AS HighestDailyRate
FROM CrewMembers_V2;