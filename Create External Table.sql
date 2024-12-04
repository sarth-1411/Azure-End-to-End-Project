CREATE DATABASE SCOPED CREDENTIAL cred_sarth
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://adventureworkstorageproj.blob.core.windows.net/silver',
    CREDENTIAL = cred_sarth
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://adventureworkstorageproj.blob.core.windows.net/gold',
    CREDENTIAL = cred_sarth
)

CREATE EXTERNAL FILE FORMAT format_parqut
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-- CREATE EXTERNAL TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parqut
)

AS
SELECT * FROM gold.sales

SELECT * from gold.extsales












