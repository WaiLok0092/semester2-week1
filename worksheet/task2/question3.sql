-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT
    DepartmentName,
    COUNT(Enrolment.EnrolmentId) AS TotalEnrolments
FROM 
department JOIN course ON Department.DepartmentId = Course.DepartmentId
    JOIN enrolment ON Course.CourseId = Enrolment.CourseId
GROUP BY DepartmentName;