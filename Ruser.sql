
SELECT first_name, last_name, email, phone_no, portfolio_url,
        (SELECT GROUP_CONCAT(role_name) FROM roles JOIN preferred_job_roles USING (role_id) WHERE user_id = userdetails.user_id) AS preferred_job_roles,
        send_me_update,
    --    CONCAT(percentage, '%') AS percentage,
        percentage,
        passing_year,
       qualification.qualification_name AS qualification,
       stream_branch.stream_name AS stream_branch,
       college.college_name AS college,
       other_college_name,
       location_city.location_name AS college_location,
       applicationtype.applicationtype_name AS applicant_type,
       exp_year,
       current_ctc,
       expected_ctc,
       (SELECT GROUP_CONCAT(tech_name) FROM techs JOIN proqualification_experttechs USING (tech_id) WHERE proqualification_id = userdetails.proqualification_id) AS technologies_expertise,
       experttechs_others AS expertise_others,
       (SELECT GROUP_CONCAT(tech_name) FROM techs JOIN proqualification_familiartechs USING (tech_id) WHERE proqualification_id = userdetails.proqualification_id) AS technology_familiar,
       familiartechs_others AS familiar_others,
       currently_on_notice_period,
       notice_end,
       notice_period_length,
       appeared_zeus_test,
       zeus_test_role
FROM userdetails
JOIN users USING (user_id)
JOIN edqualification USING (edqualification_id)
JOIN qualification USING (qualification_id)
JOIN stream_branch USING (stream_id)
JOIN college USING (college_id)
JOIN location_city ON college.location_id = location_city.location_id
JOIN proqualification USING (proqualification_id)
JOIN applicationtype USING (applicationtype_id);
LEFT JOIN preferred_job_roles USING (user_id)
LEFT JOIN roles USING (role_id)