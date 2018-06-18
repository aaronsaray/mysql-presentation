# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### MySQL Views

Benefits:
- complex queries over to simple statements
- security - give access to only certain users
- calculated columns 
- backwards compatible - change underlying tables

Concerns:
- ORM
- merge and temptable
- indexes only on the underlying tables (can use temp table, filesort a lot)

What to review:
- `students` and `grades` tables
- simple `select * from GradeA`; (merge)
- `select s.name, v.grade from GradeA v inner join students s on s.id=v.student_id` can join on view

- more complex `select * from StudentGrades`

- Get average, `select avg(grade) from grades`
- `SELECT s.name, g.grade, g.added FROM grades g inner join students s on s.id=g.student_id WHERE g.grade > (SELECT AVG(grade) FROM grades);`
- `select * from AboveAverage;`
- How many times above average? `select count(*), name from AboveAverage group by name;`

- update using a view
    - no aggregates, simple, no joins
    - `SELECT table_name, is_updatable FROM information_schema.views;`
    - `delete from GradeA where id=1;`
    - `select * from grades`    

- ORM php code in `test.php` - run with `php test.php`

Other topics to look into:
- with check option: to make sure you don't update things outside of the view's purview
- security apparatus: sql security definer vs invoker
