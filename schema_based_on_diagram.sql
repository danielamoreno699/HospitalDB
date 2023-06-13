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
        id INT PRIMARY KEY,
        admitted_at DATE,
        FOREIGN KEY (patient_id) REFERENCES patients(id),
        status VARCHAR(250),
    );

CREATE TABLE
    invoice_items(
        id INT PRIMARY KEY,
        unit_price DECIMAL(10,2),
        quantity INT,
        FOREIGN KEY (invoice_id) REFERENCES patients(id),
        FOREIGN KEY (treatment_id) REFERENCES treatment(id),
    );
    