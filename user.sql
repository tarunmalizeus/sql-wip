-- show databases;
create database first_demo;
use first_demo;
show tables;

select * from users;

INSERT INTO users (email, password) VALUES ("johndo@exampl.com", "password123")




CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * from userassets

CREATE TABLE userassets (
    userassets_id INT AUTO_INCREMENT PRIMARY KEY,
    resume BLOB,
    profile_photo BLOB,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


select * from qualification

CREATE TABLE qualification (
    qualification_id INT AUTO_INCREMENT PRIMARY KEY,
    qualification_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * from stream_branch

CREATE TABLE stream_branch (
    stream_id INT AUTO_INCREMENT PRIMARY KEY,
    stream_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE location_city (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * from college


SELECT college_id FROM college WHERE college_name = "Stanford"


CREATE TABLE college (
    college_id INT AUTO_INCREMENT PRIMARY KEY,
    college_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    location_id INT NOT NULL REFERENCES location(location_id)
);


select * from edqualification


SELECT qualification_id FROM qualification WHERE qualification_name = "Bachelor of Technology";

SELECT stream_id FROM stream_branch WHERE stream_name = "Computer Science";



CREATE TABLE edqualification (
    edqualification_id INT AUTO_INCREMENT PRIMARY KEY,
    percentage DECIMAL(5,2) NOT NULL,
    passing_year YEAR NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    qualification_id INT NOT NULL REFERENCES qualification(qualification_id),
    stream_id INT NOT NULL REFERENCES stream(stream_id),
    college_id INT NOT NULL REFERENCES college(college_id),
    other_college_name VARCHAR(255)
);

CREATE TABLE applicationtype (
    applicationtype_id INT AUTO_INCREMENT PRIMARY KEY,
    applicationtype_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);




CREATE TABLE proqualification (
    proqualification_id INT AUTO_INCREMENT PRIMARY KEY,
    applicationtype_id INT NOT NULL REFERENCES applicationtype(applicationtype_id),
    exp_year INT NOT NULL,
    current_ctc DECIMAL(10,2) NOT NULL,
    expected_ctc DECIMAL(10,2) NOT NULL,
    currently_on_notice_period BOOLEAN NOT NULL,
    notice_end DATE,
    notice_period_length INT,
    appeared_zeus_test BOOLEAN NOT NULL,
    zeus_test_role VARCHAR(255),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);






CREATE TABLE userdetails (
    userdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    portfolio_url VARCHAR(255),
    referal_emp_name VARCHAR(255),
    send_me_update BOOLEAN,
    familiartechs_others TEXT,
    experttechs_others TEXT,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    user_id INT NOT NULL REFERENCES users(user_id),
    userassets_id INT NOT NULL REFERENCES userassets(userassets_id),
    edqualification_id INT NOT NULL REFERENCES edqualification(edqualification_id),
    proqualification_id INT NOT NULL REFERENCES proqualification(proqualification_id)
);


    CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    job_id INT REFERENCES job(job_id)
);

CREATE TABLE preferred_job_roles (
    role_id INT NOT NULL REFERENCES roles(role_id),
    user_id INT NOT NULL REFERENCES users(user_id),
    PRIMARY KEY (role_id, user_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE techs (
    tech_id INT AUTO_INCREMENT PRIMARY KEY,
    tech_name VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE proqualification_familiartechs (
    proqualification_id INT NOT NULL REFERENCES proqualification(proqualification_id),
    tech_id INT NOT NULL REFERENCES techs(tech_id),
    PRIMARY KEY (proqualification_id, tech_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE proqualification_experttechs (
    proqualification_id INT NOT NULL REFERENCES proqualification(proqualification_id),
    tech_id INT NOT NULL REFERENCES techs(tech_id),
    PRIMARY KEY (proqualification_id, tech_id),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


