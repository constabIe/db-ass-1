-- =========================
-- Departments (12 rows)
-- =========================
INSERT INTO department (name, building_number, room_number) VALUES
    ('Cardiology',       'A', '101'),
    ('Neurology',        'A', '207'),
    ('Orthopedics',      'B', '314'),
    ('General Practice', 'C', '112'),
    ('Pediatrics',       'C', '223'),
    ('Oncology',         'D', '401'),
    ('Dermatology',      'D', '418'),
    ('Gastroenterology', 'B', '322'),
    ('Endocrinology',    'A', '215'),
    ('Pulmonology',      'E', '109'),
    ('Ophthalmology',    'E', '203'),
    ('Urology',          'B', '116');

-- =========================
-- Doctors (18 rows)
-- Nullable: phone, email
-- All emails use @gorbolnica.ru
-- =========================
INSERT INTO doctor (full_name, specialization, phone, email, hire_date, licence_number, department_id) VALUES
    ('Dr. Ivan Petrov',         'Cardiologist',         '+7-916-234-57-81', 'i.petrov@gorbolnica.ru',     '2015-03-10', 'LIC-20441', 1),
    ('Dr. Olga Smirnova',       'Neurologist',          '+7-903-781-44-92', NULL,                         '2012-07-22', 'LIC-31827', 2),
    ('Dr. Alexey Kozlov',       'Orthopedic Surgeon',   NULL,               'a.kozlov@gorbolnica.ru',     '2018-01-15', 'LIC-47293', 3),
    ('Dr. Natalia Popova',      'General Practitioner', '+7-985-063-91-24', 'n.popova@gorbolnica.ru',     '2020-09-01', 'LIC-55014', 4),
    ('Dr. Dmitry Sokolov',      'Pediatrician',         '+7-919-347-85-13', NULL,                         '2017-05-30', 'LIC-62738', 5),
    ('Dr. Marina Lebedeva',     'Oncologist',           NULL,               'm.lebedeva@gorbolnica.ru',   '2013-11-20', 'LIC-70185', 6),
    ('Dr. Sergey Novikov',      'Dermatologist',        '+7-977-194-63-48', 's.novikov@gorbolnica.ru',    '2019-04-18', 'LIC-83946', 7),
    ('Dr. Elena Morozova',      'Gastroenterologist',   '+7-906-823-71-35', 'e.morozova@gorbolnica.ru',   '2016-08-03', 'LIC-91472', 8),
    ('Dr. Andrey Volkov',       'Endocrinologist',      NULL,               NULL,                         '2014-02-27', 'LIC-10539', 9),
    ('Dr. Tatiana Kuznetsova',  'Pulmonologist',        '+7-931-286-54-17', 't.kuznetsova@gorbolnica.ru', '2021-06-14', 'LIC-11863', 10),
    ('Dr. Viktor Zaytsev',      'Ophthalmologist',      '+7-926-417-83-29', 'v.zaytsev@gorbolnica.ru',    '2011-09-05', 'LIC-24057', 11),
    ('Dr. Lyudmila Pavlova',    'Urologist',            '+7-903-652-18-74', NULL,                         '2019-12-11', 'LIC-35681', 12),
    ('Dr. Roman Karpov',        'Cardiologist',         '+7-916-583-47-09', 'r.karpov@gorbolnica.ru',     '2022-03-28', 'LIC-42917', 1),
    ('Dr. Galina Egorova',      'Neurologist',          NULL,               'g.egorova@gorbolnica.ru',    '2010-05-19', 'LIC-58324', 2),
    ('Dr. Oleg Baranov',        'General Practitioner', '+7-985-371-62-48', 'o.baranov@gorbolnica.ru',    '2023-01-09', 'LIC-69751', 4),
    ('Dr. Ksenia Belova',       'Pediatrician',         '+7-919-708-35-61', NULL,                         '2016-11-23', 'LIC-73482', 5),
    ('Dr. Maxim Gusev',         'Dermatologist',        '+7-977-842-19-53', 'm.gusev@gorbolnica.ru',      '2020-07-07', 'LIC-86194', 7),
    ('Dr. Vera Titova',         'Oncologist',           '+7-912-563-84-27', 'v.titova@gorbolnica.ru',     '2015-10-31', 'LIC-97628', 6);

