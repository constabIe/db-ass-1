CREATE TABLE department (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    building_no VARCHAR(20)  NOT NULL,
    room_no     VARCHAR(20)  NOT NULL
);

CREATE TABLE doctor (
    id             SERIAL PRIMARY KEY,
    full_name      VARCHAR(150) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone          VARCHAR(30),
    email          VARCHAR(100),
    hire_date      DATE NOT NULL,
    licence_number VARCHAR(50) NOT NULL UNIQUE,
    department_id  INT NOT NULL,
    CONSTRAINT fk_doctor_department
        FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE patient (
    id           SERIAL PRIMARY KEY,
    full_name    VARCHAR(150) NOT NULL,
    national_id  VARCHAR(50)  NOT NULL UNIQUE,
    gender       VARCHAR(10),
    date_of_birth DATE        NOT NULL,
    phone        VARCHAR(30),
    email        VARCHAR(100),
    address      VARCHAR(255)
);

CREATE TABLE appointment (
    id         SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id  INT NOT NULL,
    date       DATE NOT NULL,
    time       TIME NOT NULL,
    status     VARCHAR(20) NOT NULL,
    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES patient(id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_appointment_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctor(id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE diagnosis (
    id             SERIAL PRIMARY KEY,
    title          VARCHAR(150) NOT NULL,
    description    TEXT,
    appointment_id INT NOT NULL UNIQUE,
    CONSTRAINT fk_diagnosis_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointment(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE procedure (
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0)
);

CREATE TABLE appointment_procedure (
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
