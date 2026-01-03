  -- Task1

-- CREATE TABLE employee_details (
--     employeeid SERIAL PRIMARY KEY,                      

--     firstname VARCHAR(50) NOT NULL ,

--     lastname VARCHAR(50) NOT NULL,                      

--     email VARCHAR(100) UNIQUE NOT NULL,                

--     phonenumber VARCHAR(15) not null ,                    

--     hiredate DATE NOT NULL , 
                                                         
--     salary DECIMAL(10,2) NOT NULL,   

--     departmentid INTEGER NOT NULL ,                      

--     isactive BOOLEAN NOT NULL DEFAULT TRUE,             

--     jobtitle VARCHAR(100) NOT NULL                     
-- );



                         -- Task-2

-- INSERT INTO employee_details
-- (firstname, lastname, email, phonenumber, hiredate, salary, departmentid, isactive, jobtitle)
-- VALUES
-- ('Sadhna', 'Mutkure', 'sadhna.mutkure@gmail.com', '9876543210', '2022-06-15', 45000.00, 101, TRUE, 'Junior Developer'),

-- ('Rahul', 'Sharma', 'rahul.sharma@gmail.com', '9123456789', '2021-03-10', 65000.00, 102, TRUE, 'Software Engineer'),

-- ('Priya', 'Patil', 'priya.patil@gmail.com', '9988776655', '2020-11-25', 72000.00, 103, TRUE, 'Senior Developer'),

-- ('Amit', 'Verma', 'amit.verma@gmail.com', '9012345678', '2019-01-05', 85000.00, 104, TRUE, 'Team Lead'),

-- ('Neha', 'Kulkarni', 'neha.kulkarni@gmail.com', '9090909090', '2023-08-01', 40000.00, 101, TRUE, 'HR Executive');


                    -- task-3

-- copy employee_details from 'D:\DATA ANALYTICS\EXCEL FILE\Employee_Details.csv' DELIMITER ','
-- CSV header;

                 -- task-4

-- update employee_details set departmentid = 0 where isactive = 'false' returning *

                    
					-- task-5

-- update employee_details set salary = salary +(salary * 0.08) 
-- where isactive = false and departmentid = 0 and jobtitle in('HR Manager',
--       'Financial Analyst',
--       'Business Analyst',
--       'Data Analyst') returning *


 -- OR QUERY USING WHEN CASE (2 TARIKA)
  
--   UPDATE employee_details
-- SET salary =
--     CASE
--         WHEN isactive = FALSE
--          AND departmentid = 0
--          AND jobtitle IN (
--              'HR Manager',
--              'Financial Analyst',
--              'Business Analyst',
--              'Data Analyst'
--          )
--         THEN salary + (salary * 0.08)
--         ELSE salary
--     END;


                    -- task_6

-- select firstname as Name , lastname as Surname, from employee_details where salary between 30000 and 50000 				

                   -- task_7

-- select * from employee_details where firstname like 'A%'; //match the patten


                     -- task_8

					 -- DELETE FROM employee_details
      --             WHERE employeeid BETWEEN 1 AND 5;

				
				        -- task_9
    
	-- alter table employee_details rename to employee_detabase
    --  alter table employee_database rename column firstname to Name
    -- alter table employee_database rename column lastname to Surname


	                   -- task_10
-- alter table employee_database add column state varchar not null default 'unknown'

-- update employee_database set state = case
-- when isactive = TRUE then 'India'
-- when isactive = FALSE then 'USA'
-- end returning *


       -- OR USING WHERE CONDITION
-- UPDATE employee_database
-- SET state = 'India'
-- WHERE isactive = TRUE;

-- UPDATE employee_database
-- SET state = 'USA'
-- WHERE isactive = FALSE;

					   
