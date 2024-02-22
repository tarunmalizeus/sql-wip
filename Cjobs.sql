INSERT INTO instructions_and_requirements (general_instructions, instructions_for_the_exam, min_system_requirements, process_text) VALUES
('General instructions about the company and job position.', 'Instructions specific to the examination process.', 'Minimum system requirements for taking the online test.', 'Process text detailing the steps involved in the application.');

INSERT INTO venu (venue_name) VALUES
('Main Office'), ('Branch Office');

INSERT INTO things_to_remember (things_to_remember) VALUES
('Bring ID proof'), ('Download necessary software before the exam');

INSERT INTO job (name, from_time, to_time, location_id, internship, instructions_and_requirements_id, venue_id, things_to_remember_id) VALUES
('Software Engineer', '2023-01-01', '2023-06-01', 1, 'No', 1, 1, 1),
('Data Analyst', '2023-02-01', '2023-07-01', 1, 'Yes', 1, 2, 2);

INSERT INTO slots (from_time, to_time) VALUES
('09:00:00', '10:00:00'),
('10:00:00', '11:00:00'),
('11:00:00', '12:00:00');

INSERT INTO slots_in_job (job_id, slot_id) VALUES (1, 1);

INSERT INTO roles (role_name, job_id) VALUES
('Junior Developer', 1), ('Senior Analyst', 2);

INSERT INTO role_desc (job_id, role_id, package_rupees, description, requirements) VALUES
(1, 1, 500000.00, 'Junior developer in charge of maintaining internal tools.', 'Basic knowledge of Python and JavaScript.'),
(2, 2, 700000.00, 'Senior analyst focusing on data trends and analytics.', 'Advanced knowledge of SQL and Python, experience with data visualization tools.');
