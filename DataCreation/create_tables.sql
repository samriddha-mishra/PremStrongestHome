/* ============================================================
   Script Name : create_tables.sql
   Description : Creates tables to hold seasonal Premier League data from 00-01 to 25-26  
   Author      : Samriddha Mishra
   Created     : 2026-07-22
   Modified    : 
   Notes       : Ensure to create the DB before starting up the creation process, otherwise
                 tables will be in wrong DB
   ============================================================ */

CREATE DATABASE HomeFieldDB;

USE HomeFieldDB;

CREATE TABLE PremSeason0001 (
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

CREATE TABLE PremSeason0102 (
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

CREATE TABLE PremSeason0203 (
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

CREATE TABLE PremSeason0304 (
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

CREATE TABLE PremSeason0405 (
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

CREATE TABLE PremSeason0506 (
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

CREATE TABLE PremSeason0607 (
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

CREATE TABLE PremSeason0708 (
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

CREATE TABLE PremSeason0809 (
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

CREATE TABLE PremSeason0910 (
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

CREATE TABLE PremSeason1011 (
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

CREATE TABLE PremSeason1112 (
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

CREATE TABLE PremSeason1213 (
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

CREATE TABLE PremSeason1314 (
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

CREATE TABLE PremSeason1415 (
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

CREATE TABLE PremSeason1516 (
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

CREATE TABLE PremSeason1617 (
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

CREATE TABLE PremSeason1718 (
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

CREATE TABLE PremSeason1819 (
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

CREATE TABLE PremSeason1920 (
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

CREATE TABLE PremSeason2021 (
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

CREATE TABLE PremSeason2122 (
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

CREATE TABLE PremSeason2223 (
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

CREATE TABLE PremSeason2324 (
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

CREATE TABLE PremSeason2425 (
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

CREATE TABLE PremSeason2526 (
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
