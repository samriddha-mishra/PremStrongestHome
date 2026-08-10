/* ============================================================
   Script Name : formula_creation.sql
   Description : Creates the Z scores which will be used to create the total metric. split into home and away as part of creating the final metric
   Author      : Samriddha Mishra
   Created     : 2026-08-09
   Modified    : 
   Notes       : Please make the manipulations before running this file, and the home and away split is on purpose
   ============================================================ */




SELECT
    CASE WHEN 
    stat.FTResult = 'H' THEN 3
    WHEN stat.FTResult = 'D' THEN 1
    ELSE 0
    END AS PointIndicator,
    ROUND((stat.FTHomeGoals - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0),2) AS GoalsScored_ZScore,
    ROUND((stat.FTAwayGoals - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0),2) AS GoalsConceded_ZScore,
    ROUND((stat.HomeShotsOT - avg.YearlyAverageShotsOT) / NULLIF(stddev.YearlyStandardDeviationShotsOT, 0),2) AS ShotsOnTarget_ZScore,
    ROUND((stat.HomeFouls - avg.YearlyAverageFouls) / NULLIF(stddev.YearlyStandardDeviationFouls, 0),2) AS Fouls_ZScore,
    ROUND((stat.HomeCorners - avg.YearlyAverageCorners) / NULLIF(stddev.YearlyStandardDeviationCorners, 0),2) AS Corners_ZScore,
    ROUND((stat.HomeYellows - avg.YearlyAverageYellows) / NULLIF(stddev.YearlyStandardDeviationYellows, 0),2) AS Yellows_ZScore,
    ROUND((stat.HomeReds - avg.YearlyAverageReds) / NULLIF(stddev.YearlyStandardDeviationReds, 0),2) AS Reds_ZScore
FROM AllMatches stat
CROSS JOIN YearlyAverages avg 
CROSS JOIN YearlyStandardDeviations stddev;

SELECT
    CASE WHEN 
    stat.FTResult = 'A' THEN 3
    WHEN stat.FTResult = 'D' THEN 1
    ELSE 0
    END AS PointIndicator,
    ROUND((stat.FTAwayGoals - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0),2) AS GoalsScored_ZScore,
    ROUND((stat.FTHomeGoals - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0),2) AS GoalsConceded_ZScore,
    ROUND((stat.AwayShotsOT - avg.YearlyAverageShotsOT) / NULLIF(stddev.YearlyStandardDeviationShotsOT, 0),2) AS ShotsOnTarget_ZScore,
    ROUND((stat.AwayFouls - avg.YearlyAverageFouls) / NULLIF(stddev.YearlyStandardDeviationFouls, 0),2) AS Fouls_ZScore,
    ROUND((stat.AwayCorners - avg.YearlyAverageCorners) / NULLIF(stddev.YearlyStandardDeviationCorners, 0),2) AS Corners_ZScore,
    ROUND((stat.AwayYellows - avg.YearlyAverageYellows) / NULLIF(stddev.YearlyStandardDeviationYellows, 0),2) AS Yellows_ZScore,
    ROUND((stat.AwayReds - avg.YearlyAverageReds) / NULLIF(stddev.YearlyStandardDeviationReds, 0),2) AS Reds_ZScore
FROM AllMatches stat
CROSS JOIN YearlyAverages avg 
CROSS JOIN YearlyStandardDeviations stddev;
