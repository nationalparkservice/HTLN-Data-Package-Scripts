
USE HTLN_LandBirds;

SELECT L.LocationName AS Plot, Left(E.EventDateTime,11) AS EventDate, C.ContactName

FROM dbo.Plot AS L 

  JOIN dbo.VegetationSamplingEvent AS E
  ON L.ID = E.PlotID
  JOIN dbo.VegetationObserver As O
  ON E.ID = O.VegetationSamplingEventID
  JOIN dbo.Contact AS C
  ON C.ID = O.ContactID


/*
WHERE ((LEFT(L.LocationName,4) = 'EFMO') OR (LEFT(L.LocationName,4) = 'HEHO') 
     OR (LEFT(L.LocationName,4) = 'HOME') OR (LEFT(L.LocationName,4) = 'PIPE')) 
*/

WHERE (E.EventDateTime < '20230101')


-- (E.EventDateTime > '20220101')


ORDER BY Plot, EventDate, ContactName
