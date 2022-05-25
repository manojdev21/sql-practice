/*
Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.
*/

SELECT Students.name
  FROM Students
  JOIN Friends ON Students.ID = Friends.ID
  JOIN Packages ON Students.ID = Packages.ID
  JOIN Packages Friend_package ON Friends.friend_ID = Friend_package.ID
 WHERE Friend_package.salary > Packages.salary
 ORDER BY Friend_package.salary;