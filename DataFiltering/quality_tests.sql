/* ============================================================
   Script Name : quality_tests.sql
   Description : ensures data is clean and accurate, matching historical records
   Author      : Samriddha Mishra
   Created     : 2026-07-23
   Modified    : 
   Notes       : must ensure the col_change file is run prior
   ============================================================ */


-- checking the amount of teams that played in the prem in this timeframe is correct
SELECT DISTINCT 
    HomeTeam AS Team
FROM AllMatches
UNION
SELECT DISTINCT
  AwayTeam AS Team
FROM AllMatches

-- checking for nulls
SELECT
  COUNT(*) AS total_rows,
  COUNT(*) - COUNT(Date)     AS null_date,
  COUNT(*) - COUNT(HomeTeam) AS null_hometeam,
  COUNT(*) - COUNT(AwayTeam) AS null_awayteam,
  COUNT(*) - COUNT(FTHomeGoals)     AS null_fthg,
  COUNT(*) - COUNT(FTAwayGoals)     AS null_ftag,
  COUNT(*) - COUNT(FTResult)      AS null_ftr,
  COUNT(*) - COUNT(Referee)  AS null_referee,
  COUNT(*) - COUNT(HomeShots)       AS null_hs,
  COUNT(*) - COUNT(AwayShots)       AS null_as,
  COUNT(*) - COUNT(HomeShotsOT)      AS null_hst,
  COUNT(*) - COUNT(AwayShotsOT)      AS null_ast,
  COUNT(*) - COUNT(HomeFouls)      AS null_hfouls,
  COUNT(*) - COUNT(AwayFouls)      AS null_afouls,
  COUNT(*) - COUNT(HomeFouls)      AS null_hfouls,
  COUNT(*) - COUNT(AwayFouls)      AS null_afouls,
  COUNT(*) - COUNT(HomeCorners)      AS null_hcorners,
  COUNT(*) - COUNT(AwayCorners)      AS null_acorners,
  COUNT(*) - COUNT(HomeYellows)      AS null_hyellows,
  COUNT(*) - COUNT(AwayYellows)      AS null_ayellows,
  COUNT(*) - COUNT(HomeReds)      AS null_hreds,
  COUNT(*) - COUNT(AwayReds)      AS null_areds
FROM AllMatches;

-- checking for date format
SELECT * FROM AllMatches
WHERE Date NOT LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]';

-- all of the following check for string mismatches
SELECT * FROM AllMatches
WHERE HomeTeam != TRIM(HomeTeam);

SELECT * FROM AllMatches
WHERE AwayTeam != TRIM(AwayTeam);

SELECT * FROM AllMatches
WHERE FTResult != TRIM(FTResult);

SELECT * FROM AllMatches
WHERE HTResult != TRIM(HTResult);

SELECT * FROM AllMatches
WHERE Referee != TRIM(Referee);
