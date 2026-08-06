/* ============================================================
   Script Name : view_creation.sql
   Description : Creates views to hold each team's data for their sting in the Prem in this time
   Author      : Samriddha Mishra
   Created     : 2026-08-05
   Modified    : 
   Notes       : Ensure all the tables are made, especially the AllMatches one
   ============================================================ */

CREATE VIEW ArsenalMatchStats AS
SELECT 
Date,
CASE
  WHEN HomeTeam = 'Arsenal' THEN 'Home'
  WHEN AwayTeam = 'Arsenal' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN FTHomeGoals
  WHEN AwayTeam = 'Arsenal' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN FTAwayGoals
  WHEN AwayTeam = 'Arsenal' THEN FTHomeGoals
  ELSE NULL
END AS GoalsConcededFT,
CASE WHEN
    HomeTeam = 'Arsenal' AND FTResult = 'H' THEN 'Win'
    WHEN AwayTeam = 'Arsenal' AND FTResult = 'A' THEN 'Win'
    WHEN HomeTeam = 'Arsenal' AND FTResult = 'A' THEN 'Loss'
    WHEN AwayTeam = 'Arsenal' AND FTResult = 'H' THEN 'Loss'
    ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HTHomeGoals
  WHEN AwayTeam = 'Arsenal' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HTAwayGoals
  WHEN AwayTeam = 'Arsenal' THEN HTHomeGoals
  ELSE NULL
END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HomeShotsOT
  WHEN AwayTeam = 'Arsenal' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HomeFouls
  WHEN AwayTeam = 'Arsenal' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HomeCorners
  WHEN AwayTeam = 'Arsenal' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HomeYellows
  WHEN AwayTeam = 'Arsenal' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Arsenal' THEN HomeReds
  WHEN AwayTeam = 'Arsenal' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Arsenal' OR AwayTeam = 'Arsenal';
GO
CREATE VIEW AstonVillaMatchStats AS
SELECT 
  Date,
  CASE
    WHEN HomeTeam = 'Aston Villa' THEN 'Home'
    WHEN AwayTeam = 'Aston Villa' THEN 'Away'
    ELSE NULL
  END AS Venue,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN FTHomeGoals
    WHEN AwayTeam = 'Aston Villa' THEN FTAwayGoals
    ELSE NULL
  END AS GoalsScoredFT,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN FTAwayGoals
    WHEN AwayTeam = 'Aston Villa' THEN FTHomeGoals
    ELSE NULL
  END AS GoalsConcededFT,
  CASE 
    WHEN HomeTeam = 'Aston Villa' AND FTResult = 'H' THEN 'Win'
    WHEN AwayTeam = 'Aston Villa' AND FTResult = 'A' THEN 'Win'
    WHEN HomeTeam = 'Aston Villa' AND FTResult = 'A' THEN 'Loss'
    WHEN AwayTeam = 'Aston Villa' AND FTResult = 'H' THEN 'Loss'
    ELSE 'Draw'
  END AS FTResult,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HTHomeGoals
    WHEN AwayTeam = 'Aston Villa' THEN HTAwayGoals
    ELSE NULL
  END AS GoalsScoredHT,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HTAwayGoals
    WHEN AwayTeam = 'Aston Villa' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
  Referee,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HomeShotsOT
    WHEN AwayTeam = 'Aston Villa' THEN AwayShotsOT
    ELSE NULL
  END AS ShotsOT,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HomeFouls
    WHEN AwayTeam = 'Aston Villa' THEN AwayFouls
    ELSE NULL
  END AS Fouls,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HomeCorners
    WHEN AwayTeam = 'Aston Villa' THEN AwayCorners
    ELSE NULL
  END AS Corners,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HomeYellows
    WHEN AwayTeam = 'Aston Villa' THEN AwayYellows
    ELSE NULL
  END AS Yellows,
  CASE 
    WHEN HomeTeam = 'Aston Villa' THEN HomeReds
    WHEN AwayTeam = 'Aston Villa' THEN AwayReds
    ELSE NULL
  END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Aston Villa' OR AwayTeam = 'Aston Villa';
GO

CREATE VIEW BirminghamMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Birmingham' THEN 'Home'
  WHEN AwayTeam = 'Birmingham' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN FTHomeGoals
  WHEN AwayTeam = 'Birmingham' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Birmingham' THEN FTAwayGoals
    WHEN AwayTeam = 'Birmingham' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Birmingham' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Birmingham' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Birmingham' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Birmingham' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HTHomeGoals
  WHEN AwayTeam = 'Birmingham' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Birmingham' THEN HTAwayGoals
    WHEN AwayTeam = 'Birmingham' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HomeShotsOT
  WHEN AwayTeam = 'Birmingham' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HomeFouls
  WHEN AwayTeam = 'Birmingham' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HomeCorners
  WHEN AwayTeam = 'Birmingham' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HomeYellows
  WHEN AwayTeam = 'Birmingham' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Birmingham' THEN HomeReds
  WHEN AwayTeam = 'Birmingham' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Birmingham' OR AwayTeam = 'Birmingham';

GO
CREATE VIEW BlackburnMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Blackburn' THEN 'Home'
  WHEN AwayTeam = 'Blackburn' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN FTHomeGoals
  WHEN AwayTeam = 'Blackburn' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Blackburn' THEN FTAwayGoals
    WHEN AwayTeam = 'Blackburn' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Blackburn' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Blackburn' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Blackburn' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Blackburn' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HTHomeGoals
  WHEN AwayTeam = 'Blackburn' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Blackburn' THEN HTAwayGoals
    WHEN AwayTeam = 'Blackburn' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HomeShotsOT
  WHEN AwayTeam = 'Blackburn' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HomeFouls
  WHEN AwayTeam = 'Blackburn' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HomeCorners
  WHEN AwayTeam = 'Blackburn' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HomeYellows
  WHEN AwayTeam = 'Blackburn' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Blackburn' THEN HomeReds
  WHEN AwayTeam = 'Blackburn' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Blackburn' OR AwayTeam = 'Blackburn';
GO
CREATE VIEW BlackpoolMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Blackpool' THEN 'Home'
  WHEN AwayTeam = 'Blackpool' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN FTHomeGoals
  WHEN AwayTeam = 'Blackpool' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Blackpool' THEN FTAwayGoals
    WHEN AwayTeam = 'Blackpool' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Blackpool' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Blackpool' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Blackpool' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Blackpool' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HTHomeGoals
  WHEN AwayTeam = 'Blackpool' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HTAwayGoals
  WHEN AwayTeam = 'Blackpool' THEN HTHomeGoals
  ELSE NULL
