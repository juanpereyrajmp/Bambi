USE Bambi

GO

CREATE OR ALTER PROCEDURE SP_JobsList
	@JobID INT = -1,
	@StatusID INT = -1
AS
BEGIN

-- Job Information --

SELECT 
	J.JobID, 
	CONCAT(C.FirstName, ' ', C.LastName) ClientName,
	J.JobDate,
	J.StartTime,
	J.EndTime,
	S.Status,
	CA.Street,
	CA.Number,
	CA.Floor,
	CA.Apartment,
	CT.City,
	ST.State,
	P.Total Price,
	P.Paid PricePaid,
	D.Total Deposit,
	D.Paid DepositPaid
FROM Jobs J
	LEFT JOIN Clients C ON C.ClientID = J.ClientID
	LEFT JOIN Status S ON S.StatusID = J.StatusID
	LEFT JOIN ClientAddress CA ON CA.ClientID = C.ClientID
	LEFT JOIN Cities CT ON CT.CityID = CA.CityID
	LEFT JOIN States ST ON ST.StateID = CT.StateID
	LEFT JOIN Prices P ON P.JobID = J.JobID
	LEFT JOIN Deposits D ON D.JobID = J.JobID
WHERE (@JobID = -1 OR J.JobID = @JobID)
AND (@StatusID = -1 OR J.StatusID = @StatusID)
ORDER BY J.JobDate ASC

 -- Job Services --

SELECT 
	SJ.JobID,
	S.ServiceID,
	S.Service AS ServiceName,
	S.Price ServicePrice,
	S.Duration ServiceDuration
FROM ServicesJobs SJ
	INNER JOIN Services S ON S.ServiceID = SJ.ServiceID
	INNER JOIN Jobs J ON J.JobID = SJ.JobID
WHERE (@JobID = -1 OR SJ.JobID = @JobID)
AND (@StatusID = -1 OR J.StatusID = @StatusID)

END