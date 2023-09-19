

USE HTLN_Sandbox;

GO

SELECT I.TSN, I.hierarchy_string, B.tsn AS LandbirdTsn, B.scientificname AS LandbirdSname
FROM dbo.ItisHierarchy AS I
JOIN dbo.BirdSpecies AS B
ON I.TSN = B.tsn 

GO

