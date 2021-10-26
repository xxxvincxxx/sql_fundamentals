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
  
