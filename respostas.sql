-- Primeiro exercício.
SELECT users.id, users.name AS nome, cities.name AS cidade FROM users JOIN cities ON users."cityId" = cities.id;

-- Segundo exercício.
SELECT testimonials.id, writer.name AS writer, recipient.name AS recipient, testimonials.message FROM testimonials
JOIN users AS writer ON testimonials."writerId" = writer.id
JOIN users AS recipient ON testimonials."recipientId" = recipient.id;

-- Terceiro exercício.
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" FROM users
JOIN educations ON users.id = educations."userId" JOIN courses ON educations."courseId" = courses.id 
JOIN schools ON educations."schoolId" = schools.id WHERE users.id = 30 AND educations.status = 'finished';

-- Quarto exercício.
SELECT users.id, users.name, roles.name AS role, companies.name as company, experiences."startDate" FROM users 
JOIN experiences ON users.id = experiences."userId" JOIN roles ON experiences."roleId" = roles.id
JOIN companies ON experiences."companyId" = companies.id WHERE users.id = 50 AND experiences."endDate" IS NULL;

-- Exercício Bônus.
SELECT schools.id, schools.name AS school, courses.name AS course, companies.name AS company, roles.name AS role
FROM applicants JOIN jobs ON applicants."jobId" = jobs.id JOIN users ON applicants."userId" = users.id
JOIN companies ON jobs."companyId" = companies.id JOIN roles ON jobs."roleId" = roles.id 
JOIN educations ON users.id = educations."userId" JOIN schools ON educations."schoolId" = schools.id 
JOIN courses ON educations."courseId" = courses.id WHERE companies.id = 10 AND jobs.active = true;