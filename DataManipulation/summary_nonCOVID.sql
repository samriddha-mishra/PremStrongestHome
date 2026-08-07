/* ============================================================
   Script Name : summary_nonCOVID.sql
   Description : Creates the total mean and standard deviations across whole span, and individual team means, paving the way for z-scores
   Author      : Samriddha Mishra
   Created     : 2026-08-06
   Modified    : 
   Notes       : This will be used to construct the performance metric later on
   ============================================================ */


CREATE VIEW YearlyAverages AS
  SELECT 
  AVG(FTHomeGoals * 1.0) + AVG(FTAwayGoals * 1.0) AS YearlyAverageGoalsFT,
  AVG(HTHomeGoals * 1.0) + AVG(HTAwayGoals * 1.0) AS YearlyAverageGoalsHT,
  AVG(HomeShotsOT * 1.0) + AVG(AwayShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(HomeFouls * 1.0) + AVG(AwayFouls * 1.0) AS YearlyAverageFouls,
  AVG(HomeCorners * 1.0) + AVG(AwayCorners * 1.0) AS YearlyAverageCorners,
  AVG(HomeYellows * 1.0) + AVG(AwayYellows * 1.0) AS YearlyAverageYellows,
  AVG(HomeReds * 1.0) + AVG(AwayReds * 1.0) AS YearlyAverageReds
  FROM AllMatches;
GO

CREATE VIEW YearlyStandardDeviations AS
  SELECT 
  STDEV(FTHomeGoals * 1.0) + STDEV(FTAwayGoals * 1.0) AS YearlyStandardDeviationGoalsFT,
  STDEV(HTHomeGoals * 1.0) + STDEV(HTAwayGoals * 1.0) AS YearlyStandardDeviationGoalsHT,
  STDEV(HomeShotsOT * 1.0) + STDEV(AwayShotsOT * 1.0) AS YearlyStandardDeviationShotsOT,
  STDEV(HomeFouls * 1.0) + STDEV(AwayFouls * 1.0) AS YearlyStandardDeviationFouls,
  STDEV(HomeCorners * 1.0) + STDEV(AwayCorners * 1.0) AS YearlyStandardDeviationCorners,
  STDEV(HomeYellows * 1.0) + STDEV(AwayYellows * 1.0) AS YearlyStandardDeviationYellows,
  STDEV(HomeReds * 1.0) + STDEV(AwayReds * 1.0) AS YearlyStandardDeviationReds
  FROM AllMatches;
GO

CREATE VIEW ArsenalYearlyAverages AS
  SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
  FROM ArsenalMatchStats;
GO

CREATE VIEW AstonVillaYearlyAverages AS
  SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
  FROM AstonVillaMatchStats;
GO

CREATE VIEW BirminghamYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BirminghamMatchStats;
GO

CREATE VIEW BlackburnYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BlackburnMatchStats;
GO

CREATE VIEW BlackpoolYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BlackpoolMatchStats;
GO

CREATE VIEW BoltonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BoltonMatchStats;
GO

CREATE VIEW BournemouthYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BournemouthMatchStats;
GO

CREATE VIEW BradfordYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BradfordMatchStats;
GO

CREATE VIEW BrentfordYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BrentfordMatchStats;
GO

CREATE VIEW BrightonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BrightonMatchStats;
GO

CREATE VIEW BurnleyYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM BurnleyMatchStats;
GO

CREATE VIEW CardiffYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM CardiffMatchStats;
GO

CREATE VIEW CharltonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM CharltonMatchStats;
GO

CREATE VIEW ChelseaYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM ChelseaMatchStats;
GO

CREATE VIEW CoventryYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM CoventryMatchStats;
GO

CREATE VIEW CrystalPalaceYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM CrystalPalaceMatchStats;
GO

CREATE VIEW DerbyYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM DerbyMatchStats;
GO

CREATE VIEW EvertonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM EvertonMatchStats;
GO

CREATE VIEW FulhamYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM FulhamMatchStats;
GO

CREATE VIEW HuddersfieldYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM HuddersfieldMatchStats;
GO

CREATE VIEW HullYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM HullMatchStats;
GO

CREATE VIEW IpswichYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM IpswichMatchStats;
GO

CREATE VIEW LeedsYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM LeedsMatchStats;
GO

CREATE VIEW LeicesterYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM LeicesterMatchStats;
GO

CREATE VIEW LiverpoolYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM LiverpoolMatchStats;
GO

CREATE VIEW LutonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM LutonMatchStats;
GO

CREATE VIEW ManCityYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM ManCityMatchStats;
GO

CREATE VIEW ManUnitedYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM ManUnitedMatchStats;
GO

CREATE VIEW MiddlesbroughYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM MiddlesbroughMatchStats;
GO

CREATE VIEW NewcastleYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM NewcastleMatchStats;
GO

CREATE VIEW NorwichYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM NorwichMatchStats;
GO

CREATE VIEW NottinghamForestYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM NottinghamForestMatchStats;
GO

CREATE VIEW PortsmouthYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM PortsmouthMatchStats;
GO

CREATE VIEW QPRYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM QPRMatchStats;
GO

CREATE VIEW ReadingYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM ReadingMatchStats;
GO

CREATE VIEW SheffieldUtdYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM SheffieldUtdMatchStats;
GO


CREATE VIEW SouthamptonYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM SouthamptonMatchStats;
GO

CREATE VIEW StokeYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM StokeMatchStats;
GO

CREATE VIEW SunderlandYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM SunderlandMatchStats;
GO

CREATE VIEW SwanseaYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM SwanseaMatchStats;
GO

CREATE VIEW TottenhamYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM TottenhamMatchStats;
GO

CREATE VIEW WatfordYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM WatfordMatchStats;
GO

CREATE VIEW WestBromYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM WestBromMatchStats;
GO

CREATE VIEW WestHamYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM WestHamUMatchStats;
GO

CREATE VIEW WiganYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM WiganMatchStats;
GO

CREATE VIEW WolvesYearlyAverages AS
SELECT 
  AVG(GoalsScoredFT * 1.0) AS YearlyAverageGoalsScored,
  AVG(GoalsConcededFT * 1.0) AS YearlyAverageGoalsConceded,
  AVG(GoalsScoredHT * 1.0) AS YearlyAverageGoalsScoredHT,
  AVG(GoalsConcededHT * 1.0) AS YearlyAverageGoalsConcededHT,
  AVG(ShotsOT * 1.0) AS YearlyAverageShotsOT,
  AVG(Fouls * 1.0) AS YearlyAverageFouls,
  AVG(Corners * 1.0) AS YearlyAverageCorners,
  AVG(Yellows * 1.0) AS YearlyAverageYellows,
  AVG(Reds * 1.0) AS YearlyAverageReds
FROM WolvesMatchStats;
GO