-- =========================
-- Patients (25 rows)
-- Nullable: gender, phone, email, address
-- Emails use varied Russian domains
-- =========================
INSERT INTO patient (full_name, national_id, gender, date_of_birth, phone, email, address) VALUES
    ('Ivan Sidorov',         '770412385291', 'Male',   '1985-04-12', '+7-916-748-32-91', 'i.sidorov@mail.ru',        'ul. Lenina 12, kv. 48, Moskva'),
    ('Ekaterina Volkova',    '781025647382', 'Female', '1992-08-25', NULL,               'e.volkova@yandex.ru',      'ul. Mira 34, kv. 7, Sankt-Peterburg'),
    ('Mikhail Orlov',        '692311483756', 'Male',   '1978-11-03', '+7-926-391-54-28', NULL,                       'pr. Nevsky 78, kv. 115, Sankt-Peterburg'),
    ('Anna Sorokina',        '830217596413', NULL,      '2000-02-17', '+7-985-274-63-17', 'a.sorokina@bk.ru',         NULL),
    ('Nikolay Fedorov',      '541230874625', 'Male',   '1965-06-30', '+7-919-836-45-73', 'n.fedorov@inbox.ru',       'ul. Tverskaya 5, kv. 22, Moskva'),
    ('Yulia Zarubina',       '910608312749', 'Female', '1990-12-08', NULL,               'yu.zarubina@list.ru',      NULL),
    ('Artem Belov',          '630321785194', 'Male',   '2005-03-21', '+7-977-453-28-06', NULL,                       'ul. Gagarina 19, kv. 3, Kazan'),
    ('Irina Stepanova',      '750714628531', 'Female', '1983-07-14', '+7-906-182-74-59', 'i.stepanova@rambler.ru',   'ul. Pushkina 3, kv. 91, Novosibirsk'),
    ('Pavel Nikitin',        '880905174362', NULL,      '1995-09-05', NULL,               'p.nikitin@yandex.ru',      'pr. Mira 61, kv. 14, Ekaterinburg'),
    ('Svetlana Gromova',     '620129843517', 'Female', '1972-01-29', '+7-931-847-13-96', 'sv.gromova@mail.ru',       NULL),
    ('Denis Tarasov',        '930716254831', 'Male',   '1993-07-16', '+7-916-273-84-15', NULL,                       'ul. Kirova 27, kv. 64, Moskva'),
    ('Olga Kudryavtseva',    '870423691548', 'Female', '1987-04-23', '+7-903-546-12-87', 'o.kudryavtseva@yandex.ru', 'ul. Kommunarov 8, kv. 31, Rostov-na-Donu'),
    ('Vladislav Romanov',    '010809372654', 'Male',   '2001-08-09', '+7-926-814-37-52', 'v.romanov@mail.ru',        NULL),
    ('Tatiana Medvedeva',    '790530148276', 'Female', '1979-05-30', NULL,               NULL,                       'ul. Sovetskaya 41, kv. 2, Voronezh'),
    ('Sergey Kovalenko',     '850212563498', 'Male',   '1985-02-12', '+7-985-632-49-18', 's.kovalenko@bk.ru',        'pr. Pobedy 15, kv. 73, Chelyabinsk'),
    ('Maria Vinogradova',    '960318742915', NULL,      '1996-03-18', '+7-919-458-71-36', 'mv.vinogradova@list.ru',   'ul. Lermontova 6, kv. 58, Samara'),
    ('Aleksey Frolov',       '731124896342', 'Male',   '1973-11-24', NULL,               NULL,                       'ul. Oktyabrskaya 52, kv. 19, Omsk'),
    ('Daria Komarova',       '040507281635', 'Female', '2004-05-07', '+7-977-391-62-04', 'd.komarova@inbox.ru',      NULL),
    ('Igor Zhdanov',         '680819475213', 'Male',   '1968-08-19', '+7-906-725-43-81', 'ig.zhdanov@rambler.ru',    'ul. Fabrichnaya 11, kv. 40, Krasnoyarsk'),
    ('Polina Maximova',      '990101583724', 'Female', '1999-01-01', NULL,               'p.maximova@yandex.ru',     'pr. Leninsky 93, kv. 156, Moskva'),
    ('Timur Sabitov',        '810627314589', 'Male',   '1981-06-27', '+7-912-648-35-72', NULL,                       'ul. Baumana 17, kv. 5, Kazan'),
    ('Nadezhda Loginova',    '750903261847', 'Female', '1975-09-03', '+7-921-573-16-94', 'n.loginova@mail.ru',       'ul. Bolshaya Morskaya 29, kv. 83, Sankt-Peterburg'),
    ('Konstantin Shcherbakov','860415739261', 'Male',   '1986-04-15', '+7-931-462-87-35', NULL,                       NULL),
    ('Elena Bogdanova',      '920830154672', 'Female', '1992-08-30', '+7-916-397-51-28', 'e.bogdanova@bk.ru',        'ul. Gorkogo 44, kv. 12, Nizhniy Novgorod'),
    ('Ruslan Akhmetov',      '030214867539', NULL,      '2003-02-14', NULL,               'r.akhmetov@yandex.ru',     'ul. Karla Marksa 31, kv. 67, Ufa');

