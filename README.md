# Hospital Management System – Database Schema Design

## Objective
This project focuses on creating a relational database to manage various aspects of hospital operations including patient registration, doctor assignments, appointment scheduling, departmental structure, and billing. It aims to ensure data integrity, avoid redundancy, and provide a scalable foundation for hospital information systems.


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

Represents a many-to-many relationship between doctors and patients over time.

### 5. *Bills*
- bill_id (PK)
- patient_id (FK → Patients)
- amount
- bill_date
- payment_status

Each patient can have multiple bills.


## Key Concepts Used

- *DDL (Data Definition Language)*: CREATE, PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT
- *Normalization: Data is organized in **3NF* to eliminate redundancy and improve consistency.
- *Constraints*: Applied NOT NULL, UNIQUE, AUTO_INCREMENT, etc.
- *ER Diagram*: Illustrates entity relationships clearly.
- *Relational Integrity*: Maintained through foreign key constraints and defined relationships.
