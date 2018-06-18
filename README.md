# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Order by Rand()

This is slow.

- Get all chickens from first farm `select count(*) from chickens_farm1`
- Now I want a random one: `select id, breed_id, weight from chickens_farm1 order by rand() limit 1` seems fast

- Get all chickens from second farm `select count(*) from chickens_farm2`
- Now I want a random one `select id, breed_id, weight from chickens_farm2 order by rand() limit 1` obviously seeming slow
- It has to scan 3000000 rows and then sort (this only gets harder if it has qualifiers)

Solutions:

- Move it to the application:
  - `select max(id) from chickens_farm2`
  - `php -r "echo rand(1, 500000);"`
  - `select id, breed_id, weight from chickens_farm2 where id=223582`
  
- How about SQL?
  - `SELECT CEIL(RAND() * (SELECT MAX(id) FROM chickens_farm2))` gets us the random ID... so...
  - `select id, breed_id, weight from chickens_farm2 where id = (SELECT CEIL(RAND() * (SELECT MAX(id) FROM chickens_farm2)))`
    - except this is bad because select gets executed up until the high limit / result returned (so up to 500k times)
  - `SELECT id, breed_id, weight from chickens_farm2 JOIN (SELECT CEIL(RAND() * (SELECT MAX(id) FROM chickens_farm2)) AS id) AS f2 USING (id)`
    - inner join makes temp table, and the inner join only has one item then to join against
    
- What about if there are holes in your data? (Chicken Farm 3 got all deletey and junk)
  - `SELECT f1.id, f1.breed_id, f1.weight FROM chickens_farm3 AS f1 JOIN
     (SELECT (RAND() * (SELECT MAX(id) FROM chickens_farm3)) AS id) AS f2
     WHERE f1.id >= f2.id ORDER BY f1.id ASC LIMIT 1`
     - can get rid of ceil, cuz using >= 
     - basically gets next nearest neighbor, then stops with limit 1
 - concern: unequal distribution requires a new index
 
- I see you got a join table, and maybe you want only certain things...
  - Yeah it works...
  `SELECT f1.id, b.name, f1.weight FROM chickens_farm3 AS f1 JOIN
   (SELECT (RAND() * (SELECT MAX(id) FROM chickens_farm3)) AS id) AS f2
   inner join breeds b on b.id=f1.breed_id
   WHERE f1.id >= f2.id 
   and f1.breed_id in (2,4)
   ORDER BY f1.id ASC LIMIT 1`
   
