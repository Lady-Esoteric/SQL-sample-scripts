Benet Morando, week 3 SQL HW, BIS 235 NT4


#############################
#1Create the My_BIS235 Database
#############################
input:

CREATE DATABASE My_BIS235;

######################
#2Create employees table
######################
input:

CREATE TABLE employees
(
First_name	char(50)	NOT NULL,
Last_name	char(75)	NOT NULL,
Middle_initial	char(2)		NULL,
Home_phone	varchar(13)	NULL,
SSN 		varchar(11)	NOT NULL, 
Home_address 	varchar(100)	NOT NULL,
Home_state	varchar(2)	NOT NULL,
Home_city	char(30)	NOT NULL,
Salary		int		NOT NULL,
Email		varchar(100)	NOT NULL,
PRIMARY KEY (SSN))

output:
Empty set (0.00 sec)

#####################
#3Create projects table
#####################
input:

CREATE TABLE projects
(
Project_ID	int		NOT NULL AUTO_INCREMENT,
Project_Name	varchar(250)	NOT NULL,
PRIMARY KEY (Project_ID)
);

output:
Empty set (0.00 sec)

##################
#4Populate projects
##################

INSERT INTO projects(Project_Name)
VALUES('Alpha');
INSERT INTO projects(Project_Name)
VALUES('Beta');

SELECT * FROM projects;

Output:

+------------+--------------+
| Project_ID | Project_Name |
+------------+--------------+
|          1 | Beta         |
|          2 | Alpha        |
+------------+--------------+
2 rows in set (0.00 sec)

##################
#5Populate employee
##################
Input:

INSERT INTO employees(First_name, Last_name, Middle_initial, Home_phone, SSN, Home_address, Home_state, Home_city, Salary, Email)
VALUES('Brian', 'Finnegan', 'Q', '215.670.9308', '123-45-6789', '1420 Pine St', 'PA', 'Philadelphia', '$17,500', 'oeyjoejojojr shabadoo@hotmail.com');


Output:

 SELECT * FROM employees;
+------------+-----------+----------------+--------------+-------------+--------------+------------+--------------+--------+-----------------------------------+
| First_name | Last_name | Middle_initial | Home_phone   | SSN         | Home_address | Home_state | Home_city    | Salary | Email                             |
+------------+-----------+----------------+--------------+-------------+--------------+------------+--------------+--------+-----------------------------------+
| Brian      | Finnegan  | Q              | 215.670.9308 | 123-45-6789 | 1420 Pine St | PA         | Philadelphia |      0 | oeyjoejojojr shabadoo@hotmail.com |
+------------+-----------+----------------+--------------+-------------+--------------+------------+--------------+--------+-----------------------------------+
1 row in set (0.00 sec)

####################
#6Populate employee
####################
Input:

INSERT INTO employee(First_name, Last_name, Middle_initial, Home_phone, SSN, Home_address, Home_state, Home_city, Salary, Email)
VALUES('Jovohnna', 'Jueves', 'Y', '267.336.2475', '258-14-7963', '1258 McSmutch Rd', 'PA', 'Philadelphia', '25,000', 'Candicaker@yahoo.com');

 SELECT * FROM employees;

Output:

+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+
| First_name | Last_name | Middle_initial | Home_phone   | SSN         | Home_address     | Home_state | Home_city    | Salary | Email                             |
+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+
| Brian      | Finnegan  | Q              | 215.670.9308 | 123-45-6789 | 1420 Pine St     | PA         | Philadelphia |      0 | oeyjoejojojr shabadoo@hotmail.com |
| Jovohnna   | Jueves    | Y              | 267.336.2475 | 258-14-7963 | 1258 McSmutch Rd | PA         | Philadelphia |     25 | Candicaker@yahoo.com              |
+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+
2 rows in set (0.00 sec)


####################
#7#Incldue zip code
####################
Input:

ALTER TABLE empolyee ADD Zip_code INT(5);
SELECT * FROM employee;

Output:
+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
| First_name | Last_name | Middle_initial | Home_phone   | SSN         | Home_address     | Home_state | Home_city    | Salary | Email                             | Zip_Code |
+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
| Brian      | Finnegan  | Q              | 215.670.9308 | 123-45-6789 | 1420 Pine St     | PA         | Philadelphia |      0 | oeyjoejojojr shabadoo@hotmail.com |     NULL |
| Jovohnna   | Jueves    | Y              | 267.336.2475 | 258-14-7963 | 1258 McSmutch Rd | PA         | Philadelphia |     25 | Candicaker@yahoo.com              |     NULL |
+------------+-----------+----------------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
2 rows in set (0.00 sec)

####################################
#8#Removing the middle initial field
####################################
Input:

ALTER TABLE employee DROP Middle_initial;
SELECT * FROM employee;

Output:
+------------+-----------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
| First_name | Last_name | Home_phone   | SSN         | Home_address     | Home_state | Home_city    | Salary | Email                             | Zip_Code |
+------------+-----------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
| Brian      | Finnegan  | 215.670.9308 | 123-45-6789 | 1420 Pine St     | PA         | Philadelphia |      0 | oeyjoejojojr shabadoo@hotmail.com |     NULL |
| Jovohnna   | Jueves    | 267.336.2475 | 258-14-7963 | 1258 McSmutch Rd | PA         | Philadelphia |     25 | Candicaker@yahoo.com              |     NULL |
+------------+-----------+--------------+-------------+------------------+------------+--------------+--------+-----------------------------------+----------+
2 rows in set (0.00 sec)

################################
#9#Change name of projects table
################################

RENAME TABLE projects TO Secret_Projects;
SELECT * FROM Secret_Projects;

Output:
Query OK, 0 rows affected (0.00 sec)
#####################
#10#Change the salary
#####################

UPDATE employee SET Salary=


###########################
#11#Give a raise to Jovanna
###########################

SELECT 'First_name', (Salary*.50) WHERE 'First_name'=Jovohnna;

##################################
#13#Drop the secret projects table
##################################
Input:
DROP TABLE Secret_Projects;

Output:
Query OK, 0 rows affected (0.00 sec)

############################
#14#Delete 100,000+ employee
############################
















#########################
#15Change the primary key
#########################








