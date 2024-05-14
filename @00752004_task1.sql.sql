Create Database Task1_AdvancedDatabases_01

USE Task1_AdvancedDatabases_01
go
--PART#1:
--creating tables

CREATE TABLE Patient (
PatientID NVARCHAR(50) NOT NULL PRIMARY KEY , 
PatientFirstName nvarchar(50) NOT NULL,
PatientLastName nvarchar(50) NOT NULL,
PatientDOB date NOT NULL,
PatientInsurance NVARCHAR(100) NOT NULL)


CREATE TABLE Patient_Optional_Details (
Patient_Optional_DetailsID NVARCHAR(50)  NOT NULL PRIMARY KEY,
PatientID NVARCHAR(50) NOT NULL Foreign key (PatientID) REFERENCES Patient(PatientID),
PatientEmail nvarchar(100) UNIQUE NOT NULL CHECK (PatientEmail LIKE '%_@_%._%'), 
PatientTelephone nvarchar(20) NOT NULL)


CREATE TABLE Patient_Signin(
Patient_SigninID NVARCHAR(50)  NOT NULL PRIMARY KEY,
PatientID NVARCHAR(50) NOT NULL Foreign key (PatientID) REFERENCES Patient(PatientID),
PatientPassword nvarchar(100) UNIQUE NOT NULL,
PatientUserName nvarchar(100) UNIQUE NOT NULL)

CREATE TABLE Addresses (
AddressID NVARCHAR(50) NOT NULL PRIMARY KEY,
PatientID NVARCHAR(50) NOT NULL FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
Address1 nvarchar(50) NOT NULL, 
Address2 nvarchar(50) NULL, 
City nvarchar(50) NULL, 
Postcode nvarchar(10) NOT NULL,
CONSTRAINT UC_Address UNIQUE (Address1, Postcode));



CREATE TABLE Complete_Medicle_RecordID(
Complete_Medicle_RecordID NVARCHAR(50) NOT NULL PRIMARY KEY,
PatientID NVARCHAR(50) NOT NULL Foreign key (PatientID) REFERENCES Patient(PatientID),
DoctorID NVARCHAR(50) NOT NULL FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
DepartmentID NVARCHAR(50) NOT NULL FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
New_Medicine nvarchar(50)  NOT NULL ,
Old_Medicine nvarchar(50)  ,
New_Diagnosis nvarchar(50)  NOT NULL,
Old_Diagnosis nvarchar(50) )



CREATE TABLE Doctor(
DoctorID NVARCHAR(50) NOT NULL PRIMARY KEY,
Avalibilty nvarchar(50) NOT NULL,
Doctor_Name nvarchar(50) NULL,
Speciality nvarchar(50) NULL,
Feedback nvarchar(50) NOT NULL,
DepartmentID NVARCHAR(50) NOT NULL FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID))

CREATE TABLE Department(
DepartmentID NVARCHAR(50) NOT NULL PRIMARY KEY,
Department_Name nvarchar(50) NOT NULL)



--NOW INSERTING VALUES IN Patinet TABLES:
--Patinet

select * from Patient

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt01','Asaf','Ijaz','2008-7-04','Mh#255')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt02','Las','Ijaz','2009-7-05','Mh#256')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt03','Ali','Abbsai','2010-2-04','Mh#257')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt04','adf','Mila','2008-4-04','Mh#258')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt05','jfs','ute','2008-4-01','Mh#259')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt06','tysaf','Ijaz','2008-5-03','Mh#267')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt07','Areaf','Ijaz','2008-7-08','Mh#287')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt08','Aqwafina','mjaz','1968-7-08','Mh#290')

INSERT INTO Patient(PatientID , PatientFirstName , PatientLastName , PatientDOB , PatientInsurance) 
VALUES('Patirnt09','Hina','Fijaz','1978-7-08','Mh#290')

--NOW INSERTING VALUES IN Patient_Optional_Details TABLES:


INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails01','Patirnt01','MANAN@GMAIL.COM',2552348911)

INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails02','Patirnt02','jani@GMAIL.COM',255223191)

INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails03','Patirnt03','afan@GMAIL.COM',2122348911)

INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails04','Patirnt04','ajawN@GMAIL.COM',5523485911)

INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails05','Patirnt05','wadN@GMAIL.COM',25523343911)
INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails06','Patirnt06','MuisN@GMAIL.COM',2552224911)
INSERT INTO Patient_Optional_Details(Patient_Optional_DetailsID , PatientID , PatientEmail , PatientTelephone)
VALUES('Patientdetails07','Patirnt07','MiusN@GMAIL.COM',2552338911)


--Inserting values into Patient_Signin table

INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin01','Patirnt01','aldug','ldksu')
INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin02','Patirnt02','kacdg','akhvc')
INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin03','Patirnt03','askudgf','sukafg')
INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin04','Patirnt04','aukefg','kjoeufc')

INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin05','Patirnt05','aukfge','ksu')

INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin06','Patirnt06','lsie','hfad')

INSERT INTO Patient_Signin(Patient_SigninID , PatientID , PatientPassword , PatientUserName)
VALUES('Patientsignin07','Patirnt07','iuadw','majs')

--Inserting values into address table
select * from Addresses

INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres01','Patirnt01','30 bankfeilk','Avenue' , 'MAN' , '324')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres02','Patirnt02','34 bankfeilk','Avenue' , 'MAN' , '325')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres03','Patirnt03','32 bankfeilk','Avenue' , 'MAN' , '326')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres04','Patirnt04','38 bankfeilk','Avenue' , 'MAN' , '327')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres05','Patirnt05','34 bankfeilk','Avenue' , 'MAN' , '328')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres06','Patirnt06','13 bankfeilk','Avenue' , 'MAN' , '329')
INSERT INTO Addresses(AddressID , PatientID , Address1 , Address2 , City , Postcode)
VALUES('Patientaddres07','Patirnt07','21 bankfeilk','Avenue' , 'MAN' , '350')

--Inserting into Department

INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#01','gynacology')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#02','patilogy')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#03','phycology')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#04','emtology')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#05','radiology')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#06','Gastroenterologist')
INSERT INTO Department(DepartmentID , Department_Name )
VALUES('Dep#07','ENT')


--Inserting values in doctor

INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#01', 'Yes', 'Ahmed', 'Gynacology', 'Good', 'Dep#01');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#02', 'Yes', 'Ali', 'Patilogy', 'Poor', 'Dep#02');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#03', 'Yes', 'Abbasi', 'Phycology', 'Poor', 'Dep#03');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#04', 'No', 'Kashidf', 'Gastroenterologist', 'Good', 'Dep#06');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#05', 'Yes', 'Zubair', 'Radiology', 'Good', 'Dep#05');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#06', 'No', 'Maira', 'Gastroenterologist', 'Good', 'Dep#06');
INSERT INTO Doctor (DoctorID, Avalibilty, Doctor_Name, Speciality, Feedback, DepartmentID)
VALUES ('Dr#07', 'Yes', 'Kuf', 'ENT', 'Poor', 'Dep#07');

--INSERTING INTO  Complete_Medicle_RecordID

INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#01','Patirnt01','Dr#07','Dep#07', 'Panadol' , 'Paracetamol' , 'suffering from Ear Problem ', 'Ear Bleeding' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#02','Patirnt02','Dr#01','Dep#01', 'Paracetamoll' , 'Panadol' , 'suffering from Child Labour', 'Child is not healthy' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#03','Patirnt03','Dr#03','Dep#03', 'Infehexix 500mg' , 'esd 400mg' , 'suffering from Phycology problems', 'brain tumor' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#04','Patirnt04','Dr#04','Dep#06', 'Azeraxh 200mg' , 'Azarex 100mg' , 'suffering from stomach problems', 'Liver Infection' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#05','Patirnt05','Dr#05','Dep#05', 'Wexh 500mg' , 'ease 200mg' , 'Cancer', 'lung not working' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#06','Patirnt06','Dr#06','Dep#02', 'Mikeui 200mg' , ' oster 500mg' , 'having TB', 'lung cancer' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#07','Patirnt07','Dr#01','Dep#01', 'infix 300mg' , 'Mepol 300mg' , 'Tooth bleeding', 'tooth broken' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#08','Patirnt08','Dr#05','Dep#05', 'Wexh 500mg' , 'Mepol 300mg' , 'Cancer', '' )
INSERT INTO Complete_Medicle_RecordID(Complete_Medicle_RecordID , PatientID , DoctorID , DepartmentID , New_Medicine , Old_Medicine ,new_Diagnosis ,Old_Diagnosis)
VALUES('MedRcd_ID#09','Patirnt09','Dr#05','Dep#05', 'Ofix 300mg' , 'Mepol 300mg' , 'Cancer', 'pimple' )



