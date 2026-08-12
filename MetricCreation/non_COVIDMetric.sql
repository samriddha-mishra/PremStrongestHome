/* ============================================================
   Script Name : non_COVIDMetric.sql
   Description : this is the file which creates a table measuring everyone's home field through a metric
   Author      : Samriddha Mishra
   Created     : 2026-08-11
   Modified    : 
   Notes       : this assumed the COVID season will average out due to the other season (it does). For details on COVID specific times see the other file in this folder
   ============================================================ */


WITH CombinedMatchStats AS (
    SELECT 'Arsenal' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ArsenalMatchStats
    UNION ALL
    SELECT 'Aston Villa' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM AstonVillaMatchStats
    UNION ALL
    SELECT 'Birmingham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BirminghamMatchStats
    UNION ALL
    SELECT 'Blackburn Rovers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BlackburnMatchStats
    UNION ALL
    SELECT 'Blackpool' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BlackpoolMatchStats
    UNION ALL
    SELECT 'Bolton Wanderers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BoltonMatchStats
    UNION ALL
    SELECT 'Bournemouth' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BournemouthMatchStats
    UNION ALL
    SELECT 'Bradford City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BradfordMatchStats
    UNION ALL
    SELECT 'Brentford' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BrentfordMatchStats  
    UNION ALL
    SELECT 'Brighton and Hove Albion' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BrightonMatchStats
    UNION ALL
    SELECT 'Burnley' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM BurnleyMatchStats
    UNION ALL
    SELECT 'Cardiff City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CardiffMatchStats
    UNION ALL
    SELECT 'Charlton Athletic' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CharltonMatchStats
    UNION ALL
    SELECT 'Chelsea' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ChelseaMatchStats
    UNION ALL
    SELECT 'Coventry City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CoventryMatchStats
    UNION ALL
    SELECT 'Crystal Palace' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM CrystalPalaceMatchStats
    UNION ALL
    SELECT 'Derby County' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM DerbyMatchStats
    UNION ALL
    SELECT 'Everton' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM EvertonMatchStats
    UNION ALL
    SELECT 'Fulham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM FulhamMatchStats
    UNION ALL
    SELECT 'Huddersfield Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM HuddersfieldMatchStats
    UNION ALL
    SELECT 'Hull City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM HullMatchStats
    UNION ALL
    SELECT 'Ipswich Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM IpswichMatchStats
    UNION ALL
    SELECT 'Leeds United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LeedsMatchStats
    UNION ALL
    SELECT 'Leicester City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LeicesterMatchStats
    UNION ALL
    SELECT 'Liverpool' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LiverpoolMatchStats
    UNION ALL
    SELECT 'Luton Town' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM LutonMatchStats
    UNION ALL
    SELECT 'Manchester City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ManCityMatchStats
    UNION ALL
    SELECT 'Manchester United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ManUnitedMatchStats
    UNION ALL
    SELECT 'Middlesbrough' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM MiddlesbroughMatchStats
    UNION ALL
    SELECT 'Newcastle United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NewcastleMatchStats
    UNION ALL
    SELECT 'Norwich City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NorwichMatchStats
    UNION ALL
    SELECT 'Nottingham Forest' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM NottinghamForestMatchStats
    UNION ALL
    SELECT 'Portsmouth' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM PortsmouthMatchStats
    UNION ALL
    SELECT 'Queens Park Rangers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM QPRMatchStats
    UNION ALL
    SELECT 'Reading' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM ReadingMatchStats 
    UNION ALL
    SELECT 'Sheffield United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SheffieldUtdMatchStats
    UNION ALL
    SELECT 'Southampton' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SouthamptonMatchStats
    UNION ALL
    SELECT 'Stoke City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM StokeMatchStats
    UNION ALL
    SELECT 'Sunderland' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SunderlandMatchStats
    UNION ALL
    SELECT 'Swansea City' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM SwanseaMatchStats
    UNION ALL
    SELECT 'Tottenham' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM TottenhamMatchStats
    UNION ALL
    SELECT 'Watford' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WatfordMatchStats 
    UNION ALL
    SELECT 'West Bromwich and Albion' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WestBromMatchStats 
    UNION ALL
    SELECT 'West Ham United' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WestHamMatchStats 
    UNION ALL
    SELECT 'Wigan Athletic' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WiganMatchStats 
    UNION ALL
    SELECT 'Wolverhampton Wanderers' AS TeamName, Venue, GoalsScoredFT, GoalsConcededFT, ShotsOT, Fouls, Corners, Yellows, Reds FROM WolvesMatchStats 
),
CombinedCalculatedZScores AS (
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
    FROM CombinedMatchStats stat
    CROSS JOIN YearlyAverages avg 
    CROSS JOIN YearlyStandardDeviations stddev
),
FieldRatings AS (
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
    FROM CombinedCalculatedZScores
    GROUP BY TeamName
)
SELECT 
    TeamName,
    ROUND(HomeFieldRating, 3) AS HomeFieldRating,
    ROUND(AwayFieldRating, 3) AS AwayFieldRating,
    ROUND((HomeFieldRating - AwayFieldRating), 3) AS HomeFieldAdvantageRating
FROM FieldRatings
ORDER BY HomeFieldAdvantageRating DESC;
