SET SQL_SAFE_UPDATES = 0;

UPDATE fact_survey_responses
SET Taste_experience = NULL
WHERE Tried_before = 'No' AND Taste_experience IS NOT NULL;

UPDATE fact_survey_responses
SET Heard_before = 'Yes'
WHERE Tried_before = 'Yes' AND Heard_before = 'No';

SET SQL_SAFE_UPDATES = 1;


