
📘 ClinicDB – Database Schema for a Medical Clinic

🩺 Overview

ClinicDB is a relational database schema designed for managing the operations of a medical clinic. It handles key entities such as doctors, patients, specializations, and appointments. This schema ensures clean data structure, efficient querying, and clear relationships between entities.


---

🗃️ Schema Structure

The database contains four main tables:

1. Specializations



Stores medical specializations (e.g., Dermatology, Pediatrics).

Column	Type	Constraints

specialization_id	INT	Primary Key, Auto Increment
name	VARCHAR(100)	NOT NULL, UNIQUE


---

2. Doctors



Stores information about doctors in the clinic.

Column	Type	Constraints

doctor_id	INT	Primary Key, Auto Increment
full_name	VARCHAR(100)	NOT NULL
email	VARCHAR(100)	NOT NULL, UNIQUE
specialization_id	INT	Foreign Key → Specializations(specialization_id)


---

3. Patients



Stores patient information.

Column	Type	Constraints

patient_id	INT	Primary Key, Auto Increment
full_name	VARCHAR(100)	NOT NULL
phone_number	VARCHAR(15)	NOT NULL, UNIQUE
date_of_birth	DATE	Optional


---

4. Appointments



Stores records of appointments between patients and doctors.

Column	Type	Constraints

appointment_id	INT	Primary Key, Auto Increment
doctor_id	INT	Foreign Key → Doctors(doctor_id)
patient_id	INT	Foreign Key → Patients(patient_id)
appointment_date	DATETIME	NOT NULL
reason	TEXT	Optional


