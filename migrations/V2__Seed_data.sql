-- =========================
-- Departments (10 rows)
-- =========================
INSERT INTO department (name, building_no, room_no) VALUES
    ('Cardiology',          'A', '101'),
    ('Neurology',           'A', '205'),
    ('Orthopedics',         'B', '310'),
    ('General Practice',    'C', '112'),
    ('Pediatrics',          'C', '220'),
    ('Oncology',            'D', '401'),
    ('Dermatology',         'D', '415'),
    ('Gastroenterology',    'B', '322'),
    ('Endocrinology',       'A', '210'),
    ('Pulmonology',         'E', '105');

-- =========================
-- Doctors (10 rows)
-- =========================
INSERT INTO doctor (full_name, specialization, phone, email, hire_date, licence_number, department_id) VALUES
    ('Dr. James Wilson',    'Cardiologist',         '+1-555-0101', 'j.wilson@hospital.com',   '2015-03-10', 'LIC-10001', 1),
    ('Dr. Lisa Cuddy',      'Neurologist',          '+1-555-0102', 'l.cuddy@hospital.com',    '2012-07-22', 'LIC-10002', 2),
    ('Dr. Eric Foreman',    'Orthopedic Surgeon',   '+1-555-0103', 'e.foreman@hospital.com',  '2018-01-15', 'LIC-10003', 3),
    ('Dr. Allison Cameron', 'General Practitioner', '+1-555-0104', 'a.cameron@hospital.com',  '2020-09-01', 'LIC-10004', 4),
    ('Dr. Robert Chase',    'Pediatrician',         '+1-555-0105', 'r.chase@hospital.com',    '2017-05-30', 'LIC-10005', 5),
    ('Dr. Martha Kaplan',   'Oncologist',           '+1-555-0106', 'm.kaplan@hospital.com',   '2013-11-20', 'LIC-10006', 6),
    ('Dr. Steven Park',     'Dermatologist',        '+1-555-0107', 's.park@hospital.com',     '2019-04-18', 'LIC-10007', 7),
    ('Dr. Natalie Rhodes',  'Gastroenterologist',   '+1-555-0108', 'n.rhodes@hospital.com',   '2016-08-03', 'LIC-10008', 8),
    ('Dr. Alan Grant',      'Endocrinologist',      '+1-555-0109', 'a.grant@hospital.com',    '2014-02-27', 'LIC-10009', 9),
    ('Dr. Claire Novak',    'Pulmonologist',        '+1-555-0110', 'c.novak@hospital.com',    '2021-06-14', 'LIC-10010', 10);

-- =========================
-- Patients (10 rows)
-- =========================
INSERT INTO patient (full_name, national_id, gender, date_of_birth, phone, email, address) VALUES
    ('John Smith',      'NID-00001', 'Male',   '1985-04-12', '+1-555-1001', 'john.smith@email.com',   '123 Main St, Springfield'),
    ('Emily Johnson',   'NID-00002', 'Female', '1992-08-25', '+1-555-1002', 'emily.j@email.com',      '456 Oak Ave, Shelbyville'),
    ('Michael Brown',   'NID-00003', 'Male',   '1978-11-03', '+1-555-1003', 'm.brown@email.com',      '789 Pine Rd, Capital City'),
    ('Sarah Davis',     'NID-00004', 'Female', '2000-02-17', '+1-555-1004', 'sarah.d@email.com',      '321 Elm St, Ogdenville'),
    ('David Wilson',    'NID-00005', 'Male',   '1965-06-30', '+1-555-1005', 'd.wilson@email.com',     '654 Maple Dr, North Haverbrook'),
    ('Anna Martinez',   'NID-00006', 'Female', '1990-12-08', '+1-555-1006', 'anna.m@email.com',       '987 Cedar Ln, Brockway'),
    ('Chris Taylor',    'NID-00007', 'Male',   '2005-03-21', '+1-555-1007', 'chris.t@email.com',      '147 Birch Blvd, Ogdenville'),
    ('Laura Anderson',  'NID-00008', 'Female', '1983-07-14', '+1-555-1008', 'laura.a@email.com',      '258 Walnut St, Springfield'),
    ('Kevin Thompson',  'NID-00009', 'Male',   '1995-09-05', '+1-555-1009', 'kevin.t@email.com',      '369 Spruce Ave, Shelbyville'),
    ('Megan White',     'NID-00010', 'Female', '1972-01-29', '+1-555-1010', 'megan.w@email.com',      '741 Aspen Ct, Capital City');

