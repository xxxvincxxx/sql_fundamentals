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