-- =========================
-- Procedures (15 rows)
-- =========================
INSERT INTO procedure (name, price) VALUES
    ('Blood Test',               47.99),
    ('ECG',                     163.50),
    ('X-Ray',                   214.75),
    ('MRI Scan',                849.99),
    ('Ultrasound',              275.30),
    ('Physical Therapy',        118.25),
    ('Vaccination',              52.40),
    ('Neurology Screening',     389.99),
    ('CT Scan',                 634.80),
    ('Pulmonary Function Test', 197.60),
    ('Colonoscopy',             425.15),
    ('Dermatoscopy',             89.70),
    ('Endoscopy',               372.45),
    ('Allergy Panel',           281.90),
    ('Hormone Panel',           315.35);

-- =========================
-- Appointments (30 rows)
-- =========================
INSERT INTO appointment (date, time, status, patient_id, doctor_id) VALUES
    ('2024-01-10', '08:47', 'completed',   1,  1),
    ('2024-01-11', '10:23', 'completed',   2,  2),
    ('2024-01-12', '11:38', 'completed',   3,  3),
    ('2024-01-13', '14:12', 'cancelled',   4,  4),
    ('2024-01-14', '09:51', 'completed',   5,  1),
    ('2024-01-15', '15:29', 'completed',   6,  5),
    ('2024-01-16', '16:42', 'scheduled',   7,  4),
    ('2024-01-17', '10:07', 'completed',   8,  6),
    ('2024-01-18', '13:53', 'scheduled',   9,  8),
    ('2024-01-19', '11:18', 'in_progress', 10, 10),
    ('2024-02-02', '09:14', 'completed',   11,  7),
    ('2024-02-05', '12:36', 'completed',   12, 11),
    ('2024-02-07', '08:05', 'cancelled',   13, 12),
    ('2024-02-10', '14:48', 'completed',   14, 13),
    ('2024-02-12', '10:57', 'completed',   15,  9),
    ('2024-02-14', '16:21', 'completed',    1, 14),
    ('2024-02-17', '11:43', 'scheduled',   16,  2),
    ('2024-02-19', '09:32', 'completed',   17,  3),
    ('2024-02-21', '15:06', 'completed',   18, 15),
    ('2024-02-23', '13:17', 'in_progress', 19, 16),
    ('2024-03-01', '08:28', 'completed',   20,  5),
    ('2024-03-04', '10:49', 'completed',   21,  8),
    ('2024-03-06', '12:11', 'cancelled',   22, 17),
    ('2024-03-08', '14:35', 'completed',   23, 18),
    ('2024-03-11', '09:03', 'scheduled',   24,  6),
    ('2024-03-13', '16:54', 'completed',   25,  1),
    ('2024-03-15', '11:26', 'completed',    2, 10),
    ('2024-03-18', '08:39', 'completed',    5, 11),
    ('2024-03-20', '15:47', 'in_progress',  8, 13),
    ('2024-03-22', '10:02', 'scheduled',   12,  4);

