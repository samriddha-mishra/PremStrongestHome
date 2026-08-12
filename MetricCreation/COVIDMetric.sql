/* ============================================================
   Script Name : COVIDMetric.sql
   Description : This measures the performance metric for the COVID times, looking at how things were different with limited or zero fans
   Author      : Samriddha Mishra
   Created     : 2026-08-11
   Modified    : 
   Notes       : This is the metric for the games between June 17,2020 and June 1,2021, as COVID capacity limitations ended after that time period. 
   ============================================================ */


WITH CombinedMatchStatsCOVID AS (
    SELECT 'Arsenal' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ArsenalCOVIDMatches
    UNION ALL
    SELECT 'Aston Villa' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM AstonVillaCOVIDMatches
    UNION ALL
    SELECT 'Birmingham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BirminghamCOVIDMatches
    UNION ALL
    SELECT 'Blackburn Rovers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BlackburnCOVIDMatches
    UNION ALL
    SELECT 'Blackpool' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BlackpoolCOVIDMatches
    UNION ALL
    SELECT 'Bolton Wanderers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BoltonCOVIDMatches
    UNION ALL
    SELECT 'Bournemouth' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BournemouthCOVIDMatches
    UNION ALL
    SELECT 'Bradford City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BradfordCOVIDMatches
    UNION ALL
    SELECT 'Brentford' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BrentfordCOVIDMatches  
    UNION ALL
    SELECT 'Brighton and Hove Albion' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BrightonCOVIDMatches
    UNION ALL
    SELECT 'Burnley' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BurnleyCOVIDMatches
    UNION ALL
    SELECT 'Cardiff City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CardiffCOVIDMatches
    UNION ALL
    SELECT 'Charlton Athletic' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CharltonCOVIDMatches
    UNION ALL
    SELECT 'Chelsea' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ChelseaCOVIDMatches
    UNION ALL
    SELECT 'Coventry City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CoventryCOVIDMatches
    UNION ALL
    SELECT 'Crystal Palace' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CrystalPalaceCOVIDMatches
    UNION ALL
    SELECT 'Derby County' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM DerbyCOVIDMatches
    UNION ALL
    SELECT 'Everton' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM EvertonCOVIDMatches
    UNION ALL
    SELECT 'Fulham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM FulhamCOVIDMatches
    UNION ALL
    SELECT 'Huddersfield Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM HuddersfieldCOVIDMatches
    UNION ALL
    SELECT 'Hull City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM HullCOVIDMatches
    UNION ALL
    SELECT 'Ipswich Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM IpswichCOVIDMatches
    UNION ALL
    SELECT 'Leeds United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LeedsCOVIDMatches
    UNION ALL
    SELECT 'Leicester City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LeicesterCOVIDMatches
    UNION ALL
    SELECT 'Liverpool' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LiverpoolCOVIDMatches
    UNION ALL
    SELECT 'Luton Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LutonCOVIDMatches
    UNION ALL
    SELECT 'Manchester City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ManCityCOVIDMatches
    UNION ALL
    SELECT 'Manchester United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ManUnitedCOVIDMatches
    UNION ALL
    SELECT 'Middlesbrough' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM MiddlesbroughCOVIDMatches
    UNION ALL
    SELECT 'Newcastle United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NewcastleCOVIDMatches
    UNION ALL
    SELECT 'Norwich City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NorwichCOVIDMatches
    UNION ALL
    SELECT 'Nottingham Forest' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NottinghamForestCOVIDMatches
    UNION ALL
    SELECT 'Portsmouth' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM PortsmouthCOVIDMatches
    UNION ALL
    SELECT 'Queens Park Rangers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM QPRCOVIDMatches
    UNION ALL
    SELECT 'Reading' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ReadingCOVIDMatches 
    UNION ALL
    SELECT 'Sheffield United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SheffieldUtdCOVIDMatches
    UNION ALL
    SELECT 'Southampton' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SouthamptonCOVIDMatches
    UNION ALL
    SELECT 'Stoke City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM StokeCOVIDMatches
    UNION ALL
    SELECT 'Sunderland' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SunderlandCOVIDMatches
    UNION ALL
    SELECT 'Swansea City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SwanseaCOVIDMatches
    UNION ALL
    SELECT 'Tottenham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM TottenhamCOVIDMatches
    UNION ALL
    SELECT 'Watford' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WatfordCOVIDMatches 
    UNION ALL
    SELECT 'West Bromwich and Albion' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WestBromCOVIDMatches 
    UNION ALL
    SELECT 'West Ham United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WestHamCOVIDMatches 
    UNION ALL
    SELECT 'Wigan Athletic' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WiganCOVIDMatches 
    UNION ALL
    SELECT 'Wolverhampton Wanderers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WolvesCOVIDMatches 
),
CombinedCalculatedZScoresCOVID AS (
    SELECT
        stat.TeamName,
        stat.Venue,
        ROUND((stat.GoalsScoredFT - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0), 3) AS GoalsScored_ZScore,
        ROUND((stat.GoalsConcededFT - avg.YearlyAverageGoalsFT) / NULLIF(stddev.YearlyStandardDeviationGoalsFT, 0), 3) AS GoalsConceded_ZScore,
        ROUND((stat.ShotsOT - avg.YearlyAverageShotsOT) / NULLIF(stddev.YearlyStandardDeviationShotsOT, 0), 3) AS ShotsOnTarget_ZScore,
        ROUND((stat.Fouls - avg.YearlyAverageFouls) / NULLIF(stddev.YearlyStandardDeviationFouls, 0), 3) AS Fouls_ZScore,
        ROUND((stat.Corners - avg.YearlyAverageCorners) / NULLIF(stddev.YearlyStandardDeviationCorners, 0), 3) AS Corners_ZScore,
        ROUND((stat.Yellows - avg.YearlyAverageYellows) / NULLIF(stddev.YearlyStandardDeviationYellows, 0), 3) AS Yellows_ZScore,
        ROUND((stat.Reds - avg.YearlyAverageReds) / NULLIF(stddev.YearlyStandardDeviationReds, 0), 3) AS Reds_ZScore
    FROM CombinedMatchStatsCOVID stat
    CROSS JOIN YearlyAverages avg 
    CROSS JOIN YearlyStandardDeviations stddev
),
FieldRatingsCOVID AS (
    SELECT
        TeamName,
        -- Home Field Rating Calculation
        (1.51 * AVG(CASE WHEN Venue = 'Home' THEN GoalsScored_ZScore END)) + 
        (-1.54 * AVG(CASE WHEN Venue = 'Home' THEN GoalsConceded_ZScore END)) + 
        (-0.0048 * AVG(CASE WHEN Venue = 'Home' THEN ShotsOnTarget_ZScore END)) + 
        (0.0105 * AVG(CASE WHEN Venue = 'Home' THEN Fouls_ZScore END)) + 
        (-0.043 * AVG(CASE WHEN Venue = 'Home' THEN Corners_ZScore END)) + 
        (0.0073 * AVG(CASE WHEN Venue = 'Home' THEN Yellows_ZScore END)) + 
        (-0.041 * AVG(CASE WHEN Venue = 'Home' THEN Reds_ZScore END)) AS HomeFieldRating,

        -- Away Field Rating Calculation
        (1.64 * AVG(CASE WHEN Venue = 'Away' THEN GoalsScored_ZScore END)) + 
        (-1.31 * AVG(CASE WHEN Venue = 'Away' THEN GoalsConceded_ZScore END)) + 
        (-0.0208 * AVG(CASE WHEN Venue = 'Away' THEN ShotsOnTarget_ZScore END)) + 
        (-0.068 * AVG(CASE WHEN Venue = 'Away' THEN Fouls_ZScore END)) + 
        (-0.043 * AVG(CASE WHEN Venue = 'Away' THEN Corners_ZScore END)) + 
        (-0.017 * AVG(CASE WHEN Venue = 'Away' THEN Yellows_ZScore END)) + 
        (-0.018 * AVG(CASE WHEN Venue = 'Away' THEN Reds_ZScore END)) AS AwayFieldRating
    FROM CombinedCalculatedZScoresCOVID
    GROUP BY TeamName
)
SELECT 
    TeamName,
    ROUND(HomeFieldRating, 3) AS HomeFieldRating,
    ROUND(AwayFieldRating, 3) AS AwayFieldRating,
    ROUND((HomeFieldRating - AwayFieldRating), 3) AS HomeFieldAdvantageRating
FROM FieldRatingsCOVID
ORDER BY HomeFieldAdvantageRating DESC
