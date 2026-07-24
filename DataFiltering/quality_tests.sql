-- checking the amount of teams that played in the prem in this timeframe is correct
SELECT DISTINCT 
    HomeTeam AS Team
FROM AllMatches
UNION
SELECT DISTINCT
  AwayTeam AS Team
FROM AllMatches