END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HomeShotsOT
  WHEN AwayTeam = 'Blackpool' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HomeFouls
  WHEN AwayTeam = 'Blackpool' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HomeCorners
  WHEN AwayTeam = 'Blackpool' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HomeYellows
  WHEN AwayTeam = 'Blackpool' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Blackpool' THEN HomeReds
  WHEN AwayTeam = 'Blackpool' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Blackpool' OR AwayTeam = 'Blackpool';
GO
CREATE VIEW BoltonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Bolton' THEN 'Home'
  WHEN AwayTeam = 'Bolton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Bolton' THEN FTHomeGoals
  WHEN AwayTeam = 'Bolton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Bolton' THEN FTAwayGoals
    WHEN AwayTeam = 'Bolton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Bolton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Bolton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Bolton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Bolton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HTHomeGoals
  WHEN AwayTeam = 'Bolton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Bolton' THEN HTAwayGoals
    WHEN AwayTeam = 'Bolton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HomeShotsOT
  WHEN AwayTeam = 'Bolton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HomeFouls
  WHEN AwayTeam = 'Bolton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HomeCorners
  WHEN AwayTeam = 'Bolton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HomeYellows
  WHEN AwayTeam = 'Bolton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Bolton' THEN HomeReds
  WHEN AwayTeam = 'Bolton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Bolton' OR AwayTeam = 'Bolton';
GO
CREATE VIEW BournemouthMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Bournemouth' THEN 'Home'
  WHEN AwayTeam = 'Bournemouth' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN FTHomeGoals
  WHEN AwayTeam = 'Bournemouth' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Bournemouth' THEN FTAwayGoals
    WHEN AwayTeam = 'Bournemouth' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Bournemouth' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Bournemouth' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Bournemouth' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Bournemouth' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HTHomeGoals
  WHEN AwayTeam = 'Bournemouth' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Bournemouth' THEN HTAwayGoals
    WHEN AwayTeam = 'Bournemouth' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeShotsOT
  WHEN AwayTeam = 'Bournemouth' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeFouls
  WHEN AwayTeam = 'Bournemouth' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeCorners
  WHEN AwayTeam = 'Bournemouth' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeYellows
  WHEN AwayTeam = 'Bournemouth' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeReds
  WHEN AwayTeam = 'Bournemouth' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Bournemouth' OR AwayTeam = 'Bournemouth';
GO
CREATE VIEW BradfordMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Bradford' THEN 'Home'
  WHEN AwayTeam = 'Bradford' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Bradford' THEN FTHomeGoals
  WHEN AwayTeam = 'Bradford' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Bradford' THEN FTAwayGoals
    WHEN AwayTeam = 'Bradford' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Bradford' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Bradford' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Bradford' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Bradford' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HTHomeGoals
  WHEN AwayTeam = 'Bradford' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
Referee,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeShotsOT
  WHEN AwayTeam = 'Bradford' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeFouls
  WHEN AwayTeam = 'Bradford' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeCorners
  WHEN AwayTeam = 'Bradford' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeYellows
  WHEN AwayTeam = 'Bradford' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeReds
  WHEN AwayTeam = 'Bradford' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Bradford' OR AwayTeam = 'Bradford';
GO
CREATE VIEW BournemouthMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Bournemouth' THEN 'Home'
  WHEN AwayTeam = 'Bournemouth' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN FTHomeGoals
  WHEN AwayTeam = 'Bournemouth' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Bournemouth' THEN FTAwayGoals
    WHEN AwayTeam = 'Bournemouth' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Bournemouth' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Bournemouth' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Bournemouth' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Bournemouth' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HTHomeGoals
  WHEN AwayTeam = 'Bournemouth' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
Referee,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeShotsOT
  WHEN AwayTeam = 'Bournemouth' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeFouls
  WHEN AwayTeam = 'Bournemouth' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeCorners
  WHEN AwayTeam = 'Bournemouth' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeYellows
  WHEN AwayTeam = 'Bournemouth' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Bournemouth' THEN HomeReds
  WHEN AwayTeam = 'Bournemouth' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Bournemouth' OR AwayTeam = 'Bournemouth';
GO
CREATE VIEW BrentfordMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Brentford' THEN 'Home'
  WHEN AwayTeam = 'Brentford' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Brentford' THEN FTHomeGoals
  WHEN AwayTeam = 'Brentford' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Brentford' THEN FTAwayGoals
    WHEN AwayTeam = 'Brentford' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Brentford' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Brentford' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Brentford' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Brentford' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HTHomeGoals
  WHEN AwayTeam = 'Brentford' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Brentford' THEN HTAwayGoals
    WHEN AwayTeam = 'Brentford' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HomeShotsOT
  WHEN AwayTeam = 'Brentford' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HomeFouls
  WHEN AwayTeam = 'Brentford' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HomeCorners
  WHEN AwayTeam = 'Brentford' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HomeYellows
  WHEN AwayTeam = 'Brentford' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Brentford' THEN HomeReds
  WHEN AwayTeam = 'Brentford' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Brentford' OR AwayTeam = 'Brentford';
GO
CREATE VIEW BrightonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Brighton' THEN 'Home'
  WHEN AwayTeam = 'Brighton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Brighton' THEN FTHomeGoals
  WHEN AwayTeam = 'Brighton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Brighton' THEN FTAwayGoals
    WHEN AwayTeam = 'Brighton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Brighton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Brighton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Brighton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Brighton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HTHomeGoals
  WHEN AwayTeam = 'Brighton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Brighton' THEN HTAwayGoals
    WHEN AwayTeam = 'Brighton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeShotsOT
  WHEN AwayTeam = 'Brighton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeFouls
  WHEN AwayTeam = 'Brighton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeCorners
  WHEN AwayTeam = 'Brighton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeYellows
  WHEN AwayTeam = 'Brighton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeReds
  WHEN AwayTeam = 'Brighton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Brighton' OR AwayTeam = 'Brighton';
GO
CREATE VIEW BradfordMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Bradford' THEN 'Home'
  WHEN AwayTeam = 'Bradford' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Bradford' THEN FTHomeGoals
  WHEN AwayTeam = 'Bradford' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Bradford' THEN FTAwayGoals
    WHEN AwayTeam = 'Bradford' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Bradford' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Bradford' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Bradford' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Bradford' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HTHomeGoals
  WHEN AwayTeam = 'Bradford' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Bradford' THEN HTAwayGoals
    WHEN AwayTeam = 'Bradford' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeShotsOT
  WHEN AwayTeam = 'Bradford' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeFouls
  WHEN AwayTeam = 'Bradford' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeCorners
  WHEN AwayTeam = 'Bradford' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeYellows
  WHEN AwayTeam = 'Bradford' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Bradford' THEN HomeReds
  WHEN AwayTeam = 'Bradford' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Bradford' OR AwayTeam = 'Bradford';
