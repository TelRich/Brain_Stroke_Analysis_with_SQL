-- 1. What's the distibution of hypertension in the dataset?
SELECT      hypertension, COUNT(*) count
FROM        brainStroke
GROUP BY    hypertension;

-- 2. How many male and female has hypertension?
SELECT      gender, hypertension, COUNT(*) count
FROM        brainStroke
WHERE       hypertension = 1
GROUP BY    gender;

-- 3. For each smoking status show how many people have hypertension and how many do not?
SELECT      smoking_status, hypertension, COUNT(*) count
FROM        brainStroke
GROUP BY    smoking_status, hypertension;

--4. People with both hypertension and heart disease
SELECT      gender, COUNT(*) has_both_hyptnsn_hrt_dis
FROM        brainStroke
WHERE       hypertension = 1 AND heart_disease = 1
GROUP BY    gender;

-- 5. Which residence has the lowest number of people with no heart disease?
SELECT      residence_type, COUNT(*) count
FROM        brainStroke
WHERE       heart_disease = 0
GROUP BY    residence_type

-- 6. How many percent of people with private work type has no hypertension?
SELECT      work_type, CAST(COUNT(*) AS FLOAT)/total.count * 100 AS Percent
FROM        brainStroke, (SELECT COUNT(*) count FROM brainStroke WHERE work_type = 'Private') total
WHERE       hypertension = 0 AND work_type = 'Private'