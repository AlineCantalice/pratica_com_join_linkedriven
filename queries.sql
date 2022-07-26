-- Exercicio 1

select users.id, users.name, cities.name as city from users join cities on cities.name='Rio de Janeiro';


-- Exercicio 2

select te.id, t1.name as writer, t2.name as recipient, te.message from testimonials te join users t1 on te."writerId"=t1.id join users t2 on te."recipientId"=t2.id order by te.id;


-- Exercicio 3

select u.id, u.name, c.name as course, s.name as school, ed."endDate" from users u join educations ed on u.id=ed."userId" join schools s on ed."schoolId"=s.id join courses c on ed."courseId"=c.id where u.id=30 and ed.status='finished';


-- Exercicio 4

select u.id, u.name, r.name as role, c.name as company, e."startDate" from users u join experiences e on e."userId"=u.id join roles r on e."roleId"=r.id join companies c on e."companyId"=c.id where u.id=50 and e."endDate" is null;
