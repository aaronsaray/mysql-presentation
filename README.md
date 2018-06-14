# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Pagination and Order By Performance

Problems:

- Two Queries for pagination. 1 for count, 1 to get data
  - `select count(*) from user_actions where action='created'`
  - `select id, user_id, action_at from user_actions where action='created' limit 30, 10`
  - this can be slow if the query is very complicated
    - what if the two queries were faster?
    - `select SQL_CALC_FOUND_ROWS id, user_id, action_at from user_actions where action='created' limit 30, 10`
    - `select found_rows()`
      - this is only faster when you're using non-indexed rows, otherwise `count(*)` is still faster

- Pagination is slow?  Well, offset and limit can be slow with large amounts of data
  - `select count(*) from user_actions`
  - `select id, action, action_at from user_actions where action_at > '2018-05-05' and action='created' order by action_at limit 10 offset 45000`
    - goes through and has to discard 45000 rows
  - You can either keep track of the action_at value as you go through... otherwise you can do a query before it, if they're not paging
    - `select id, action, action_at from user_actions where action_at > '2018-05-05' and action='created' order by action_at desc limit 10 offset 45000`
    - `select id, action, action_at from user_actions where id < 110026 and action_at > '2018-05-05' and action='created' order by action_at desc limit 10 offset 10`
    - Another way to handle this - increase your limit by one item `limit 11` - so you can get the next ID/identifier
  - This is called the Seek Method
  
Concerns:
- pagination is tricky
- do you really need to provide 50+ pages? (search results vs index)