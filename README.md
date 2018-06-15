# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Self Joins, and Hierarchy

You know left, right, inner, outer joins - but usually against other relational items.  What about self-joins?

Let's talk hierarchy data.

- Families
  - `SELECT * FROM family`
  - `select p.name as 'Parent', f.name as 'Child' from family f inner join family p on f.parent_id=p.id order by Parent`
    - what if we just care about a nice list?
    - `select p.name as 'Parent', group_concat(f.name) as 'Children' from family f inner join family p on f.parent_id=p.id group by f.parent_id order by Parent`
  - But everyone is a child of someone, right?
    - `select p.name as 'Parent', f.name as 'Child' from family f left join family p on f.parent_id=p.id order by Parent`
    - `select ifnull(p.name, 'NO DATA') as 'Parent', f.name as 'Child' from family f left join family p on f.parent_id=p.id order by Parent`
  - I want the same age as someone, but I don't know their age
    - You might think two queries, but no
    - `select f1.name, f1.age from family f1 inner join family f2 on f1.age=f2.age where f2.name='Byrd Schitt'`
    
- Tags / Categories