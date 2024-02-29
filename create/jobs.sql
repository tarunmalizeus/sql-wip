




select * from job;

select * from instructions_and_requirements;

CREATE TABLE instructions_and_requirements(
    instructions_and_requirements_id INT AUTO_INCREMENT PRIMARY KEY,
    general_instructions TEXT NOT NULL,
    instructions_for_the_exam TEXT NOT NULL,
    min_system_requirements TEXT NOT NULL,
    process_text TEXT NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)


CREATE TABLE things_to_remember(
    things_to_remember_id INT AUTO_INCREMENT PRIMARY KEY,
    things_to_remember TEXT NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)



CREATE TABLE slots (
    slot_id INT AUTO_INCREMENT PRIMARY KEY,
    from_time TIME NOT NULL,
    to_time TIME NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * from slots

CREATE TABLE job (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    --job_name
    name VARCHAR(255) NOT NULL,
    from_time DATE NOT NULL,
    to_time DATE NOT NULL,
    location_id INT REFERENCES location(location_id),
    internship VARCHAR(255),


    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    instructions_and_requirements_id INT NOT NULL REFERENCES instructions_and_requirements(instructions_and_requirements_id),
    venue_id INT NOT NULL REFERENCES venu(venue_id),
    things_to_remember_id INT NOT NULL REFERENCES things_to_remember(things_to_remember_id)
)

SELECT * from job;

CREATE TABLE slots_in_job(
    job_id INT NOT NULL REFERENCES job(job_id),
    slot_id INT NOT NULL REFERENCES slots(slot_id),
    PRIMARY KEY (job_id, slot_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)




select * from slots_in_job;





select * from roles;


INSERT INTO roles (role_name) VALUES
('Instructional Designer'),
('Software Engineer'),
('Software Quality Engineer');


    CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

    

    application_id INT NOT NULL REFERENCES application(application_id),
    role_id INT NOT NULL REFERENCES roles(role_id),
    PRIMARY KEY (application_id,role_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP






select * from role_desc;

SELECT * from role_desc where role_id=1 and job_id=1

CREATE TABLE role_desc (
    job_id INT NOT NULL REFERENCES job(job_id),
    role_id INT NOT NULL REFERENCES roles(role_id),
    PRIMARY KEY (job_id, role_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    package_rupees DECIMAL(10,2),
    description TEXT NOT NULL,
    requirements TEXT NOT NULL
);




