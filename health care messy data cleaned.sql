SELECT * FROM practice_db.healthcare_messy_data;
SELECT * 
FROM healthcare_messy_data
LIMIT 20;

CREATE TABLE health_data
LIKE healthcare_messy_data;

SELECT *
FROM health_data;

INSERT health_data
SELECT * 
FROM healthcare_messy_data;

SELECT * 
FROM health_data
LIMIT 20;

UPDATE health_data
SET `Patient Name` = LOWER(TRIM(`Patient Name`));

SELECT * 
FROM health_data;

UPDATE health_data SET age = 40 WHERE age = 'forty';

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%d/%m/%Y');

SELECT `Visit Date`,
       STR_TO_DATE(`Visit Date`, '%m/%d/%Y') AS cleaned_date
FROM health_data
LIMIT 20;


UPDATE health_data
SET `Patient Name` = CONCAT(
    UPPER(LEFT(SUBSTRING_INDEX(`Patient Name`, ' ', 1), 1)),
    LOWER(SUBSTRING(SUBSTRING_INDEX(`Patient Name`, ' ', 1), 2)),
    ' ',
    UPPER(LEFT(SUBSTRING_INDEX(`Patient Name`, ' ', -1), 1)),
    LOWER(SUBSTRING(SUBSTRING_INDEX(`Patient Name`, ' ', -1), 2))
);

UPDATE health_data
SET age = NULL
WHERE age = 'NaN';

UPDATE health_data SET age = 40 WHERE age = 'forty';
SELECT `Visit Date`,
       STR_TO_DATE(`Visit Date`, '%m/%d/%Y') AS cleaned_date
FROM health_data
LIMIT 20;

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%m/%d/%Y')
WHERE `Visit Date` LIKE '%/%';

SELECT *
FROM health_data
LIMIT 20;

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%m/%d/%Y')
WHERE `Visit Date` LIKE '%/%';

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%Y/%m/%d')
WHERE `Visit Date` LIKE '____/%/%';

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%m/%d/%Y')
WHERE `Visit Date` LIKE '__/__/____';

SELECT  `Visit Date`
FROM health_data
LIMIT 50;
SELECT DISTINCT `Visit Date`
FROM health_data
WHERE `Visit Date` REGEXP '[A-Za-z]'
LIMIT 50;

SELECT *
FROM health_data;

UPDATE health_data
SET `Phone Number` = NULL
WHERE `Phone Number` = 'NaN';



UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%M %d %Y')
WHERE `Visit Date` REGEXP '[A-Za-z]';

UPDATE health_data
SET `Visit Date` = STR_TO_DATE(`Visit Date`, '%M %d, %Y')
WHERE `Visit Date` REGEXP '[A-Za-z]';


UPDATE health_data
SET `Phone Number` = NULL
WHERE `Phone Number` = 'NaN';


