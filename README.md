# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Self Joins

You know left, right, inner, outer joins - but usually against other relational items.  What about self-joins?

Let's talk hierarchy data.

- Adjacency List Model

- Families (simple depth)
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
    
- Accounts (many deep)
  - `select * from accounts`
  - Ok - so if we know the hierarchy and its always/only simple and can have nulls
    - `SELECT t1.name AS 'Main', t2.name as 'Empire Account', t3.name as 'State Supplicant', t4.name as 'Regional Lackey', t5.name as 'Loyal Subject Level'
       FROM accounts AS t1
       LEFT JOIN accounts AS t2 ON t2.parent_id = t1.id
       LEFT JOIN accounts AS t3 ON t3.parent_id = t2.id
       LEFT JOIN accounts AS t4 ON t4.parent_id = t3.id
       LEFT JOIN accounts AS t5 ON t5.parent_id = t4.id
       WHERE t1.name = 'Master Account' order by t3.name`
  - I want to see a full path if I know the end one
    - `SELECT t1.name AS 'Main', t2.name as 'Empire Account', t3.name as 'State Supplicant', t4.name as 'Regional Lackey', t5.name as 'Loyal Subject Level'
       FROM accounts AS t1
       LEFT JOIN accounts AS t2 ON t2.parent_id = t1.id
       LEFT JOIN accounts AS t3 ON t3.parent_id = t2.id
       LEFT JOIN accounts AS t4 ON t4.parent_id = t3.id
       LEFT JOIN accounts AS t5 ON t5.parent_id = t4.id
       WHERE t1.name = 'Master Account' and t5.name = 'Bay View Loyal Subjects'`
    - But I might need to figure out which level is our right-most
      - `SELECT t1.name AS 'Main', t2.name as 'Empire Account', t3.name as 'State Supplicant', t4.name as 'Regional Lackey', t5.name as 'Loyal Subject Level',
           if(t1.name is null, 0, 1) +
           if(t2.name is null, 0, 1) +
           if(t3.name is null, 0, 1) +
           if(t4.name is null, 0, 1) +
           if(t5.name is null, 0, 1) as depth
         FROM accounts AS t1
         LEFT JOIN accounts AS t2 ON t2.parent_id = t1.id
         LEFT JOIN accounts AS t3 ON t3.parent_id = t2.id
         LEFT JOIN accounts AS t4 ON t4.parent_id = t3.id
         LEFT JOIN accounts AS t5 ON t5.parent_id = t4.id
         WHERE t1.name = 'Master Account'`
         - UGH!
         
 - this model sucks, so much extra work, and if you delete a branch you may lose the entire path

- Nested Set Model

- Think of this as nested containers, with left and right node values on the flattened containers

  - Let's see the values
  - `SELECT node.name FROM accounts_nested AS node, accounts_nested AS parent
     WHERE node.lft BETWEEN parent.lft AND parent.rgt AND parent.name = 'Master Account'
     ORDER BY node.lft;`
     
  - I want to see the full tree of a child
  - `SELECT parent.name FROM accounts_nested AS node, accounts_nested AS parent
     WHERE node.lft BETWEEN parent.lft AND parent.rgt AND node.name = 'Bay View Loyal Subjects'
     ORDER BY parent.lft`
     
     - Depth is much easier now
     - `SELECT node.name, (COUNT(parent.name) - 1) AS depth
        FROM accounts_nested AS node, accounts_nested AS parent
        WHERE node.lft BETWEEN parent.lft AND parent.rgt
        GROUP BY node.name, node.id ORDER BY node.lft;`
        
  - Want to see it pretty?
  `SELECT CONCAT( REPEAT('   ', COUNT(parent.name) - 1), node.name) AS name
   FROM accounts_nested AS node, accounts_nested AS parent
   WHERE node.lft BETWEEN parent.lft AND parent.rgt
   GROUP BY node.name, node.id ORDER BY node.lft;`