--creating Appointment01 table

CREATE TABLE Appointment01(
AppointmentID NVARCHAR(50) NOT NULL PRIMARY KEY,
AppointmentDate date NOT NULL,
AppointmentTime DATETIME NOT NULL,
AppointmentStatus nvarchar(20)  NOT NULL,
Current_Time_Here date NOT NULL DEFAULT GetDate(),
Appointment_Active_Date datetime NOT NULL DEFAULT GetDate(),
PatientID NVARCHAR(50) NOT NULL FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
Complete_Medicle_RecordID NVARCHAR(50) NOT NULL FOREIGN KEY (Complete_Medicle_RecordID) REFERENCES Complete_Medicle_RecordID(Complete_Medicle_RecordID),
DepartmentID NVARCHAR(50) NOT NULL FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
DoctorID NVARCHAR(50) NOT NULL Foreign key (DoctorID) REFERENCES Doctor(DoctorID))

--Part2:
--2. Add the constraint to check that the appointment date is not in the past.

ALTER TABLE Appointment01
ADD CONSTRAINT ch_future CHECK (AppointmentDate >= Current_Time_Here)

--inserting data in appointment 01 table

INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#001', '2024-04-29',  '13:23:44', 'Completed', 'Patirnt01',   'MedRcd_ID#01','Dep#02', 'Dr#03');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#002', '2024-04-28',  '15:23:44', 'Completed', 'Patirnt02',   'MedRcd_ID#02','Dep#03', 'Dr#03');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#003', '2024-06-29',  '15:12:44', 'Pending', 'Patirnt03',   'MedRcd_ID#03','Dep#05', 'Dr#05');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#004', '2024-10-30',  '15:29:34', 'Completed', 'Patirnt04',   'MedRcd_ID#04','Dep#05', 'Dr#05');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#005', '2024-06-11',  '15:29:34', 'Completed', 'Patirnt05',   'MedRcd_ID#05','Dep#02', 'Dr#06');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#006', '2024-06-21',  '15:29:34', 'Completed', 'Patirnt06',   'MedRcd_ID#06','Dep#01', 'Dr#01');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#007', '2024-06-21',  '15:19:54', 'Pending', 'Patirnt07',   'MedRcd_ID#07','Dep#05', 'Dr#05');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#008', '2024-04-23',  '15:19:54', 'Pending', 'Patirnt08',   'MedRcd_ID#08','Dep#06', 'Dr#04');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#009', '2024-06-23',  '15:19:24', 'Pending', 'Patirnt09',   'MedRcd_ID#09','Dep#06', 'Dr#04');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#010', '2024-05-23',  '15:19:14', 'Pending', 'Patirnt010',   'MedRcd_ID#01','Dep#01', 'Dr#01');
INSERT INTO Appointment01 ( AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID)
VALUES ( 'Ap#011', '2024-04-21',  '15:19:14', 'cancelled', 'Patirnt05',   'MedRcd_ID#05','Dep#01', 'Dr#01');



select * from appointment01



 
--3. List all the patients with older than 40 and have Cancer in diagnosis.

--TASK_02_CTE is a CTEs are temporary result sets that are defined within the scope of a single SQL statement 
WITH TASK_02_CTE AS (
 SELECT  p.PatientDOB, DATEDIFF(YEAR, p.PatientDOB, GETDATE()) AS Patient_Age --Datediff calculate the difference
  FROM   Patient p  INNER JOIN  Complete_Medicle_RecordID d ON p.PatientID = d.PatientID
  WHERE  d.New_Diagnosis = 'Cancer'
)
SELECT  PatientDOB ,  Patient_Age 
FROM   TASK_02_CTE
WHERE  Patient_Age > 40;



--4. The hospital also requires stored procedures or user-defined functions to do the following things:
--a) Search the database of the hospital for matching character strings by name of medicine. Results should be sorted with most recent medicine prescribed date first.
CREATE FUNCTION Userfunc (
    @MatchingString NVARCHAR(10)
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        d.Complete_Medicle_RecordID, d.PatientID,d.New_Medicine, 
		a.AppointmentDate,  a.AppointmentTime,  a.DepartmentID, a.DoctorID
    FROM 
        Complete_Medicle_RecordID d  
    INNER JOIN  
       Appointment01 a ON d.PatientID = a.PatientID
    WHERE 
        d.New_Medicine LIKE @MatchingString + '%' 
        OR d.New_Medicine LIKE '%' + @MatchingString 
        OR d.New_Medicine LIKE '%' + @MatchingString + '%'
);
--calling the function
SELECT * FROM dbo.Userfunc('pan');

 --b) Return a full list of diagnosis and allergies for a specific patient who has an appointment today (i.e., the system date when the query is run)

