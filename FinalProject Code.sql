--CREATE DATABASE Final_Project
--GO
--USE Final_Project
--GO
--CREATE PROCEDURE Salary_Table
--AS
--BEGIN
--SELECT ED.id, ED.first_name, ED.last_name, JT.job_title, Sal.Salary From Employee_Data AS ED
--JOIN Job_Table AS JT on ED.id = JT.id
--JOIN Dept_Title_Salary AS Sal ON Sal.job_title = JT.job_title
--ORDER BY id
--END
--GO

--EXEC Salary_Table

--END

--CREATE FUNCTION Analyst_Role (@job_title varchar(50))
--RETURNS TABLE
--AS
--RETURN
--(SELECT * FROM Dept_Title_Salary WHERE job_title = @job_title
--)
--GO

--SELECT * FROM Analyst_Role ('Senior Financial Analyst')
--GO

--CREATE VIEW Top_Salaries
--AS
--SELECT TOP 10 ED.id, ED.first_name, ED.last_name, JT.job_title, SAL.Salary From Employee_Data AS ED
--JOIN Job_Table AS JT on ED.id = JT.id
--JOIN Dept_Title_Salary AS SAL ON SAL.job_title = JT.job_title
--ORDER BY Salary DESC
--GO

--SELECT * FROM Top_Salaries

--SELECT ED.id, ED.first_name, ED.last_name, JT.job_title,  SAL.Salary
--INTO Quality_Engineers
--From Employee_Data AS ED
--JOIN Job_Table AS JT on ED.id = JT.id
--JOIN Dept_Title_Salary AS SAL ON SAL.job_title = JT.job_title
--WHERE JT.job_title = 'Quality Engineer'
--ORDER BY Salary
--GO
--SELECT * FROM Quality_Engineers
