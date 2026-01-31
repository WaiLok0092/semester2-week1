-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear
SELECT
  s.StudentId,
  s.FirstName,
  s.LastName,
  e.EnrolmentYear AS EnrolmentYear
FROM Student s
JOIN Enrolment e ON s.StudentId = e.StudentId
WHERE e.EnrolmentYear = 2022
ORDER BY s.StudentId;