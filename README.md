# Hospital Management System – Database Schema Design

## Objective
Design and implement a relational database schema for managing hospital operations using MySQL (or PostgreSQL / SQLite). This includes entities such as Patients, Doctors, Appointments, Bills, and Departments.


## Project Structure

| File | Description |
|------|-------------|
| schema.sql | SQL script to create tables and define relationships |
| er_diagram.png | ER diagram representing database structure |
| README.md | Project overview, schema explanation, and key concepts |


## Database Entities and Relationships

### 1. *Departments*
- department_id (PK)
- name
- floor

Each department can have multiple doctors.

### 2. *Doctors*
- doctor_id (PK)
- name
- specialization
- phone
- department_id (FK → Departments)

Each doctor belongs to one department.

### 3. *Patients*
- patient_id (PK)
- name
- gender
- dob
- phone
- address

Each patient can have multiple appointments and bills.

### 4. *Appointments*
- appointment_id (PK)
- patient_id (FK → Patients)
- doctor_id (FK → Doctors)
- appointment_date
- status

Many-to-many relationship between doctors and patients.

### 5. *Bills*
- bill_id (PK)
- patient_id (FK → Patients)
- amount
- bill_date
- payment_status

Each patient can have multiple bills.

## Key Concepts Used

- ✅ *DDL* (Data Definition Language): CREATE, PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT
- ✅ *Normalization*: Data is organized in 3NF to reduce redundancy.
- ✅ *Constraints*: Used NOT NULL, UNIQUE, AUTO_INCREMENT, etc.
- ✅ *ER Diagram*: Visual representation of entities and their relationships.
- ✅ *Relational Integrity*: Enforced using foreign keys and cascading rules if needed.

