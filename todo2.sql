insert into todos (title, details, priority) values ('write todos', 'seriously this is boring', 2);
insert into todos (title, priority, completed_at) values('actually write meaningful todos', 10, '2018-9-20');
insert into todos (title, priority, completed_at) values('decide what new magic deck to build', 3, '2017-9-30');
insert into todos (title, completed_at) values ('start a fire', '2017-08-20');
insert into todos (title, priority, completed_at) values ('put out that fire',2, '2017-08-21' );
insert into todos (title, priority) values ('make sure the fire is actually out', 3);
insert into todos (title, details) values ('investigate that burning smell', 'that really does smell weird');
insert into todos (title, priority) values ('replace burned clothes', 2);
insert into todos (title, details) values ('seek medical attention for third degree burns', 'this is surprisingly painful');
insert into todos (title, priority) values ('claim home owners insurance for fire', 3);
insert into todos (title) values ('google insurance fraud');
insert into todos (title) values ('buy yacht and wardrobe with insurance money');
insert into todos (title, details) values ('meeting with insurance auditor', 'the lot behind the Dennys');
insert into todos (title) values ('hire goons')
insert into todos (title, priority) values ('hide insurance auditors body', 9);
insert into todos (title) values ('swear goons to secrecy');
insert into todos (title) values ('remove goons from picture');
insert into todos (title, priority) values ('go to home depot to buy replacement shovel',3);
insert into todos (title) values ('research maritime and international law');
insert into todos (title) values ('disappear somewhere off the coast of the cape of good hope');

select title from todos where completed_at is null and priority = 3;

select title,  from todos where completed_at is null order by priority;

select title from todos where extract(month from created_at) >= 8 and extract(day from created_at) <= 30 order by priority;
//subquery
select title, priority from todos where priority = (select max(priority) from todos) and completed_at is null order by created_at ASC;
//no subquery
select title, priority from todos where completed_at is null order by priority desc, created_at limit 1;
