

USE ITIS;

SELECT * FROM dbo.hierarchy



SELECT  H.TSN, B.scientificname AS LandbirdSname, 
FROM dbo.hierarchy AS H
JOIN dbo.ItisLongNames AS I
ON H.TSN = I.tsn 




-- SELECT * FROM dbo.longnames

-- SELECT * FROM dbo.longnames



-- SELECT * FROM dbo.taxonomic_units


-- SELECT * FROM dbo.taxon_unit_types