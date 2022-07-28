-- Exercício 1
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- Exercício 2
SELECT "userId" as id, COUNT("endDate") AS educations FROM educations GROUP BY "userId";

-- Exercício 3
SELECT users.name AS writer, COUNT("writerId") AS "testimonialCount" FROM testimonials
JOIN users ON users.id = testimonials."writerId" WHERE testimonials."writerId" = 435
GROUP BY users.name;

-- Exercício 4
SELECT MAX(salary) AS "maximumSalary", roles.name AS role FROM jobs JOIN roles ON jobs."roleId" = roles.id
GROUP BY roles.name ORDER BY "maximumSalary" ASC;