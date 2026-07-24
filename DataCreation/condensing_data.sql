/* ============================================================
   Script Name : condensing_data.sql
   Description : Condenses all data from 25 seasons into one super-table
   Author      : Samriddha Mishra
   Created     : 2026-07-23
   Modified    : 
   Notes       : All queries pulled from this, aside from ones which will be used to conduct isolated experiments
   ============================================================ */



CREATE TABLE AllMatches (
    Date      DATE,
    HomeTeam  VARCHAR(30) NOT NULL,
    AwayTeam  VARCHAR(30) NOT NULL,
    FTHomeGoals     SMALLINT,        -- Full Time Home Goals
    FTAwayGoals     SMALLINT,        -- Full Time Away Goals
    FTResult       CHAR(1),         -- Full Time Result: H/D/A
    HTHomeGoals      SMALLINT,        -- Half Time Home Goals
    HTAwayGoals      SMALLINT,        -- Half Time Away Goals
    HTResult       CHAR(1),         -- Half Time Result: H/D/A
    Referee   VARCHAR(30),
    HomeShots        SMALLINT,        -- Home Shots
    AwayShots       SMALLINT,        -- Away Shots
    HomeShotsOT       SMALLINT,        -- Home Shots on Target
    AwayShotsOT       SMALLINT,        -- Away Shots on Target
    HomeFouls        SMALLINT,        -- Home Fouls
    AwayFouls        SMALLINT,        -- Away Fouls
    HomeCorners        SMALLINT,        -- Home Corners
    AwayCornes        SMALLINT,        -- Away Corners
    HomeYellows       SMALLINT,        -- Home Yellow Cards
    AwayYellows        SMALLINT,        -- Away Yellow Cards
    HomeReds        SMALLINT,        -- Home Red Cards
    AwayReds        SMALLINT         -- Away Red Cards
);

INSERT INTO AllMatches
SELECT * FROM PremSeason0001
UNION
SELECT * FROM PremSeason0102
UNION
SELECT * FROM PremSeason0203
UNION
SELECT * FROM PremSeason0304
UNION
SELECT * FROM PremSeason0405
UNION
SELECT * FROM PremSeason0506
UNION
SELECT * FROM PremSeason0607
UNION
SELECT * FROM PremSeason0708
UNION
SELECT * FROM PremSeason0809
UNION
SELECT * FROM PremSeason0910
UNION
SELECT * FROM PremSeason1011
UNION
SELECT * FROM PremSeason1112
UNION
SELECT * FROM PremSeason1213
UNION
SELECT * FROM PremSeason1314
UNION
SELECT * FROM PremSeason1415
UNION
SELECT * FROM PremSeason1516
UNION
SELECT * FROM PremSeason1617
UNION
SELECT * FROM PremSeason1718
UNION
SELECT * FROM PremSeason1819
UNION
SELECT * FROM PremSeason1920
UNION
SELECT * FROM PremSeason2021
UNION
SELECT * FROM PremSeason2122
UNION
SELECT * FROM PremSeason2223
UNION
SELECT * FROM PremSeason2324
UNION
SELECT * FROM PremSeason2425
UNION
SELECT * FROM PremSeason2526;