-- =========================
-- Diagnoses (30 rows, one per appointment)
-- Nullable: description
-- =========================
INSERT INTO diagnosis (title, description, appointment_id) VALUES
    ('Hypertension',                'Stage 1 hypertension. Prescribed ACE inhibitors and dietary changes.',              1),
    ('Migraine',                    NULL,                                                                                2),
    ('Knee Ligament Injury',        'Partial ACL tear in right knee. Physical therapy course for 6 weeks.',              3),
    ('Seasonal Allergies',          NULL,                                                                                4),
    ('Arrhythmia',                  'Mild cardiac arrhythmia detected on ECG. Follow-up in 3 months.',                   5),
    ('Viral Infection',             'Acute respiratory infection. Rest and fluids recommended.',                          6),
    ('Vitamin D Deficiency',        NULL,                                                                                7),
    ('Early Stage Lymphoma',        'Stage 1 Hodgkin lymphoma detected. Referred to oncology board.',                    8),
    ('Irritable Bowel Syndrome',    'IBS confirmed via colonoscopy. Prescribed low-FODMAP diet.',                        9),
    ('Chronic Bronchitis',          NULL,                                                                               10),
    ('Contact Dermatitis',          'Allergic reaction on both forearms. Topical corticosteroids prescribed.',           11),
    ('Myopia Progression',          'Vision deteriorated to -3.75. New prescription issued.',                            12),
    ('Benign Prostatic Hyperplasia',NULL,                                                                               13),
    ('Stable Angina',               'Stress test positive. Prescribed beta-blockers and nitroglycerin.',                14),
    ('Hypothyroidism',              'TSH elevated to 11.2 mIU/L. Started on levothyroxine 50 mcg.',                    15),
    ('Tension Headache',            NULL,                                                                               16),
    ('Cervical Osteochondrosis',    'MRI shows C5-C6 disc protrusion. Conservative treatment plan.',                    17),
    ('Lumbar Disc Herniation',      'L4-L5 herniation confirmed. Referred for epidural injection.',                     18),
    ('Acute Gastritis',             NULL,                                                                               19),
    ('Acute Otitis Media',          'Right ear infection. Prescribed amoxicillin 500 mg for 7 days.',                   20),
    ('Asthma Exacerbation',         'Peak flow at 65%. Nebulizer treatment administered. Inhaler adjusted.',            21),
    ('Gastroesophageal Reflux',     NULL,                                                                               22),
    ('Acne Vulgaris',               'Moderate papulopustular acne. Prescribed adapalene gel and doxycycline.',          23),
    ('Breast Cyst',                 'Benign cyst confirmed via ultrasound. Follow-up in 6 months.',                     24),
    ('Ovarian Cyst',                NULL,                                                                               25),
    ('Coronary Artery Disease',     'Angiography scheduled. Risk factors: smoking, high LDL.',                          26),
    ('Chronic Obstructive Pulmonary Disease', 'Spirometry: FEV1 58% predicted. Started on tiotropium.',                 27),
    ('Conjunctivitis',              NULL,                                                                               28),
    ('Aortic Valve Stenosis',       'Echocardiogram shows moderate stenosis. Surgical consult pending.',                29),
    ('Type 2 Diabetes Mellitus',    'HbA1c at 7.8%. Metformin 1000 mg started. Dietary counseling.',                    30);