GO
CREATE VIEW BrightonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Brighton' THEN 'Home'
  WHEN AwayTeam = 'Brighton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Brighton' THEN FTHomeGoals
  WHEN AwayTeam = 'Brighton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Brighton' THEN FTAwayGoals
    WHEN AwayTeam = 'Brighton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Brighton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Brighton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Brighton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Brighton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HTHomeGoals
  WHEN AwayTeam = 'Brighton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Brighton' THEN HTAwayGoals
    WHEN AwayTeam = 'Brighton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeShotsOT
  WHEN AwayTeam = 'Brighton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeFouls
  WHEN AwayTeam = 'Brighton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeCorners
  WHEN AwayTeam = 'Brighton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeYellows
  WHEN AwayTeam = 'Brighton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Brighton' THEN HomeReds
  WHEN AwayTeam = 'Brighton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Brighton' OR AwayTeam = 'Brighton';
GO
CREATE VIEW BurnleyMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Burnley' THEN 'Home'
  WHEN AwayTeam = 'Burnley' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Burnley' THEN FTHomeGoals
  WHEN AwayTeam = 'Burnley' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Burnley' THEN FTAwayGoals
    WHEN AwayTeam = 'Burnley' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Burnley' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Burnley' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Burnley' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Burnley' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HTHomeGoals
  WHEN AwayTeam = 'Burnley' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Burnley' THEN HTAwayGoals
    WHEN AwayTeam = 'Burnley' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HomeShotsOT
  WHEN AwayTeam = 'Burnley' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HomeFouls
  WHEN AwayTeam = 'Burnley' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HomeCorners
  WHEN AwayTeam = 'Burnley' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HomeYellows
  WHEN AwayTeam = 'Burnley' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Burnley' THEN HomeReds
  WHEN AwayTeam = 'Burnley' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Burnley' OR AwayTeam = 'Burnley';
GO
CREATE VIEW CardiffMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Cardiff' THEN 'Home'
  WHEN AwayTeam = 'Cardiff' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN FTHomeGoals
  WHEN AwayTeam = 'Cardiff' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Cardiff' THEN FTAwayGoals
    WHEN AwayTeam = 'Cardiff' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Cardiff' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Cardiff' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Cardiff' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Cardiff' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HTHomeGoals
  WHEN AwayTeam = 'Cardiff' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Cardiff' THEN HTAwayGoals
    WHEN AwayTeam = 'Cardiff' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HomeShotsOT
  WHEN AwayTeam = 'Cardiff' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HomeFouls
  WHEN AwayTeam = 'Cardiff' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HomeCorners
  WHEN AwayTeam = 'Cardiff' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HomeYellows
  WHEN AwayTeam = 'Cardiff' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Cardiff' THEN HomeReds
  WHEN AwayTeam = 'Cardiff' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Cardiff' OR AwayTeam = 'Cardiff';
GO
CREATE VIEW CharltonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Charlton' THEN 'Home'
  WHEN AwayTeam = 'Charlton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Charlton' THEN FTHomeGoals
  WHEN AwayTeam = 'Charlton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Charlton' THEN FTAwayGoals
    WHEN AwayTeam = 'Charlton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Charlton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Charlton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Charlton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Charlton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HTHomeGoals
  WHEN AwayTeam = 'Charlton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Charlton' THEN HTAwayGoals
    WHEN AwayTeam = 'Charlton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HomeShotsOT
  WHEN AwayTeam = 'Charlton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HomeFouls
  WHEN AwayTeam = 'Charlton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HomeCorners
  WHEN AwayTeam = 'Charlton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HomeYellows
  WHEN AwayTeam = 'Charlton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Charlton' THEN HomeReds
  WHEN AwayTeam = 'Charlton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Charlton' OR AwayTeam = 'Charlton';
GO
CREATE VIEW ChelseaMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Chelsea' THEN 'Home'
  WHEN AwayTeam = 'Chelsea' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN FTHomeGoals
  WHEN AwayTeam = 'Chelsea' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Chelsea' THEN FTAwayGoals
    WHEN AwayTeam = 'Chelsea' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Chelsea' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Chelsea' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Chelsea' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Chelsea' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HTHomeGoals
  WHEN AwayTeam = 'Chelsea' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Chelsea' THEN HTAwayGoals
    WHEN AwayTeam = 'Chelsea' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HomeShotsOT
  WHEN AwayTeam = 'Chelsea' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HomeFouls
  WHEN AwayTeam = 'Chelsea' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HomeCorners
  WHEN AwayTeam = 'Chelsea' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HomeYellows
  WHEN AwayTeam = 'Chelsea' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Chelsea' THEN HomeReds
  WHEN AwayTeam = 'Chelsea' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Chelsea' OR AwayTeam = 'Chelsea';
GO
CREATE VIEW CoventryMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Coventry' THEN 'Home'
  WHEN AwayTeam = 'Coventry' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Coventry' THEN FTHomeGoals
  WHEN AwayTeam = 'Coventry' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Coventry' THEN FTAwayGoals
    WHEN AwayTeam = 'Coventry' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Coventry' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Coventry' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Coventry' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Coventry' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HTHomeGoals
  WHEN AwayTeam = 'Coventry' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Coventry' THEN HTAwayGoals
    WHEN AwayTeam = 'Coventry' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HomeShotsOT
  WHEN AwayTeam = 'Coventry' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HomeFouls
  WHEN AwayTeam = 'Coventry' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HomeCorners
  WHEN AwayTeam = 'Coventry' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HomeYellows
  WHEN AwayTeam = 'Coventry' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Coventry' THEN HomeReds
  WHEN AwayTeam = 'Coventry' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Coventry' OR AwayTeam = 'Coventry';
GO
CREATE VIEW CrystalPalaceMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Crystal Palace' THEN 'Home'
  WHEN AwayTeam = 'Crystal Palace' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN FTHomeGoals
  WHEN AwayTeam = 'Crystal Palace' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Crystal Palace' THEN FTAwayGoals
    WHEN AwayTeam = 'Crystal Palace' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Crystal Palace' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Crystal Palace' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Crystal Palace' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Crystal Palace' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HTHomeGoals
  WHEN AwayTeam = 'Crystal Palace' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Crystal Palace' THEN HTAwayGoals
    WHEN AwayTeam = 'Crystal Palace' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HomeShotsOT
  WHEN AwayTeam = 'Crystal Palace' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HomeFouls
  WHEN AwayTeam = 'Crystal Palace' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HomeCorners
  WHEN AwayTeam = 'Crystal Palace' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HomeYellows
  WHEN AwayTeam = 'Crystal Palace' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Crystal Palace' THEN HomeReds
  WHEN AwayTeam = 'Crystal Palace' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Crystal Palace' OR AwayTeam = 'Crystal Palace';
