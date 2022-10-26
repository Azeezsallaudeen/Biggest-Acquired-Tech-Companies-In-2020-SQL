-- CREATE DATABASE techacquisition_sql;

USE techacquisition_sql;

ALTER TABLE `biggestdataacqu` RENAME `biggestacquisition` ;

SELECT *
FROM biggestacquisition
ORDER BY Date_of_acquision;

-- Number Of Biggest Tech Acquired Companies In 2020
SELECT COUNT(acquiree)
FROM biggestacquisition;

-- First Five Acquirer Of Biggest Tech acquired companies In 2020(In Billions USD)

SELECT acquirer,
       amount
FROM biggestacquisition
ORDER BY amount DESC
LIMIT 5;

-- Last Five Acquirer Of Biggest Acquired Tech Companies In 2020(In Billions USD)

SELECT acquirer,
       amount
FROM biggestacquisition
ORDER BY amount ASC
LIMIT 5;

-- First Five Biggest Acquired Tech Companies In 2020 And Dates

SELECT date_of_acquisition,
		amount,
	    acquiree
FROM biggestacquisition
ORDER BY amount DESC
LIMIT 5;
	
-- First Five Biggest Acquired Tech Companies In 2020 And Dates
      
SELECT date_of_acquisition,
		amount,
	    acquiree
FROM biggestacquisition
ORDER BY amount ASC
LIMIT 5;