


USE HTLN_Sandbox;

GO

-- SELECT * FROM dbo.BirdSpecies;

-- GO


-- SELECT * FROM dbo.ItisLongNames;

-- GO



SELECT I.tsn AS ItisTsn, I.scientificname AS ItisSname, B.tsn AS LandbirdTsn, B.scientificname AS LandbirdSname
FROM dbo.ItisLongNames AS I
JOIN dbo.BirdSpecies AS B
ON I.tsn = B.tsn 

GO

