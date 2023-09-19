


USE HTLN_LandBirds;

SELECT L.LocationName AS Plot,  S.SubPlotNumber AS SubPlot, Left(E.EventDateTime,11) AS EventDate, D.Name AS Height, C.Code AS CoverClass 

FROM dbo.Plot AS L 

  JOIN dbo.VegetationSamplingEvent AS E
  ON L.ID = E.PlotID
  JOIN dbo.SubPlot AS S
  ON E.ID = S.VegetationSamplingEventID
  JOIN dbo.HorizontalVegetationProfile AS H
  ON S.ID = H.SubplotID
  JOIN LU.DensityBoardHeightClass AS D
  ON D.ID = H.DensityBoardHeightClassID
  JOIN LU.GroundCoverClass AS C
  ON C.ID = H.DensityBoardCoverClassID

  
  WHERE (E.EventDateTime < '20230101')
  
ORDER BY Plot, SubPlot, EventDate, Height