GO
CREATE VIEW DerbyMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Derby' THEN 'Home'
  WHEN AwayTeam = 'Derby' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Derby' THEN FTHomeGoals
  WHEN AwayTeam = 'Derby' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Derby' THEN FTAwayGoals
    WHEN AwayTeam = 'Derby' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Derby' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Derby' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Derby' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Derby' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Derby' THEN HTHomeGoals
  WHEN AwayTeam = 'Derby' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Derby' THEN HTAwayGoals
    WHEN AwayTeam = 'Derby' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeShotsOT
  WHEN AwayTeam = 'Derby' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeFouls
  WHEN AwayTeam = 'Derby' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeCorners
  WHEN AwayTeam = 'Derby' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeYellows
  WHEN AwayTeam = 'Derby' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeReds
  WHEN AwayTeam = 'Derby' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Derby' OR AwayTeam = 'Derby';
GO
CREATE VIEW EvertonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Everton' THEN 'Home'
  WHEN AwayTeam = 'Everton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Everton' THEN FTHomeGoals
  WHEN AwayTeam = 'Everton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Everton' THEN FTAwayGoals
    WHEN AwayTeam = 'Everton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Everton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Everton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Everton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Everton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Everton' THEN HTHomeGoals
  WHEN AwayTeam = 'Everton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Everton' THEN HTAwayGoals
    WHEN AwayTeam = 'Everton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeShotsOT
  WHEN AwayTeam = 'Everton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeFouls
  WHEN AwayTeam = 'Everton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeCorners
  WHEN AwayTeam = 'Everton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeYellows
  WHEN AwayTeam = 'Everton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeReds
  WHEN AwayTeam = 'Everton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Everton' OR AwayTeam = 'Everton';
GO
CREATE VIEW DerbyMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Derby' THEN 'Home'
  WHEN AwayTeam = 'Derby' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Derby' THEN FTHomeGoals
  WHEN AwayTeam = 'Derby' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Derby' THEN FTAwayGoals
    WHEN AwayTeam = 'Derby' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Derby' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Derby' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Derby' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Derby' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Derby' THEN HTHomeGoals
  WHEN AwayTeam = 'Derby' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Derby' THEN HTAwayGoals
    WHEN AwayTeam = 'Derby' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeShotsOT
  WHEN AwayTeam = 'Derby' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeFouls
  WHEN AwayTeam = 'Derby' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeCorners
  WHEN AwayTeam = 'Derby' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeYellows
  WHEN AwayTeam = 'Derby' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Derby' THEN HomeReds
  WHEN AwayTeam = 'Derby' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Derby' OR AwayTeam = 'Derby';
GO
CREATE VIEW EvertonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Everton' THEN 'Home'
  WHEN AwayTeam = 'Everton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Everton' THEN FTHomeGoals
  WHEN AwayTeam = 'Everton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Everton' THEN FTAwayGoals
    WHEN AwayTeam = 'Everton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Everton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Everton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Everton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Everton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Everton' THEN HTHomeGoals
  WHEN AwayTeam = 'Everton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Everton' THEN HTAwayGoals
    WHEN AwayTeam = 'Everton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeShotsOT
  WHEN AwayTeam = 'Everton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeFouls
  WHEN AwayTeam = 'Everton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeCorners
  WHEN AwayTeam = 'Everton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeYellows
  WHEN AwayTeam = 'Everton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Everton' THEN HomeReds
  WHEN AwayTeam = 'Everton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Everton' OR AwayTeam = 'Everton';
GO
CREATE VIEW FulhamMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Fulham' THEN 'Home'
  WHEN AwayTeam = 'Fulham' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Fulham' THEN FTHomeGoals
  WHEN AwayTeam = 'Fulham' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Fulham' THEN FTAwayGoals
    WHEN AwayTeam = 'Fulham' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Fulham' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Fulham' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Fulham' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Fulham' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HTHomeGoals
  WHEN AwayTeam = 'Fulham' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Fulham' THEN HTAwayGoals
    WHEN AwayTeam = 'Fulham' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HomeShotsOT
  WHEN AwayTeam = 'Fulham' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HomeFouls
  WHEN AwayTeam = 'Fulham' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HomeCorners
  WHEN AwayTeam = 'Fulham' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HomeYellows
  WHEN AwayTeam = 'Fulham' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Fulham' THEN HomeReds
  WHEN AwayTeam = 'Fulham' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Fulham' OR AwayTeam = 'Fulham';
GO
CREATE VIEW HuddersfieldMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Huddersfield' THEN 'Home'
  WHEN AwayTeam = 'Huddersfield' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN FTHomeGoals
  WHEN AwayTeam = 'Huddersfield' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Huddersfield' THEN FTAwayGoals
    WHEN AwayTeam = 'Huddersfield' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Huddersfield' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Huddersfield' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Huddersfield' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Huddersfield' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HTHomeGoals
  WHEN AwayTeam = 'Huddersfield' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Huddersfield' THEN HTAwayGoals
    WHEN AwayTeam = 'Huddersfield' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HomeShotsOT
  WHEN AwayTeam = 'Huddersfield' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HomeFouls
  WHEN AwayTeam = 'Huddersfield' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HomeCorners
  WHEN AwayTeam = 'Huddersfield' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HomeYellows
  WHEN AwayTeam = 'Huddersfield' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Huddersfield' THEN HomeReds
  WHEN AwayTeam = 'Huddersfield' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Huddersfield' OR AwayTeam = 'Huddersfield';
GO
CREATE VIEW HullMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Hull' THEN 'Home'
  WHEN AwayTeam = 'Hull' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Hull' THEN FTHomeGoals
  WHEN AwayTeam = 'Hull' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Hull' THEN FTAwayGoals
    WHEN AwayTeam = 'Hull' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Hull' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Hull' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Hull' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Hull' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Hull' THEN HTHomeGoals
  WHEN AwayTeam = 'Hull' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Hull' THEN HTAwayGoals
    WHEN AwayTeam = 'Hull' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Hull' THEN HomeShotsOT
  WHEN AwayTeam = 'Hull' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Hull' THEN HomeFouls
  WHEN AwayTeam = 'Hull' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Hull' THEN HomeCorners
  WHEN AwayTeam = 'Hull' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Hull' THEN HomeYellows
  WHEN AwayTeam = 'Hull' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Hull' THEN HomeReds
  WHEN AwayTeam = 'Hull' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Hull' OR AwayTeam = 'Hull';
