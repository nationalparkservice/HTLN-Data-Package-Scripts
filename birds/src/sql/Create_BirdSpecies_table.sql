


USE HTLN_Sandbox;

GO

/*

-- Make this conditional on not created

CREATE TABLE dbo.BirdSpecies 
(
  speciesid       INT		        NOT NULL IDENTITY,
  aoucode         NVARCHAR(4)   NOT NULL,
  tsn             INT		        NOT NULL,
  commonname      NVARCHAR(60)  NOT NULL,
  scientificname  NVARCHAR(100) NOT NULL,
  family          NVARCHAR(60)  NOT NULL,
  CONSTRAINT PK_BirdSpecies PRIMARY KEY(speciesid)
);

GO

*/
-- bulk insert SpeciesNames.csv

--SET IDENTITY_INSERT dbo.BirdSpecies ON;
BULK INSERT dbo.BirdSpecies
FROM 'C:\Users\GRowell\HTLN-BreedingBird-Data-Package\src\SpeciesNames.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n' );




    