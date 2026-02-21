-- Each department has at least one doctor.
CREATE TABLE department (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    building_number VARCHAR(20)  NOT NULL,
    room_number     VARCHAR(20)  NOT NULL
);

-- Each doctor is assigned to exactly one department.
CREATE TABLE doctor (
    id             SERIAL PRIMARY KEY,
    full_name      VARCHAR(150)  NOT NULL,
    specialization VARCHAR(100)  NOT NULL,
    phone          VARCHAR(30),
    email          VARCHAR(100),
    hire_date      DATE          NOT NULL,
    licence_number VARCHAR(50)   NOT NULL UNIQUE,

    department_id  INT NOT NULL,
    CONSTRAINT fk_doctor_department
        FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

-- A patient can make an appointment with any doctor.
CREATE TABLE patient (
    id             SERIAL PRIMARY KEY,
    full_name      VARCHAR(150) NOT NULL,
    national_id    CHAR(12)     NOT NULL UNIQUE, -- ИНН in Russia
    gender         VARCHAR(20),
    date_of_birth  DATE NOT NULL,
    phone          VARCHAR(30),
    email          VARCHAR(100),
    address        VARCHAR(255)
);


-- Each appointment involves exactly one patient and one doctor.
-- One appointment contains exactly one diagnosis.
CREATE TABLE appointment (
    id         SERIAL PRIMARY KEY,
    date       DATE        NOT NULL,
    time       TIME        NOT NULL,
    status     VARCHAR(20) NOT NULL,
    patient_id INT         NOT NULL,
    doctor_id  INT         NOT NULL,
    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES patient(id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_appointment_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctor(id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);


-- Every diagnosis must be created in relation to a specific appointment
-- and it cannot exist without an associated appointment.
CREATE TABLE diagnosis(
    id             SERIAL PRIMARY KEY,
    title          VARCHAR(255) NOT NULL,
    description    TEXT,
    appointment_id INT          NOT NULL UNIQUE,
    CONSTRAINT fk_diagnosis_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointment(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Represents a list of all medical procedures available at the hospital.
CREATE TABLE procedure(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255)   NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0)
);

-- One appointment may include zero or more procedures.
CREATE TABLE appointment_procedure(
    appointment_id INT NOT NULL,
    procedure_id   INT NOT NULL,
    PRIMARY KEY (appointment_id, procedure_id),
    CONSTRAINT fk_ap_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointment(id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_ap_procedure
        FOREIGN KEY (procedure_id)
        REFERENCES procedure(id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
