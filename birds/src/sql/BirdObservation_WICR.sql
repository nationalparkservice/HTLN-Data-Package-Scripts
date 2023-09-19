




USE HTLN_LandBirds;


SELECT P.LocationName AS Plot,  E.EventName AS Event, E.Temperature_C,  
    W.Code AS Wind, R.Code AS Precip, E.Clouds_pct AS Percent_Cloud, N.Code AS Noise, B.ObservationNumber, I.Name AS Interval, 
    S.TaxonCode AS AOUCode, B.Distance, D.Code AS DetectionType, X.Name AS Sex, 
	A.Name AS Age, B.FlockSize, B.IsPreviousPlot, B.IsFlyover, B.Comments

FROM dbo.BirdSamplingEvent AS E
  JOIN dbo.BirdObservation as B
    ON E.ID = B.BirdSamplingEventID
  JOIN LU.BirdSpecies AS S
    ON B.BirdSpeciesID = S.ID
  JOIN dbo.Plot AS P
    ON E.PlotID = P.ID
  JOIN LU.Noise AS N
    ON E.NoiseID = N.ID
  JOIN LU.Rain AS R
    ON E.RainID = R.ID
  JOIN LU.Wind AS W
	ON E.WindID = W.ID
  JOIN LU.Interval AS I
	ON B.IntervalID = I.ID
  JOIN LU.Sex AS X
    ON B.SexID = X.ID
  JOIN LU.DetectionType AS D
    ON B.DetectionTypeID = D.ID
  JOIN LU.Age AS A
    ON B.AgeID = A.ID


WHERE 
     (LEFT(P.LocationName,4) = 'WICR')

/*
 
ORDER BY P.LocationName,  E.EventName,  B.ObservationNumber;*/