-- =========================
-- Appointment <-> Procedure (38 rows)
-- Some appointments have 0 procedures (e.g. 4, 7, 13, 16, 22, 25, 30)
-- =========================
INSERT INTO appointment_procedure (appointment_id, procedure_id) VALUES
    (1,  1),   -- Ivan Sidorov        / Cardiology       → Blood Test
    (1,  2),   -- Ivan Sidorov        / Cardiology       → ECG
    (2,  8),   -- Ekaterina Volkova   / Neurology        → Neurology Screening
    (2,  4),   -- Ekaterina Volkova   / Neurology        → MRI Scan
    (3,  3),   -- Mikhail Orlov       / Orthopedics      → X-Ray
    (3,  6),   -- Mikhail Orlov       / Orthopedics      → Physical Therapy
    (5,  1),   -- Nikolay Fedorov     / Cardiology       → Blood Test
    (5,  2),   -- Nikolay Fedorov     / Cardiology       → ECG
    (5,  4),   -- Nikolay Fedorov     / Cardiology       → MRI Scan
    (6,  7),   -- Yulia Zarubina      / Pediatrics       → Vaccination
    (8,  9),   -- Irina Stepanova     / Oncology         → CT Scan
    (8,  1),   -- Irina Stepanova     / Oncology         → Blood Test
    (9,  5),   -- Pavel Nikitin       / Gastroenterology  → Ultrasound
    (9, 11),   -- Pavel Nikitin       / Gastroenterology  → Colonoscopy
    (10, 10),  -- Svetlana Gromova    / Pulmonology      → Pulmonary Function Test
    (11, 12),  -- Denis Tarasov       / Dermatology      → Dermatoscopy
    (11,  1),  -- Denis Tarasov       / Dermatology      → Blood Test
    (12,  3),  -- Olga Kudryavtseva   / Ophthalmology    → X-Ray
    (14,  2),  -- Tatiana Medvedeva   / Cardiology       → ECG
    (14,  1),  -- Tatiana Medvedeva   / Cardiology       → Blood Test
    (15, 15),  -- Sergey Kovalenko    / Endocrinology    → Hormone Panel
    (15,  1),  -- Sergey Kovalenko    / Endocrinology    → Blood Test
    (17,  4),  -- Maria Vinogradova   / Neurology        → MRI Scan
    (17,  8),  -- Maria Vinogradova   / Neurology        → Neurology Screening
    (18,  3),  -- Aleksey Frolov      / Orthopedics      → X-Ray
    (18,  6),  -- Aleksey Frolov      / Orthopedics      → Physical Therapy
    (19,  5),  -- Daria Komarova      / General Practice  → Ultrasound
    (19, 13),  -- Daria Komarova      / General Practice  → Endoscopy
    (20,  7),  -- Igor Zhdanov        / Pediatrics       → Vaccination
    (21, 10),  -- Polina Maximova     / Pediatrics       → Pulmonary Function Test
    (21,  1),  -- Polina Maximova     / Pediatrics       → Blood Test
    (23, 12),  -- Nadezhda Loginova   / Dermatology      → Dermatoscopy
    (24,  5),  -- Konstantin Shcherbakov / Oncology      → Ultrasound
    (24,  9),  -- Konstantin Shcherbakov / Oncology      → CT Scan
    (26,  2),  -- Ekaterina Volkova   / Pulmonology      → ECG
    (26,  1),  -- Ekaterina Volkova   / Pulmonology      → Blood Test
    (27, 10),  -- Nikolay Fedorov     / Ophthalmology    → Pulmonary Function Test
    (28,  3),  -- Irina Stepanova     / Cardiology       → X-Ray
    (29,  2),  -- Olga Kudryavtseva   / General Practice  → ECG
    (29,  5);  -- Olga Kudryavtseva   / General Practice  → Ultrasound
