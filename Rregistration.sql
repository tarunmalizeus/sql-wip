SELECT j.name AS job_name,
       j.from_time,
       v.venue_name,
       tr.things_to_remember
FROM application a
JOIN job j ON a.job_id = j.job_id
JOIN slots_in_job sij ON j.job_id = sij.job_id
JOIN slots s ON sij.slot_id = s.slot_id
JOIN venu v ON a.venue_id = v.venue_id
JOIN things_to_remember tr ON j.things_to_remember_id = tr.things_to_remember_id
WHERE a.application_id = 1;