GO
CREATE VIEW IpswichMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Ipswich' THEN 'Home'
  WHEN AwayTeam = 'Ipswich' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN FTHomeGoals
  WHEN AwayTeam = 'Ipswich' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Ipswich' THEN FTAwayGoals
    WHEN AwayTeam = 'Ipswich' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Ipswich' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Ipswich' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Ipswich' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Ipswich' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HTHomeGoals
  WHEN AwayTeam = 'Ipswich' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Ipswich' THEN HTAwayGoals
    WHEN AwayTeam = 'Ipswich' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HomeShotsOT
  WHEN AwayTeam = 'Ipswich' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HomeFouls
  WHEN AwayTeam = 'Ipswich' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HomeCorners
  WHEN AwayTeam = 'Ipswich' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HomeYellows
  WHEN AwayTeam = 'Ipswich' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Ipswich' THEN HomeReds
  WHEN AwayTeam = 'Ipswich' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Ipswich' OR AwayTeam = 'Ipswich';
GO
CREATE VIEW LeedsMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Leeds' THEN 'Home'
  WHEN AwayTeam = 'Leeds' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Leeds' THEN FTHomeGoals
  WHEN AwayTeam = 'Leeds' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Leeds' THEN FTAwayGoals
    WHEN AwayTeam = 'Leeds' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Leeds' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Leeds' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Leeds' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Leeds' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HTHomeGoals
  WHEN AwayTeam = 'Leeds' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Leeds' THEN HTAwayGoals
    WHEN AwayTeam = 'Leeds' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HomeShotsOT
  WHEN AwayTeam = 'Leeds' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HomeFouls
  WHEN AwayTeam = 'Leeds' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HomeCorners
  WHEN AwayTeam = 'Leeds' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HomeYellows
  WHEN AwayTeam = 'Leeds' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Leeds' THEN HomeReds
  WHEN AwayTeam = 'Leeds' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Leeds' OR AwayTeam = 'Leeds';
GO
CREATE VIEW LeicesterMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Leicester' THEN 'Home'
  WHEN AwayTeam = 'Leicester' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Leicester' THEN FTHomeGoals
  WHEN AwayTeam = 'Leicester' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Leicester' THEN FTAwayGoals
    WHEN AwayTeam = 'Leicester' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Leicester' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Leicester' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Leicester' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Leicester' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HTHomeGoals
  WHEN AwayTeam = 'Leicester' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Leicester' THEN HTAwayGoals
    WHEN AwayTeam = 'Leicester' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HomeShotsOT
  WHEN AwayTeam = 'Leicester' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HomeFouls
  WHEN AwayTeam = 'Leicester' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HomeCorners
  WHEN AwayTeam = 'Leicester' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HomeYellows
  WHEN AwayTeam = 'Leicester' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Leicester' THEN HomeReds
  WHEN AwayTeam = 'Leicester' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Leicester' OR AwayTeam = 'Leicester';
GO
CREATE VIEW LutonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Luton' THEN 'Home'
  WHEN AwayTeam = 'Luton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Luton' THEN FTHomeGoals
  WHEN AwayTeam = 'Luton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Luton' THEN FTAwayGoals
    WHEN AwayTeam = 'Luton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Luton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Luton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Luton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Luton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Luton' THEN HTHomeGoals
  WHEN AwayTeam = 'Luton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Luton' THEN HTAwayGoals
    WHEN AwayTeam = 'Luton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Luton' THEN HomeShotsOT
  WHEN AwayTeam = 'Luton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Luton' THEN HomeFouls
  WHEN AwayTeam = 'Luton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Luton' THEN HomeCorners
  WHEN AwayTeam = 'Luton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Luton' THEN HomeYellows
  WHEN AwayTeam = 'Luton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Luton' THEN HomeReds
  WHEN AwayTeam = 'Luton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Luton' OR AwayTeam = 'Luton';
GO
CREATE VIEW LiverpoolMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Liverpool' THEN 'Home'
  WHEN AwayTeam = 'Liverpool' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN FTHomeGoals
  WHEN AwayTeam = 'Liverpool' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Liverpool' THEN FTAwayGoals
    WHEN AwayTeam = 'Liverpool' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Liverpool' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Liverpool' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Liverpool' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Liverpool' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HTHomeGoals
  WHEN AwayTeam = 'Liverpool' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Liverpool' THEN HTAwayGoals
    WHEN AwayTeam = 'Liverpool' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HomeShotsOT
  WHEN AwayTeam = 'Liverpool' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HomeFouls
  WHEN AwayTeam = 'Liverpool' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HomeCorners
  WHEN AwayTeam = 'Liverpool' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HomeYellows
  WHEN AwayTeam = 'Liverpool' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Liverpool' THEN HomeReds
  WHEN AwayTeam = 'Liverpool' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Liverpool' OR AwayTeam = 'Liverpool';
GO
CREATE VIEW ManCityMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Man City' THEN 'Home'
  WHEN AwayTeam = 'Man City' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Man City' THEN FTHomeGoals
  WHEN AwayTeam = 'Man City' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Man City' THEN FTAwayGoals
    WHEN AwayTeam = 'Man City' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Man City' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Man City' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Man City' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Man City' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Man City' THEN HTHomeGoals
  WHEN AwayTeam = 'Man City' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Man City' THEN HTAwayGoals
    WHEN AwayTeam = 'Man City' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Man City' THEN HomeShotsOT
  WHEN AwayTeam = 'Man City' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Man City' THEN HomeFouls
  WHEN AwayTeam = 'Man City' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Man City' THEN HomeCorners
  WHEN AwayTeam = 'Man City' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Man City' THEN HomeYellows
  WHEN AwayTeam = 'Man City' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Man City' THEN HomeReds
  WHEN AwayTeam = 'Man City' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Man City' OR AwayTeam = 'Man City';
GO
CREATE VIEW ManUnitedMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Man United' THEN 'Home'
  WHEN AwayTeam = 'Man United' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Man United' THEN FTHomeGoals
  WHEN AwayTeam = 'Man United' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Man United' THEN FTAwayGoals
    WHEN AwayTeam = 'Man United' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Man United' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Man United' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Man United' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Man United' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Man United' THEN HTHomeGoals
  WHEN AwayTeam = 'Man United' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Man United' THEN HTAwayGoals
    WHEN AwayTeam = 'Man United' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Man United' THEN HomeShotsOT
  WHEN AwayTeam = 'Man United' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Man United' THEN HomeFouls
  WHEN AwayTeam = 'Man United' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Man United' THEN HomeCorners
  WHEN AwayTeam = 'Man United' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Man United' THEN HomeYellows
  WHEN AwayTeam = 'Man United' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Man United' THEN HomeReds
  WHEN AwayTeam = 'Man United' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Man United' OR AwayTeam = 'Man United';
