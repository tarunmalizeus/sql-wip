INSERT INTO users (email, password) VALUES ('user1@example.com', 'password123')

GRANT FILE ON *.* TO 'root'@'localhost';


INSERT INTO userassets (resume, profile_photo) VALUES (LOAD_FILE('/Users/tm/Developer/react/db/resume_tarun.pdf'), LOAD_FILE('/Users/tm/Developer/react/db/pic_tarun.jpg'));

select * from userassets;

INSERT INTO qualification (qualification_name) VALUES ('Bachelor of Technology'), ('Master of Science'), ('Ph.D.');

INSERT INTO stream_branch (stream_name) VALUES ('Computer Science'), ('Electronics'), ('Mechanical Engineering');

INSERT INTO location_city (location_name) VALUES ('New York'), ('California'), ('Texas');

INSERT INTO college (college_name, location_id) VALUES ('MIT', 1), ('Stanford', 2), ('Texas A&M', 3);

INSERT INTO edqualification (percentage, passing_year, qualification_id, stream_id, college_id, other_college_name) VALUES (85.00, 2020, 1, 1, 1,null), (90.00, 2019, 2, 2, 2, null);

select * from edqualification

INSERT INTO applicationtype (applicationtype_name) VALUES ('Fresher'), ('Experienced');


select * from proqualification;

INSERT INTO proqualification (applicationtype_id, exp_year, current_ctc, expected_ctc, currently_on_notice_period, appeared_zeus_test) VALUES (1, 5, 50000.00, 70000.00, FALSE, FALSE), (2, 3, 30000.00, 50000.00, TRUE, TRUE);

select * from userdetails;

INSERT INTO userdetails (
    first_name,
    last_name,
    phone_no,
    portfolio_url,
    referal_emp_name,
    send_me_update,
    familiartechs_others,
    experttechs_others,
    user_id,
    userassets_id,
    edqualification_id,
    proqualification_id
) VALUES (
    'John',
    'Doe',
    '123-456-7890',
    'https://example.com/johndoe',
    'Alice Smith',
    1,
    'Java, JavaScript',
    'Python, SQL',
    1,  -- Replace with the actual user_id value
    1,  -- Replace with the actual userassets_id value
    1,  -- Replace with the actual edqualification_id value
    1   -- Replace with the actual proqualification_id value
);


INSERT INTO preferred_job_roles (role_id, user_id) VALUES (1, 1)


INSERT INTO techs (tech_name) VALUES ('Python'), ('Java'), ('C++');

INSERT INTO proqualification_familiartechs (proqualification_id, tech_id) VALUES (1, 1), (1, 2);
INSERT INTO proqualification_experttechs (proqualification_id, tech_id) VALUES (2, 3), (2, 1);
