


USE HTLN_Sandbox;

GO


CREATE TABLE dbo.ItisLongNames
(
  tsn             INT     NOT NULL,
  scientificname  NVARCHAR(100) NOT NULL
);

GO


-- bulk insert csv file

BULK INSERT dbo.ItisLongNames
FROM 'C:\Users\GRowell\HTLN-BreedingBird-Data-Package\src\Itis_longnames.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n' );


SELECT * FROM dbo.ItisLongNames;








    