GO
CREATE VIEW MiddlesbroughMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Middlesbrough' THEN 'Home'
  WHEN AwayTeam = 'Middlesbrough' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN FTHomeGoals
  WHEN AwayTeam = 'Middlesbrough' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Middlesbrough' THEN FTAwayGoals
    WHEN AwayTeam = 'Middlesbrough' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Middlesbrough' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Middlesbrough' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Middlesbrough' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Middlesbrough' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HTHomeGoals
  WHEN AwayTeam = 'Middlesbrough' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Middlesbrough' THEN HTAwayGoals
    WHEN AwayTeam = 'Middlesbrough' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HomeShotsOT
  WHEN AwayTeam = 'Middlesbrough' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HomeFouls
  WHEN AwayTeam = 'Middlesbrough' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HomeCorners
  WHEN AwayTeam = 'Middlesbrough' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HomeYellows
  WHEN AwayTeam = 'Middlesbrough' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Middlesbrough' THEN HomeReds
  WHEN AwayTeam = 'Middlesbrough' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Middlesbrough' OR AwayTeam = 'Middlesbrough';
GO
CREATE VIEW NewcastleMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Newcastle' THEN 'Home'
  WHEN AwayTeam = 'Newcastle' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN FTHomeGoals
  WHEN AwayTeam = 'Newcastle' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Newcastle' THEN FTAwayGoals
    WHEN AwayTeam = 'Newcastle' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Newcastle' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Newcastle' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Newcastle' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Newcastle' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HTHomeGoals
  WHEN AwayTeam = 'Newcastle' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Newcastle' THEN HTAwayGoals
    WHEN AwayTeam = 'Newcastle' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HomeShotsOT
  WHEN AwayTeam = 'Newcastle' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HomeFouls
  WHEN AwayTeam = 'Newcastle' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HomeCorners
  WHEN AwayTeam = 'Newcastle' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HomeYellows
  WHEN AwayTeam = 'Newcastle' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Newcastle' THEN HomeReds
  WHEN AwayTeam = 'Newcastle' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Newcastle' OR AwayTeam = 'Newcastle';
GO
CREATE VIEW NorwichMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Norwich' THEN 'Home'
  WHEN AwayTeam = 'Norwich' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Norwich' THEN FTHomeGoals
  WHEN AwayTeam = 'Norwich' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Norwich' THEN FTAwayGoals
    WHEN AwayTeam = 'Norwich' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Norwich' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Norwich' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Norwich' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Norwich' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HTHomeGoals
  WHEN AwayTeam = 'Norwich' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Norwich' THEN HTAwayGoals
    WHEN AwayTeam = 'Norwich' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HomeShotsOT
  WHEN AwayTeam = 'Norwich' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HomeFouls
  WHEN AwayTeam = 'Norwich' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HomeCorners
  WHEN AwayTeam = 'Norwich' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HomeYellows
  WHEN AwayTeam = 'Norwich' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Norwich' THEN HomeReds
  WHEN AwayTeam = 'Norwich' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Norwich' OR AwayTeam = 'Norwich';
GO
CREATE VIEW NottinghamForestMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Nottingham Forest' THEN 'Home'
  WHEN AwayTeam = 'Nottingham Forest' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN FTHomeGoals
  WHEN AwayTeam = 'Nottingham Forest' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Nottingham Forest' THEN FTAwayGoals
    WHEN AwayTeam = 'Nottingham Forest' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Nottingham Forest' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Nottingham Forest' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Nottingham Forest' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Nottingham Forest' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HTHomeGoals
  WHEN AwayTeam = 'Nottingham Forest' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Nottingham Forest' THEN HTAwayGoals
    WHEN AwayTeam = 'Nottingham Forest' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HomeShotsOT
  WHEN AwayTeam = 'Nottingham Forest' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HomeFouls
  WHEN AwayTeam = 'Nottingham Forest' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HomeCorners
  WHEN AwayTeam = 'Nottingham Forest' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HomeYellows
  WHEN AwayTeam = 'Nottingham Forest' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Nottingham Forest' THEN HomeReds
  WHEN AwayTeam = 'Nottingham Forest' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Nottingham Forest' OR AwayTeam = 'Nottingham Forest';
GO
CREATE VIEW PortsmouthMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Portsmouth' THEN 'Home'
  WHEN AwayTeam = 'Portsmouth' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN FTHomeGoals
  WHEN AwayTeam = 'Portsmouth' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Portsmouth' THEN FTAwayGoals
    WHEN AwayTeam = 'Portsmouth' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Portsmouth' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Portsmouth' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Portsmouth' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Portsmouth' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HTHomeGoals
  WHEN AwayTeam = 'Portsmouth' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Portsmouth' THEN HTAwayGoals
    WHEN AwayTeam = 'Portsmouth' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HomeShotsOT
  WHEN AwayTeam = 'Portsmouth' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HomeFouls
  WHEN AwayTeam = 'Portsmouth' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HomeCorners
  WHEN AwayTeam = 'Portsmouth' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HomeYellows
  WHEN AwayTeam = 'Portsmouth' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Portsmouth' THEN HomeReds
  WHEN AwayTeam = 'Portsmouth' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Portsmouth' OR AwayTeam = 'Portsmouth';
GO
CREATE VIEW QPRMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'QPR' THEN 'Home'
  WHEN AwayTeam = 'QPR' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'QPR' THEN FTHomeGoals
  WHEN AwayTeam = 'QPR' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'QPR' THEN FTAwayGoals
    WHEN AwayTeam = 'QPR' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'QPR' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'QPR' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'QPR' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'QPR' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'QPR' THEN HTHomeGoals
  WHEN AwayTeam = 'QPR' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'QPR' THEN HTAwayGoals
    WHEN AwayTeam = 'QPR' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'QPR' THEN HomeShotsOT
  WHEN AwayTeam = 'QPR' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'QPR' THEN HomeFouls
  WHEN AwayTeam = 'QPR' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'QPR' THEN HomeCorners
  WHEN AwayTeam = 'QPR' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'QPR' THEN HomeYellows
  WHEN AwayTeam = 'QPR' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'QPR' THEN HomeReds
  WHEN AwayTeam = 'QPR' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'QPR' OR AwayTeam = 'QPR';
GO
CREATE VIEW ReadingMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Reading' THEN 'Home'
  WHEN AwayTeam = 'Reading' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Reading' THEN FTHomeGoals
  WHEN AwayTeam = 'Reading' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Reading' THEN FTAwayGoals
    WHEN AwayTeam = 'Reading' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Reading' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Reading' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Reading' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Reading' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Reading' THEN HTHomeGoals
  WHEN AwayTeam = 'Reading' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Reading' THEN HTAwayGoals
    WHEN AwayTeam = 'Reading' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Reading' THEN HomeShotsOT
  WHEN AwayTeam = 'Reading' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Reading' THEN HomeFouls
  WHEN AwayTeam = 'Reading' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Reading' THEN HomeCorners
  WHEN AwayTeam = 'Reading' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Reading' THEN HomeYellows
  WHEN AwayTeam = 'Reading' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Reading' THEN HomeReds
  WHEN AwayTeam = 'Reading' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Reading' OR AwayTeam = 'Reading';
