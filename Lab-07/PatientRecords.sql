CREATE TABLE PatientRecords ( 
	RecordID INT PRIMARY KEY, 
	PatientName VARCHAR(100), 
	DiagnosisCode VARCHAR(50), 
	TreatmentPlan VARCHAR(250) 
);

INSERT INTO PatientRecords (RecordID, PatientName, DiagnosisCode, TreatmentPlan) VALUES 
(201, 'Amy Smith', 'ABC-123', 'Take vitamin pills daily.'), 
(202, 'Bob Jones', 'abc-999', 'Rest and drink water.'), 
(203, 'Cody Miller', 'XYZ-450', 'Take antibiotics daily.'), 
(204, 'Dan_Webb', 'E11', 'Check blood sugar.'), 
(205, '1st_Test', 'XYZ-%', 'Emergency care.'); 

SELECT * FROM PatientRecords