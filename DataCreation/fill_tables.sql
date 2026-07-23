/* ============================================================
   Script Name : fill_tables.sql
   Description : Bulk loads the created files with CSV files 
   Author      : Samriddha Mishra
   Created     : 2026-07-22
   Modified    : 
   Notes       : Source file uses quoted fields for referee
                 names containing commas (e.g. "Barber, G. P.")
                 — requires FORMAT = 'CSV' with FIELDQUOTE.
                 File path converted using docker cp /Users/samriddhamishra/Downloads/PremDataSets/PremSeason0001.csv sqlserver:/var/opt/mssql/import/PremSeason0001.csv 
                 (swapped for each file name)
                 Coded on Docker SQL Server on Mac, so above method only applies when converting for Docker. Please use the correct filepath depending on your machine and app, and 
                 swap out what follows FROM with that
   ============================================================ */

BULK INSERT PremSeason0001 
FROM '/var/opt/mssql/import/PremSeason0001.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

Select*
FROM PremSeason0102;

BULK INSERT PremSeason0102 
FROM '/var/opt/mssql/import/PremSeason0102.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0203 
FROM '/var/opt/mssql/import/PremSeason0203.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0304 
FROM '/var/opt/mssql/import/PremSeason0304.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0405 
FROM '/var/opt/mssql/import/PremSeason0405.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0506 
FROM '/var/opt/mssql/import/PremSeason0506.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0607 
FROM '/var/opt/mssql/import/PremSeason0607.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0708 
FROM '/var/opt/mssql/import/PremSeason0708.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0809
FROM '/var/opt/mssql/import/PremSeason0809.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason0910 
FROM '/var/opt/mssql/import/PremSeason0910.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1011 
FROM '/var/opt/mssql/import/PremSeason1011.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1112 
FROM '/var/opt/mssql/import/PremSeason1112.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1213 
FROM '/var/opt/mssql/import/PremSeason1213.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);


BULK INSERT PremSeason1314 
FROM '/var/opt/mssql/import/PremSeason1314.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);


BULK INSERT PremSeason1415 
FROM '/var/opt/mssql/import/PremSeason1415.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);


BULK INSERT PremSeason1516 
FROM '/var/opt/mssql/import/PremSeason1516.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1617
FROM '/var/opt/mssql/import/PremSeason1617.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1718 
FROM '/var/opt/mssql/import/PremSeason1718.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason1920 
FROM '/var/opt/mssql/import/PremSeason1920.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2021 
FROM '/var/opt/mssql/import/PremSeason2021.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2122 
FROM '/var/opt/mssql/import/PremSeason2122.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2223 
FROM '/var/opt/mssql/import/PremSeason2223.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2324 
FROM '/var/opt/mssql/import/PremSeason2324.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2425 
FROM '/var/opt/mssql/import/PremSeason2425.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

BULK INSERT PremSeason2526 
FROM '/var/opt/mssql/import/PremSeason2526.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);