GO
CREATE VIEW SheffieldUtdMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Sheffield United' THEN 'Home'
  WHEN AwayTeam = 'Sheffield United' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN FTHomeGoals
  WHEN AwayTeam = 'Sheffield United' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Sheffield United' THEN FTAwayGoals
    WHEN AwayTeam = 'Sheffield United' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Sheffield United' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Sheffield United' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Sheffield United' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Sheffield United' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HTHomeGoals
  WHEN AwayTeam = 'Sheffield United' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Sheffield United' THEN HTAwayGoals
    WHEN AwayTeam = 'Sheffield United' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HomeShotsOT
  WHEN AwayTeam = 'Sheffield United' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HomeFouls
  WHEN AwayTeam = 'Sheffield United' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HomeCorners
  WHEN AwayTeam = 'Sheffield United' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HomeYellows
  WHEN AwayTeam = 'Sheffield United' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Sheffield United' THEN HomeReds
  WHEN AwayTeam = 'Sheffield United' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Sheffield United' OR AwayTeam = 'Sheffield United';
GO
CREATE VIEW SouthamptonMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Southampton' THEN 'Home'
  WHEN AwayTeam = 'Southampton' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Southampton' THEN FTHomeGoals
  WHEN AwayTeam = 'Southampton' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Southampton' THEN FTAwayGoals
    WHEN AwayTeam = 'Southampton' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Southampton' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Southampton' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Southampton' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Southampton' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HTHomeGoals
  WHEN AwayTeam = 'Southampton' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Southampton' THEN HTAwayGoals
    WHEN AwayTeam = 'Southampton' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HomeShotsOT
  WHEN AwayTeam = 'Southampton' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HomeFouls
  WHEN AwayTeam = 'Southampton' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HomeCorners
  WHEN AwayTeam = 'Southampton' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HomeYellows
  WHEN AwayTeam = 'Southampton' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Southampton' THEN HomeReds
  WHEN AwayTeam = 'Southampton' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Southampton' OR AwayTeam = 'Southampton';
GO
CREATE VIEW StokeMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Stoke' THEN 'Home'
  WHEN AwayTeam = 'Stoke' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Stoke' THEN FTHomeGoals
  WHEN AwayTeam = 'Stoke' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Stoke' THEN FTAwayGoals
    WHEN AwayTeam = 'Stoke' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Stoke' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Stoke' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Stoke' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Stoke' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HTHomeGoals
  WHEN AwayTeam = 'Stoke' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Stoke' THEN HTAwayGoals
    WHEN AwayTeam = 'Stoke' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeShotsOT
  WHEN AwayTeam = 'Stoke' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeFouls
  WHEN AwayTeam = 'Stoke' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeCorners
  WHEN AwayTeam = 'Stoke' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeYellows
  WHEN AwayTeam = 'Stoke' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeReds
  WHEN AwayTeam = 'Stoke' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Stoke' OR AwayTeam = 'Stoke';
GO
CREATE VIEW StokeMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Stoke' THEN 'Home'
  WHEN AwayTeam = 'Stoke' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Stoke' THEN FTHomeGoals
  WHEN AwayTeam = 'Stoke' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Stoke' THEN FTAwayGoals
    WHEN AwayTeam = 'Stoke' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Stoke' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Stoke' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Stoke' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Stoke' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HTHomeGoals
  WHEN AwayTeam = 'Stoke' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Stoke' THEN HTAwayGoals
    WHEN AwayTeam = 'Stoke' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeShotsOT
  WHEN AwayTeam = 'Stoke' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeFouls
  WHEN AwayTeam = 'Stoke' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeCorners
  WHEN AwayTeam = 'Stoke' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeYellows
  WHEN AwayTeam = 'Stoke' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Stoke' THEN HomeReds
  WHEN AwayTeam = 'Stoke' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Stoke' OR AwayTeam = 'Stoke';
GO
CREATE VIEW SunderlandMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Sunderland' THEN 'Home'
  WHEN AwayTeam = 'Sunderland' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN FTHomeGoals
  WHEN AwayTeam = 'Sunderland' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Sunderland' THEN FTAwayGoals
    WHEN AwayTeam = 'Sunderland' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Sunderland' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Sunderland' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Sunderland' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Sunderland' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HTHomeGoals
  WHEN AwayTeam = 'Sunderland' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Sunderland' THEN HTAwayGoals
    WHEN AwayTeam = 'Sunderland' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HomeShotsOT
  WHEN AwayTeam = 'Sunderland' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HomeFouls
  WHEN AwayTeam = 'Sunderland' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HomeCorners
  WHEN AwayTeam = 'Sunderland' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HomeYellows
  WHEN AwayTeam = 'Sunderland' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Sunderland' THEN HomeReds
  WHEN AwayTeam = 'Sunderland' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Sunderland' OR AwayTeam = 'Sunderland';
GO
CREATE VIEW SwanseaMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Swansea' THEN 'Home'
  WHEN AwayTeam = 'Swansea' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Swansea' THEN FTHomeGoals
  WHEN AwayTeam = 'Swansea' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Swansea' THEN FTAwayGoals
    WHEN AwayTeam = 'Swansea' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Swansea' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Swansea' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Swansea' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Swansea' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HTHomeGoals
  WHEN AwayTeam = 'Swansea' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Swansea' THEN HTAwayGoals
    WHEN AwayTeam = 'Swansea' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HomeShotsOT
  WHEN AwayTeam = 'Swansea' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HomeFouls
  WHEN AwayTeam = 'Swansea' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HomeCorners
  WHEN AwayTeam = 'Swansea' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HomeYellows
  WHEN AwayTeam = 'Swansea' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Swansea' THEN HomeReds
  WHEN AwayTeam = 'Swansea' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Swansea' OR AwayTeam = 'Swansea';
GO
CREATE VIEW TottenhamMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Tottenham' THEN 'Home'
  WHEN AwayTeam = 'Tottenham' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN FTHomeGoals
  WHEN AwayTeam = 'Tottenham' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Tottenham' THEN FTAwayGoals
    WHEN AwayTeam = 'Tottenham' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Tottenham' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Tottenham' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Tottenham' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Tottenham' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HTHomeGoals
  WHEN AwayTeam = 'Tottenham' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Tottenham' THEN HTAwayGoals
    WHEN AwayTeam = 'Tottenham' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HomeShotsOT
  WHEN AwayTeam = 'Tottenham' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HomeFouls
  WHEN AwayTeam = 'Tottenham' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HomeCorners
  WHEN AwayTeam = 'Tottenham' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HomeYellows
  WHEN AwayTeam = 'Tottenham' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Tottenham' THEN HomeReds
  WHEN AwayTeam = 'Tottenham' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Tottenham' OR AwayTeam = 'Tottenham';
