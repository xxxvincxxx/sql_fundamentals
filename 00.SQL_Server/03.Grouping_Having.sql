-- -- -- -- -- -- -- -- --
-- ORDERING / FILTERING -- 
-- -- -- -- -- -- -- -- -- 

-- Select the region column
SELECT 
  nerc_region,
  -- Sum the demand_loss_mw column
  SUM(demand_loss_mw) AS demand_loss
FROM 
  grid
  -- Exclude NULL values of demand_loss
WHERE 
  demand_loss_mw is not null
  -- Group the results by nerc_region
Group BY nerc_region 
  -- Order the results in descending order of demand_loss
ORDER BY 
  demand_loss desc;
  
  
-- -- -- -- 
-- HAVING -- 
-- -- -- -- 

-- Remember that WHERE is applied before GROUP BY and filters on rows. 
-- HAVING is applied after GROUP BY and filters on the groups
-- or aggregates you created within the query

SELECT 
  nerc_region, 
  SUM (demand_loss_mw) AS demand_loss 
FROM 
  grid 
  -- Remove the WHERE clause
WHERE demand_loss_mw  IS NOT NULL
GROUP BY 
  nerc_region 
  -- Enter a new HAVING clause so that the sum of demand_loss_mw is greater than 10000
HAVING 
  SUM(demand_loss_mw) > 10000 
ORDER BY 
  demand_loss DESC;