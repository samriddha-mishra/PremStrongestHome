/* ============================================================
   Script Name : col_change.sql
   Description : fixes a column typo in all the tables
   Author      : Samriddha Mishra
   Created     : 2026-07-23
   Modified    : 
   Notes       : 
   ============================================================ */

EXEC sp_rename 'AllMatches.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0001.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0102.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0203.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0304.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0405.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0506.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0607.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0708.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0809.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason0910.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1011.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1112.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1213.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1314.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1415.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1516.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1617.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1718.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1819.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason1920.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2021.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2122.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2223.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2324.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2425.AwayCornes', 'AwayCorners', 'COLUMN';
EXEC sp_rename 'PremSeason2526.AwayCornes', 'AwayCorners', 'COLUMN';
