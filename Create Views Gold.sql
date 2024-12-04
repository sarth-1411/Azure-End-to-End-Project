-- CREATE VIEW CALENDER --
CREATE VIEW gold.territories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://adventureworkstorageproj.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    ) as QUERY1