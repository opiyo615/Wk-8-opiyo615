<<<<<<< HEAD
CREATE DATABASE ClinicDB;

USE ClinicDB;

CREATE TABLE Specializations ( 
     specialization_id INT AUTO_INCREMENT
PRIMARY KEY,
      name VARCHAR(100)NOT NULL UNIQUE
);

CREATE TABLE Doctors ( 
  doctor_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100)NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  specialization_id INT,
  FOREIGN KEY (Specialization_id)
REFERENCES Specializations(specialization_id)
);

CREATE TABLE Patients (
   patient_id INT AUTO_INCREMENT PRIMARY KEY,
   full_name VARCHAR(100) NOT NULL,
   phone_number VARCHAR(15)NOT NULL UNIQUE,
   date_of_birth DATE 
   );
   
   CREATE TABLE Appointments (
      appointment_id INT AUTO_INCREMENT PRIMARY KEY,
      doctor_id INT NOT NULL,
      patient_id INT NOT NULL,
      appointment_date DATETIME NOT NULL,
      reason TEXT,
      FOREIGN KEY (doctor_id) REFERENCES
Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES
Patients(patient_Id)
   );

  
=======
CREATE DATABASE ClinicDB;

USE ClinicDB;

CREATE TABLE Specializations ( 
     specialization_id INT AUTO_INCREMENT
PRIMARY KEY,
      name VARCHAR(100)NOT NULL UNIQUE
);

CREATE TABLE Doctors ( 
  doctor_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100)NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  specialization_id INT,
  FOREIGN KEY (Specialization_id)
REFERENCES Specializations(specialization_id)
);

CREATE TABLE Patients (
   patient_id INT AUTO_INCREMENT PRIMARY KEY,
   full_name VARCHAR(100) NOT NULL,
   phone_number VARCHAR(15)NOT NULL UNIQUE,
   date_of_birth DATE 
   );
   
   CREATE TABLE Appointments (
      appointment_id INT AUTO_INCREMENT PRIMARY KEY,
      doctor_id INT NOT NULL,
      patient_id INT NOT NULL,
      appointment_date DATETIME NOT NULL,
      reason TEXT,
      FOREIGN KEY (doctor_id) REFERENCES
Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES
Patients(patient_Id)
   );

  
>>>>>>> aeefed172a0e3bec3b179b58281e6be2f762db72