CREATE PROCEDURE PatientDiag_01 
    @PatientID NVARCHAR(50)
AS
BEGIN
    IF EXISTS (
        SELECT 1--checking the appoitnemt01 table
        FROM Appointment01
        WHERE PatientID = @PatientID
        AND CONVERT(DATE, AppointmentDate) = CONVERT(DATE, GETDATE())
    )
    BEGIN
       
        SELECT 
            d.Complete_Medicle_RecordID, d.PatientID, d.New_Medicine,d.Old_Diagnosis,d.New_Diagnosis,d.Old_Diagnosis, 
			a.AppointmentDate,a.AppointmentTime, a.DepartmentID,
            a.DoctorID
        FROM 
            Complete_Medicle_RecordID d 
        INNER JOIN 
            Appointment01 a ON d.PatientID = a.PatientID
        WHERE 
            CONVERT(DATE, a.AppointmentDate) = CONVERT(DATE, GETDATE());
    END
    ELSE
    BEGIN
        PRINT 'No appointment scheduled for the patient today.';
    END
END
select * from Appointment01    --let see the appointsment today
EXEC PatientDiag_01 @PatientID = 'Patirnt02' --this PATIENT HAS No APPOINTMENT as per the system date
EXEC PatientDiag_01 @PatientID = 'Patirnt05'  --this PATIENT HAS  Appointment as per the system date

--c) Update the details for an existing doctor

CREATE PROCEDURE Doctorupdate
    @DoctorID NVARCHAR(50),
    @NewDoctorName NVARCHAR(100),
    @NewSpeciality NVARCHAR(100)
AS
BEGIN
   BEGIN TRY
        UPDATE Doctor
        SET 
            Doctor_Name = @NewDoctorName,
            Speciality = @NewSpeciality
        WHERE 
            DoctorID = @DoctorID;

        PRINT 'Doctor details updated successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Update can not be made';
 
    END CATCH
END

 EXEC Doctorupdate 
    @DoctorID = 'Dr#07',
    @NewDoctorName = 'JANI',
    @NewSpeciality = 'NERVE';


 Select * from Doctor

 --d) Delete the appointment who status is already completed.
 --Creating an ArchievedAppointment for the completed Appointments
CREATE TABLE ArchievedAppointment( 
AppointmentID nvarchar(50) NOT NULL PRIMARY KEY,
AppointmentDate date NOT NULL,
AppointmentTime DATETIME NOT NULL,
AppointmentStatus nvarchar(20)  NOT NULL,
PatientID nvarchar(50) NOT NULL FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
Complete_Medicle_RecordID nvarchar(50) NOT NULL FOREIGN KEY (Complete_Medicle_RecordID) REFERENCES Complete_Medicle_RecordID(Complete_Medicle_RecordID),
DepartmentID nvarchar(50) NOT NULL FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
DoctorID nvarchar(50) NOT NULL Foreign key (DoctorID) REFERENCES Doctor(DoctorID))


--Creating trigger after delete
DROP TRIGGER IF EXISTS Appointment_Archieve4; 
GO
CREATE TRIGGER Appointment_Archieve4
ON Appointment01 
AFTER DELETE
AS 
BEGIN
    INSERT INTO ArchievedAppointment (AppointmentID, AppointmentDate, AppointmentTime, AppointmentStatus, PatientID, Complete_Medicle_RecordID, DepartmentID, DoctorID) 
    SELECT
        d.AppointmentID, d.AppointmentDate, d.AppointmentTime,  d.AppointmentStatus, d.PatientID, 
        d.Complete_Medicle_RecordID,  d.DepartmentID, d.DoctorID
    FROM deleted d;
END;

Select * from Appointment01

CREATE PROCEDURE DeleteCompletedAppointment02
AS
BEGIN
    BEGIN TRY
        DELETE FROM Appointment01
        WHERE AppointmentStatus = 'Completed';
        PRINT 'Deleted successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Not able to delete ';
    END CATCH