GO
CREATE VIEW WatfordMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Watford' THEN 'Home'
  WHEN AwayTeam = 'Watford' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Watford' THEN FTHomeGoals
  WHEN AwayTeam = 'Watford' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Watford' THEN FTAwayGoals
    WHEN AwayTeam = 'Watford' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Watford' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Watford' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Watford' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Watford' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Watford' THEN HTHomeGoals
  WHEN AwayTeam = 'Watford' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Watford' THEN HTAwayGoals
    WHEN AwayTeam = 'Watford' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Watford' THEN HomeShotsOT
  WHEN AwayTeam = 'Watford' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Watford' THEN HomeFouls
  WHEN AwayTeam = 'Watford' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Watford' THEN HomeCorners
  WHEN AwayTeam = 'Watford' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Watford' THEN HomeYellows
  WHEN AwayTeam = 'Watford' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Watford' THEN HomeReds
  WHEN AwayTeam = 'Watford' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Watford' OR AwayTeam = 'Watford';
GO
CREATE VIEW WestBromMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'West Brom' THEN 'Home'
  WHEN AwayTeam = 'West Brom' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'West Brom' THEN FTHomeGoals
  WHEN AwayTeam = 'West Brom' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'West Brom' THEN FTAwayGoals
    WHEN AwayTeam = 'West Brom' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'West Brom' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'West Brom' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'West Brom' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'West Brom' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HTHomeGoals
  WHEN AwayTeam = 'West Brom' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'West Brom' THEN HTAwayGoals
    WHEN AwayTeam = 'West Brom' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HomeShotsOT
  WHEN AwayTeam = 'West Brom' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HomeFouls
  WHEN AwayTeam = 'West Brom' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HomeCorners
  WHEN AwayTeam = 'West Brom' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HomeYellows
  WHEN AwayTeam = 'West Brom' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'West Brom' THEN HomeReds
  WHEN AwayTeam = 'West Brom' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'West Brom' OR AwayTeam = 'West Brom';
GO
CREATE VIEW WestHamMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'West Ham' THEN 'Home'
  WHEN AwayTeam = 'West Ham' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'West Ham' THEN FTHomeGoals
  WHEN AwayTeam = 'West Ham' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'West Ham' THEN FTAwayGoals
    WHEN AwayTeam = 'West Ham' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'West Ham' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'West Ham' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'West Ham' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'West Ham' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HTHomeGoals
  WHEN AwayTeam = 'West Ham' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'West Ham' THEN HTAwayGoals
    WHEN AwayTeam = 'West Ham' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HomeShotsOT
  WHEN AwayTeam = 'West Ham' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HomeFouls
  WHEN AwayTeam = 'West Ham' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HomeCorners
  WHEN AwayTeam = 'West Ham' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HomeYellows
  WHEN AwayTeam = 'West Ham' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'West Ham' THEN HomeReds
  WHEN AwayTeam = 'West Ham' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'West Ham' OR AwayTeam = 'West Ham';
GO
CREATE VIEW WiganMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Wigan' THEN 'Home'
  WHEN AwayTeam = 'Wigan' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Wigan' THEN FTHomeGoals
  WHEN AwayTeam = 'Wigan' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Wigan' THEN FTAwayGoals
    WHEN AwayTeam = 'Wigan' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Wigan' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Wigan' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Wigan' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Wigan' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HTHomeGoals
  WHEN AwayTeam = 'Wigan' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Wigan' THEN HTAwayGoals
    WHEN AwayTeam = 'Wigan' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HomeShotsOT
  WHEN AwayTeam = 'Wigan' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HomeFouls
  WHEN AwayTeam = 'Wigan' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HomeCorners
  WHEN AwayTeam = 'Wigan' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HomeYellows
  WHEN AwayTeam = 'Wigan' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Wigan' THEN HomeReds
  WHEN AwayTeam = 'Wigan' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Wigan' OR AwayTeam = 'Wigan';
GO
CREATE VIEW WolvesMatchStats AS
SELECT
Date,
CASE
  WHEN HomeTeam = 'Wolves' THEN 'Home'
  WHEN AwayTeam = 'Wolves' THEN 'Away'
  ELSE NULL
END AS Venue,
CASE 
  WHEN HomeTeam = 'Wolves' THEN FTHomeGoals
  WHEN AwayTeam = 'Wolves' THEN FTAwayGoals
  ELSE NULL
END AS GoalsScoredFT,
CASE 
    WHEN HomeTeam = 'Wolves' THEN FTAwayGoals
    WHEN AwayTeam = 'Wolves' THEN FTHomeGoals
    ELSE NULL
END AS GoalsConcededFT,
CASE
  WHEN HomeTeam = 'Wolves' AND FTResult = 'H' THEN 'Win'
  WHEN AwayTeam = 'Wolves' AND FTResult = 'A' THEN 'Win'
  WHEN HomeTeam = 'Wolves' AND FTResult = 'A' THEN 'Loss'
  WHEN AwayTeam = 'Wolves' AND FTResult = 'H' THEN 'Loss'
  ELSE 'Draw'
END AS FTResult,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HTHomeGoals
  WHEN AwayTeam = 'Wolves' THEN HTAwayGoals
  ELSE NULL
END AS GoalsScoredHT,
CASE 
    WHEN HomeTeam = 'Wolves' THEN HTAwayGoals
    WHEN AwayTeam = 'Wolves' THEN HTHomeGoals
    ELSE NULL
  END AS GoalsConcededHT,
Referee,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HomeShotsOT
  WHEN AwayTeam = 'Wolves' THEN AwayShotsOT
  ELSE NULL
END AS ShotsOT,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HomeFouls
  WHEN AwayTeam = 'Wolves' THEN AwayFouls
  ELSE NULL
END AS Fouls,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HomeCorners
  WHEN AwayTeam = 'Wolves' THEN AwayCorners
  ELSE NULL
END AS Corners,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HomeYellows
  WHEN AwayTeam = 'Wolves' THEN AwayYellows
  ELSE NULL
END AS Yellows,
CASE 
  WHEN HomeTeam = 'Wolves' THEN HomeReds
  WHEN AwayTeam = 'Wolves' THEN AwayReds
  ELSE NULL
END AS Reds
FROM AllMatches
WHERE HomeTeam = 'Wolves' OR AwayTeam = 'Wolves';
