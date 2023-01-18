-- Distribution of stroke in the dataset
SELECT      gender, stroke, COUNT(*) count
FROM        brainStroke
GROUP BY    gender, stroke;

SELECT      stroke, CAST(COUNT(*) AS FLOAT)/total.count * 100 AS Percent
FROM        brainStroke, (SELECT COUNT(*) count FROM brainStroke WHERE gender = 'Male') total
WHERE       gender = 'Male'
GROUP BY    stroke;

-- People with both hypertension and stoke
SELECT      gender, COUNT(*) has_both_hyptnsn_hrt_dis
FROM        brainStroke
WHERE       hypertension = 1 AND heart_disease = 1
GROUP BY    gender;

-- Hypertension by residence type
SELECT      residence_type, hypertension,  COUNT(*) count
FROM        brainStroke 
GROUP BY    residence_type, hypertension