END;
GO

-- so when the stored procedure is called it moves the completed deleted appoinments to this archived table


EXEC DeleteCompletedAppointment02;

select * from ArchievedAppointment --deleted completed apointsment

--5. The hospitals wants to view the appointment date and time, showing all previous and current appointments for all doctors, and including details of the department (the doctor is associated with), doctor’s specialty and any associate review/feedback given for a doctor. You should create a view containing all the required information
--using a union to get a clear view 
CREATE VIEW DoctorsandAppointsment(
AppointmentID , AppointmentDate , AppointmentTime, AppointmentStatus , PatientID,
DoctorID , Avalibilty , Feedback , DepartmentID ,Speciality , Department_Name)
AS
SELECT a.AppointmentID , a.AppointmentDate , a.AppointmentTime, a.AppointmentStatus , a.PatientID,
d.DoctorID , d.Avalibilty , d.Feedback , d.DepartmentID ,d.Speciality , t.Department_Name
FROM Appointment01 a inner join Doctor d
on a.DoctorID = d.DoctorID
Inner join Department t
on d.DepartmentID = t.DepartmentID
union all
SELECT m.AppointmentID , m.AppointmentDate , m.AppointmentTime, m.AppointmentStatus , m.PatientID,
d.DoctorID , d.Avalibilty , d.Feedback , d.DepartmentID ,d.Speciality , t.Department_Name
FROM ArchievedAppointment m inner join Doctor d
on m.DoctorID = d.DoctorID
Inner join Department t
on d.DepartmentID = t.DepartmentID


SELECT * FROM DoctorsandAppointsment -- view



--6. Create a trigger so that the current state of an appointment can be changed to available when it is cancelled.

CREATE TRIGGER UpdateAppointmentStatus
ON Appointment01
AFTER UPDATE 
AS 
BEGIN
    IF UPDATE(AppointmentStatus)
    BEGIN
        UPDATE Appointment01
        SET AppointmentStatus = 'Available'
        WHERE AppointmentStatus = 'Cancelled' AND AppointmentID IN (SELECT DISTINCT AppointmentID FROM inserted);
    END
END;

select * from Appointment01

update Appointment01
set Appointmentstatus = 'Cancelled'
where AppointmentID = 'Ap#011'


select * from Doctor
select * from Appointment01

select * from ArchievedAppointment



--7. Write a select query which allows the hospital to identify the number of  completed appointments with the specialty of doctors as ‘Gastroenterologists’

SELECT COUNT(*) AS CompletedAppointments
FROM ArchievedAppointment a
INNER JOIN Doctor d ON a.DoctorID = d.DoctorID
WHERE d.Speciality = 'Gastroenterologist' AND a.AppointmentStatus = 'Completed';


-- Now going to create a schema and back up.
--Creating a Schema;
-- I am not running the below queries becaouse it will effect my code
--code
/*
Create Schema task8
 go
 
Alter Schema task8 transfer dbo.Appoinment01
Alter Schema task8 transfer dbo.ArchievedAppointment*/

--so now if someone wants to see the doctors patient it will give an error bcz he has to make some changes and call task8.Appointment01 rather than just calling appointment table
SELECT * FROM task8.Appointment01;
select * from task8.ArchievedAppointment


--- Create the role Manager:
-- Grant SELECT permission on the Patients table , Patient_Optional_Details table , Patient_Signin table and doctor to the Manager role
CREATE ROLE Manager;
GRANT SELECT ON Patients TO Manager;
GRANT SELECT ON Patient_Optional_Details TO Manager;
GRANT SELECT ON Patient_Signin TO Manager;
GRANT SELECT ON Doctor TO Manager;

--- Creating Users
CREATE USER Jani_Khan FOR LOGIN Jani_Khan;
CREATE LOGIN Jani_Khan WITH PASSWORD = 'Inam@1919'
ALTER ROLE Manager ADD MEMBER Jani_Khan;

--- Execting user 
EXEC AS USER = 'Jani_Khan';

SELECT * FROM Patient_Optional_Details
select * from Doctor

SELECT * FROM Appointment01 -- Jani Khan has no access to this table

--i AM revoking the doctors tables from manager, taking the access
REVOKE SELECT ON Doctor FROM Manager;

revert  --  now back to the original user, who can access all the tables.



select * from patient




-- Creating a Back up!
