-- Distribution of stroke in the dataset
SELECT      gender, stroke, COUNT(*) count
FROM        brainStroke
GROUP BY    gender, stroke,