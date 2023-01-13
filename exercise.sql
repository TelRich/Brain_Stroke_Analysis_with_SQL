-- Distribution of stroke in the dataset
SELECT      gender, stroke, COUNT(*) count
FROM        brainStroke
GROUP BY    gender, stroke;

SELECT      stroke, CAST(COUNT(*) AS FLOAT)/total.count * 100 AS Percent
FROM        brainStroke, (SELECT COUNT(*) count FROM brainStroke WHERE gender = 'Male') total
WHERE       gender = 'Male'
GROUP BY    stroke;

