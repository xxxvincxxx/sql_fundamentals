-- RESTRICTING the % of rows returned
SELECT 
TOP (50) PERCENT * 
  FROM 
eurovision;

-- -- -- -- -- -- -- -- -- 
-- ORDERING / FILTERING -- 
-- -- -- -- -- -- -- -- -- 

-- Select the top 20 rows from description, nerc_region and event_date
SELECT 
  TOP (20) description, 
  nerc_region, 
  event_date 
FROM 
  grid 
  -- Order by nerc_region, affected_customers & event_date
  -- Event_date should be in descending order
ORDER BY 
  nerc_region, 
  affected_customers, 
  event_date DESC;
  
  
-- -- -- -- --  --  
-- Simple Where -- 
--  -- -- -- -- --  

-- Select description and event_year
SELECT 
  description, 
  event_year 
FROM 
  grid 
  -- Filter the results
WHERE 
  description = 'Vandalism';
  
  
-- limiting
-- Select description and affected customers

SELECT 
  nerc_region, 
  demand_loss_mw 
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  affected_customers >= 500000;

-- limiting for dates
-- Select description and affected customers
SELECT 
  description, 
  affected_customers 
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  event_date = '2013-12-22';
  
-- Filter NULL

-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw IS NULL;

-- or "NOT NULL"

-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw IS not NULL;
  
  
-- You can use a parenthesis to specify
-- the WHERE clause

SELECT 
  artist, 
  release_year, 
  song 
FROM 
  songlist 
  -- Choose the correct artist and specify the release year
WHERE 
  (
    artist LIKE 'B%' 
    AND release_year = 1986
  ) 
  -- Or return all songs released after 1990
  OR release_year > 1990 
  -- Order the results 
ORDER BY 
  release_year, 
  artist, 
  song;

