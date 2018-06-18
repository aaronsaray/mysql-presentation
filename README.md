# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Explain Yo'self!

"That index helped."  "It's faster now."  "It's a better query."

Why?

Prove your point with `explain`

It "explain"s your MySQL Query Optimizer and plan for all queries (as of 5.6)

Let's start simple:

- `describe customers`
- `select * from customers`
- `explain select * from customers`
- `explain format=json select * from customers`

Let's work with some junky tables and see

- `explain select c.*, p.*, d.* from purchase_details d
   inner join purchase p on p.id=d.purchase_id
   inner join customers c on c.id=p.customer_id
   where p.id=3`

  - 5x4x11  = 220 rows with no keys
  
- add some sane keys which are primary keys
  - `explain select c.*, p.*, d.* from purchase_details2 d
     inner join purchase2 p on p.id=d.purchase_id
     inner join customers2 c on c.id=p.customer_id
     where p.id=3`
     - 1x1x11 = 11 rows (getting better)
  - add index (or fk)
    - `explain select c.*, p.*, d.* from purchase_details3 d
       inner join purchase2 p on p.id=d.purchase_id
       inner join customers2 c on c.id=p.customer_id
       where p.id=3`
     - 1x1x1 = 1 row scan - all indexes - yay!
     
Let's get more tough now:

- I want to send an email using the user's name and email address to users who have shown an affinity (4/5+) via ratings
  of movies that are either Action or Adventure. I want to include the names of the movies I know they've liked to customize the message
  
  - `select u.name, u.email, group_concat(m.name) as movie from users u
     inner join users_movies_ratings r on u.id=r.user_id
     inner join movies m on r.movie_id=m.id
     inner join movies_categories mc on r.movie_id=mc.movie_id
     inner join categories c on mc.category_id=c.id
     where r.rating >= 4 and c.name in ('Action', 'Adventure')
     group by (u.email);`
     
  - I'm guessing with the lazy creation of tables, I could probably make this better, (I wonder if all the indexes are there...)
    but instead of jumping to conclusions I'm going to use explain.

  - `explain select u.name, u.email, group_concat(m.name) as movie from users u
     inner join users_movies_ratings r on u.id=r.user_id
     inner join movies m on r.movie_id=m.id
     inner join movies_categories mc on r.movie_id=mc.movie_id
     inner join categories c on mc.category_id=c.id
     where r.rating >= 4 and c.name in ('Action', 'Adventure')
     group by (u.email);`

  - Ok put a unique name
    - `ALTER TABLE categories ADD UNIQUE INDEX name_is_uq (name)`
    - Verify `show indexes from categories`, now **do explain again** and verify it makes the difference
  - Some foreign keys are missing - drat
    - `ALTER TABLE users_movies_ratings ADD INDEX user_fk_idx (user_id), ADD INDEX movie_fk_idx (movie_id);`
    - `ALTER TABLE users_movies_ratings ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users (id), ADD CONSTRAINT movie_fk FOREIGN KEY (movie_id) REFERENCES movies (id);`
    - Didn't really seem to solve the problem
    
- Leave this one as it is - you have the toolset, this is not an index and query org talk ;)

And to insane mode:

- We want to use profiling of queries.
  - `set SESSION profiling = 1;`
  - `select c.*, p.*, d.* from purchase_details d
    inner join purchase p on p.id=d.purchase_id
    inner join customers c on c.id=p.customer_id
    where p.id=3;`
  - `show profiles;`
  - `select * from information_schema.profiling where query_id=2` where query_id is our profile query