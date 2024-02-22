


SELECT * from job

SELECT * from roles where job_id = 2;


SELECT job.name, job.from_time, job.to_time, location_city.location_name,
       GROUP_CONCAT(roles.role_name SEPARATOR ', ') AS roles_in_job,
       job.internship
FROM job
JOIN location_city ON job.location_id = location_city.location_id
JOIN role_desc ON job.job_id = role_desc.job_id
JOIN roles ON role_desc.role_id = roles.role_id
GROUP BY job.job_id, job.name, job.from_time, job.to_time, location_city.location_name, job.internship;



SELECT s.from_time, s.to_time
FROM job AS j
JOIN slots_in_job AS sij ON j.job_id = sij.job_id
JOIN slots AS s ON sij.slot_id = s.slot_id
WHERE j.job_id = 1;



SELECT roles.role_name, role_desc.package_rupees, role_desc.description, role_desc.requirements
FROM job
JOIN role_desc ON job.job_id = role_desc.job_id
JOIN roles ON role_desc.role_id = roles.role_id
WHERE job.job_id = 1;


SELECT job.name,
       instructions_and_requirements.general_instructions,
       instructions_and_requirements.instructions_for_the_exam,
       instructions_and_requirements.min_system_requirements,
       instructions_and_requirements.process_text
FROM job
JOIN instructions_and_requirements ON job.instructions_and_requirements_id = instructions_and_requirements.instructions_and_requirements_id
WHERE job.job_id = 1;