-- =========================
-- Procedures (10 rows)
-- =========================
INSERT INTO procedure (name, price) VALUES
    ('Blood Test',              50.00),
    ('ECG',                    150.00),
    ('X-Ray',                  200.00),
    ('MRI Scan',               800.00),
    ('Ultrasound',             300.00),
    ('Physical Therapy',       120.00),
    ('Vaccination',             45.00),
    ('Neurology Screening',    350.00),
    ('CT Scan',                600.00),
    ('Pulmonary Function Test',180.00);

-- =========================
-- Appointments (10 rows)
-- =========================
INSERT INTO appointment (patient_id, doctor_id, date, time, status) VALUES
    (1,  1,  '2024-01-10', '09:00', 'completed'),
    (2,  2,  '2024-01-11', '10:30', 'completed'),
    (3,  3,  '2024-01-12', '11:00', 'completed'),
    (4,  4,  '2024-01-13', '14:00', 'completed'),
    (5,  1,  '2024-01-14', '09:30', 'completed'),
    (6,  5,  '2024-01-15', '15:00', 'completed'),
    (7,  4,  '2024-01-16', '16:00', 'completed'),
    (8,  6,  '2024-01-17', '10:00', 'completed'),
    (9,  8,  '2024-01-18', '13:30', 'completed'),
    (10, 10, '2024-01-19', '11:00', 'completed');

-- =========================
-- Diagnoses (10 rows, one per appointment)
-- =========================
INSERT INTO diagnosis (title, description, appointment_id) VALUES
    ('Hypertension',            'Stage 1 hypertension. Prescribed medication and lifestyle changes.',    1),
    ('Migraine',                'Chronic migraine with aura. Recommended MRI for further evaluation.',  2),
    ('Knee Ligament Injury',    'Partial ACL tear in right knee. Physical therapy recommended.',        3),
    ('Seasonal Allergies',      'Allergic rhinitis. Prescribed antihistamines.',                        4),
    ('Arrhythmia',              'Mild cardiac arrhythmia detected. Monitoring required.',               5),
    ('Viral Infection',         'Common cold. Rest and fluids recommended.',                            6),
    ('Vitamin D Deficiency',    'Low vitamin D levels. Supplements prescribed.',                        7),
    ('Early Stage Lymphoma',    'Stage 1 lymphoma detected. Oncology follow-up scheduled.',             8),
    ('Irritable Bowel Syndrome','IBS confirmed. Dietary changes and medication prescribed.',            9),
    ('Chronic Bronchitis',      'Persistent cough and inflammation. Inhaler therapy initiated.',       10);

-- =========================
-- Appointment <-> Procedure (10+ rows)
-- =========================
INSERT INTO appointment_procedure (appointment_id, procedure_id) VALUES
    (1,  1),   -- John       / Cardiology     → Blood Test
    (1,  2),   -- John       / Cardiology     → ECG
    (2,  8),   -- Emily      / Neurology      → Neurology Screening
    (3,  3),   -- Michael    / Orthopedics    → X-Ray
    (3,  6),   -- Michael    / Orthopedics    → Physical Therapy
    (4,  7),   -- Sarah      / General        → Vaccination
    (5,  1),   -- David      / Cardiology     → Blood Test
    (5,  2),   -- David      / Cardiology     → ECG
    (5,  4),   -- David      / Cardiology     → MRI Scan
    (6,  7),   -- Anna       / Pediatrics     → Vaccination
    (7,  1),   -- Chris      / General        → Blood Test
    (8,  9),   -- Laura      / Oncology       → CT Scan
    (8,  1),   -- Laura      / Oncology       → Blood Test
    (9,  5),   -- Kevin      / Gastro         → Ultrasound
    (9,  1),   -- Kevin      / Gastro         → Blood Test
    (10, 10),  -- Megan      / Pulmonology    → Pulmonary Function Test
    (10, 3);   -- Megan      / Pulmonology    → X-Ray
