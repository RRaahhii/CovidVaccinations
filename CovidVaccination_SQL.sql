-- Display the first 12 rows of the table
SELECT * FROM us_state_vaccinations LIMIT 12; 


-- Returns the total amount of rows in the file
SELECT COUNT(*) AS total_rows FROM us_state_vaccinations

    
--This will give us the average daily vaccinations per state
SELECT location, AVG(daily_vaccinations) AS avg_daily_vaccinations
FROM us_state_vaccinations
GROUP BY location
ORDER BY avg_daily_vaccinations DESC;


--This will give us the total # of vaccinations per state
SELECT location, SUM(total_vaccinations) AS total_vaccinations
FROM us_state_vaccinations
GROUP BY location
ORDER BY total_vaccinations DESC;


--This will give us the % of the population that has received the vaccine per state
SELECT location, AVG(people_fully_vaccinated_per_hundred) AS avg_fully_vaccinated_percentage
FROM us_state_vaccinations
GROUP BY location
ORDER BY avg_fully_vaccinated_percentage DESC;


--Delta (change) in daily vaccinations daily across all states until May 2023
SELECT date, SUM(daily_vaccinations) AS total_daily_vaccinations
FROM us_state_vaccinations
GROUP BY date
ORDER BY date ASC;


--Shows which states currently have booster vaccines administered (From most to least)
SELECT location, SUM(total_boosters) AS total_boosters_administered
FROM us_state_vaccinations
GROUP BY location
ORDER BY total_boosters_administered DESC;


--Returns the average daily vaccinations per state for every million
SELECT location, AVG(daily_vaccinations_per_million) AS avg_daily_vaccinations_per_million
FROM us_state_vaccinations
GROUP BY location
ORDER BY avg_daily_vaccinations_per_million DESC;


--Returns the average total boosters per state for every hundred 
SELECT location, AVG(total_boosters_per_hundred) AS avg_total_boosters_per_hundred
FROM us_state_vaccinations
GROUP BY location
ORDER BY total_boosters_per_hundred DESC;

-- This is another way of doing Exploratory Data Analysis on the same dataset
