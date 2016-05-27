****************************************************************************************************************************
--TO CREATE THE TABLE
****************************************************************************************************************************

CREATE TABLE naresh_family
	(
		S_NO		varchar(10),
		Name 		varchar(20),
		AGE			integer,
		OCCUPATION 	varchar(50),
		DESIGNATION varchar(30)
	)

****************************************************************************************************************************
--TO INSERT A ROW IN TABLE
****************************************************************************************************************************

INSERT INTO naresh_family
	(
		S_NO,	
		Name,		
		AGE,		
		OCCUPATION,
		DESIGNATION 
	)
VALUES 
	(
		'2',
		'NARESH',
		'25',
		'DBS BANK',
		'Business Analyst'
	)

****************************************************************************************************************************
--TO DELETE A ROW IN TABLE
****************************************************************************************************************************

DELETE FROM 	naresh_family
WHERE 			Name = 'Priya'

****************************************************************************************************************************
--TO UPDATE A ROW IN TABLE
****************************************************************************************************************************

UPDATE		naresh_family
SET
	Name		=	'Priya',
	Age			=	'23',
	Occupation	=	'RC Build Fly',
	Designation	=	'Finance Manager'
WHERE
S_No			=	'2';

****************************************************************************************************************************
--SQL SELECT DISTINCT Syntax
****************************************************************************************************************************

--In a table, a column may contain many duplicate values; and sometimes you only want to list the different (distinct) values.
--The DISTINCT keyword can be used to return only distinct (different) values.

--SELECT DISTINCT Syntax

SELECT DISTINCT 	column_name,column_name
FROM 				table_name;

--SELECT DISTINCT Example

SELECT DISTINCT 	Name,OCCUPATION 
FROM 				naresh_family;

****************************************************************************************************************************
--SQL WHERE Clause
****************************************************************************************************************************

--The WHERE clause is used to extract only those records that fulfill a specified criterion.

--SQL WHERE Syntax

SELECT 		column_name,column_name
FROM 		table_name
WHERE 		column_name operator value;

--WHERE Clause Example

SELECT 		Name,Designation
FROM 		naresh_family
WHERE 		S_NO = '1';

****************************************************************************************************************************
--SQL AND Operators
****************************************************************************************************************************

--The AND operator displays a record if both the first condition AND the second condition are true.

--SQL AND Syntax

SELECT * FROM 	naresh_family
WHERE 			DESIGNATION	=	'Business Analyst'
AND 			OCCUPATION	=	'DBS Bank';

****************************************************************************************************************************
--SQL OR Operators
****************************************************************************************************************************

--The OR operator displays a record if either the first condition OR the second condition is true.

--SQL OR Syntax

SELECT * FROM 	naresh_family
WHERE 			DESIGNATION	=	'Business Analyst'
OR	 			OCCUPATION	=	'HOSPITAL';

****************************************************************************************************************************
--Combining AND & OR
****************************************************************************************************************************

--You can also combine AND and OR (use parenthesis to form complex expressions).

SELECT * FROM 		naresh_family
WHERE 				DESIGNATION	=	'Business Analyst'
AND	 			
	(
		OCCUPATION	=	'HOSPITAL'
	OR 
		OCCUPATION	=	'DBS Bank'
	);

****************************************************************************************************************************
--SQL ORDER BY Keyword
****************************************************************************************************************************

--The ORDER BY keyword is used to sort the result-set by one or more columns.

--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in a descending order, you can use the DESC keyword.

--SQL ORDER BY Syntax

SELECT 		column_name, column_name
FROM 		table_name
ORDER BY 	column_name ASC|DESC, column_name ASC|DESC;

--SQL WHERE Clause Example

SELECT		Name, OCCUPATION
FROM		naresh_family
ORDER BY	S_NO desc

****************************************************************************************************************************
--SQL ROWNUM BY Keyword
****************************************************************************************************************************

SELECT * FROM naresh_family
WHERE ROWNUM<=3;