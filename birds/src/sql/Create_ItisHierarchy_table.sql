


USE HTLN_Sandbox;

GO


CREATE TABLE dbo.ItisHierarchy
(
  hierarchy_string NVARCHAR(200) NOT NULL,
  TSN             INT     NOT NULL,
  ParentTSN       INT     NOT NULL,
  Hlevel          INT     NOT NULL,
  children_count  INT     NOT NULL
);

GO


-- bulk insert csv file

BULK INSERT dbo.ItisHierarchy
FROM 'C:\Users\GRowell\HTLN-BreedingBird-Data-Package\src\Itis_hierarchy.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n' );


SELECT * FROM dbo.ItisHierarchy;


GO






    