use covid;
CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(100),
    Location VARCHAR(255),
    ContactNumber VARCHAR(15)
);


CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(15),
    Address VARCHAR(255)
);



-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(50),
    HospitalID INT,
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);

-- Create COVID_Tests table
CREATE TABLE COVID_Tests (
    TestID INT PRIMARY KEY,
    PatientID INT,
    TestDate DATE,
    TestResult VARCHAR(20),
    TestLocation VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Create Vaccination_Records table
CREATE TABLE Vaccination_Records (
    VaccinationID INT PRIMARY KEY,
    PatientID INT,
    VaccinationDate DATE,
    VaccineType VARCHAR(50),
    HospitalID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);



--  Inserting data into Hospitals table
INSERT INTO Hospitals (HospitalID, HospitalName, Location, ContactNumber)
VALUES (1, 'City Hospital', 'New York, USA', '123-456-7890'),
       (2, 'Green Valley Hospital', 'Los Angeles, USA', '987-654-3210'),
	   (3, 'Sunshine Hospital', 'Miami, USA', '555-8765-4321'),
       (4, 'Mountain View Medical Center', 'San Francisco, USA', '555-2345-6789'),
       (5, 'Riverdale Clinic', 'Chicago, USA', '555-9876-5432'),
       (6, 'Oakwood Healthcare', 'Dallas, USA', '555-3456-7890'),
       (7, 'Pinehill Medical Facility', 'Boston, USA', '555-6543-2109'),
       (8, 'Clearwater Hospital', 'Seattle, USA', '555-1230-4567'),
       (9, 'Sunset Care Center', 'San Diego, USA', '555-2222-3333'),
       (10, 'Willowbrook Health Center', 'Austin, USA', '555-1111-4444'),
       (11, 'East Valley Hospital', 'Phoenix, USA', '555-5678-4321'),
       (12, 'Lakeside Wellness Clinic', 'Denver, USA', '555-8888-7777');


-- Inserting data into Patients table
INSERT INTO Patients (PatientID, FirstName, LastName, DOB, Gender, ContactNumber, Address)
VALUES (1, 'John', 'Doe', '1985-02-10', 'Male', '555-1234', '123 Elm St, NY'),
       (2, 'Jane', 'Smith', '1990-07-20', 'Female', '555-5678', '456 Oak St, LA'),
	   (3, 'Emily', 'Taylor', '1982-05-14', 'Female', '555-9999', '789 Birch St, NY'),
       (4, 'Michael', 'Williams', '1995-09-22', 'Male', '555-4444', '321 Maple St, LA'),
       (5, 'Sarah', 'Johnson', '1993-12-30', 'Female', '555-3333', '654 Pine St, Chicago'),
       (6, 'David', 'Brown', '1988-03-17', 'Male', '555-7777', '987 Cedar St, Dallas'),
       (7, 'Olivia', 'Martinez', '1998-10-05', 'Female', '555-6666', '123 Oak St, Boston'),
       (8, 'James', 'Davis', '1992-02-25', 'Male', '555-8888', '456 Pine St, Seattle'),
       (9, 'Sophia', 'Garcia', '1996-07-10', 'Female', '555-1111', '789 Willow St, San Diego'),
       (10, 'Daniel', 'Rodriguez', '1987-01-15', 'Male', '555-2222', '321 Elm St, Austin'),
       (11, 'Charlotte', 'Martinez', '1991-11-02', 'Female', '555-4444', '654 Maple St, Phoenix'),
       (12, 'Lucas', 'Hernandez', '1986-08-20', 'Male', '555-5555', '123 Birch St, Denver');


-- Inserting data into Doctors table
INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialty, HospitalID)
VALUES (1, 'Dr. Alice', 'Johnson', 'Infectious Disease', 1),
       (2, 'Dr. Bob', 'Martinez', 'Pulmonology', 2),
        (3, 'Dr. Carol', 'Lee', 'Cardiology', 3),
       (4, 'Dr. David', 'Kim', 'Orthopedics', 4),
       (5, 'Dr. Eva', 'Lopez', 'Pediatrics', 5),
       (6, 'Dr. Frank', 'Miller', 'Neurology', 6),
       (7, 'Dr. Grace', 'Wong', 'Dermatology', 7),
       (8, 'Dr. Harry', 'Carter', 'General Surgery', 8),
       (9, 'Dr. Isabella', 'Clark', 'Ophthalmology', 9),
       (10, 'Dr. Jack', 'Duncan', 'Endocrinology', 10),
       (11, 'Dr. Kelly', 'Evans', 'Urology', 11),
       (12, 'Dr. Liam', 'White', 'Psychiatry', 12);


-- Inserting data into COVID_Tests table
INSERT INTO COVID_Tests (TestID, PatientID, TestDate, TestResult, TestLocation)
VALUES (1, 1, '2025-01-05', 'Positive', 'City Hospital'),
       (2, 2, '2025-01-06', 'Negative', 'Green Valley Hospital'),
       (3, 3, '2025-01-06', 'Negative', 'Sunshine Hospital'),
       (4, 4, '2025-01-07', 'Positive', 'Mountain View Medical Center'),
       (5, 5, '2025-01-08', 'Negative', 'Riverdale Clinic'),
       (6, 6, '2025-01-09', 'Positive', 'Oakwood Healthcare'),
       (7, 7, '2025-01-10', 'Negative', 'Pinehill Medical Facility'),
       (8, 8, '2025-01-11', 'Positive', 'Clearwater Hospital'),
       (9, 9, '2025-01-12', 'Negative', 'Sunset Care Center'),
       (10, 10, '2025-01-13', 'Positive', 'Willowbrook Health Center'),
       (11, 11, '2025-01-14', 'Negative', 'East Valley Hospital'),
       (12, 12, '2025-01-15', 'Positive', 'Lakeside Wellness Clinic');

--



-- Inserting data into Vaccination_Records table
INSERT INTO Vaccination_Records (VaccinationID, PatientID, VaccinationDate, VaccineType, HospitalID)
VALUES (1, 1, '2025-01-10', 'Pfizer', 1),
       (2, 2, '2025-01-11', 'Moderna', 2),
       (3, 3, '2025-01-15', 'Pfizer', 3),
       (4, 4, '2025-01-16', 'Moderna', 4),
       (5, 5, '2025-01-17', 'Pfizer', 5),
       (6, 6, '2025-01-18', 'Moderna', 6),
       (7, 7, '2025-01-19', 'Pfizer', 7),
       (8, 8, '2025-01-20', 'Moderna', 8),
       (9, 9, '2025-01-21', 'Pfizer', 9),
       (10, 10, '2025-01-22', 'Moderna', 10),
       (11, 11, '2025-01-23', 'Pfizer', 11),
       (12, 12, '2025-01-24', 'Moderna', 12);

































































































