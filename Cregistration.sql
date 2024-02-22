
INSERT INTO venu (venue_name)
VALUES
('Venue 1'),
('Venue 2'),
('Venue 3');


INSERT INTO resume (resume) VALUES (LOAD_FILE('/Users/tm/Developer/react/db/resume_tarun.pdf'));


INSERT INTO application (slot_id, resume_id, venue_id) VALUES (1, 1, 1)


INSERT INTO user_applications (user_id, application_id) VALUES (1, 1)

INSERT INTO job_preferences (application_id, role_id) VALUES (1, 1)


