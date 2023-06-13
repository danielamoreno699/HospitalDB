CREATE DATABASE clinicDB;

CREATE TABLE
    patients(
        id INT PRIMARY KEY,
        name VARCHAR(250),
        date_of_birth DATE
    );

CREATE TABLE
    treatment(
        id INT PRIMARY KEY,
        name VARCHAR(250),
        name VARCHAR(250)
    );

CREATE TABLE 
    medical_histories(
        FOREIGN KEY (id) REFERENCES invoices(medical_history_id),
        admitted_at DATE,
        FOREIGN KEY (patient_id) REFERENCES patients(id),
        status VARCHAR(250),
    );