# MySQL Presentation

## MySQL You Should Know, But Don't

### Presentation Details

#### Prepared Statements

What?
 - optimizer runs
 - compile the query
 - run the query
 - each time
 
 vs
 - optimize
 - compile
 - store a handler
 - 1x
 - each time bind in values into binary
 
More secure, potentially faster.

How for Security:

- Let's talk security and sql injection (what most people know)
  - `select u.name, b.balance from users u inner join balances b on u.id=b.user_id where u.name='Fred'`
    - which is probably `$stmt = "select u.name, b.balance from users u inner join balances b on u.id=b.user_id where u.name='$nameVariable'";`
  - What if $nameVariable is this: `$nameVariable = "Fred' or u.id=3 order by u.id desc -- ";`
    - `select u.name, b.balance from users u inner join balances b on u.id=b.user_id where u.name='Fred' or u.id=3 order by u.id desc -- '`

- What if we did prepared statements?
  - `php injection.php`
  
How is it faster:

- we can only query cache the _same_ query
- `php speed.php`
  - seems to make a much bigger difference on inserts, inserts are faster and the ratio difference is larger

- So it _can_ be faster, but what we really get is good security without a lot of penalty

Concerns:
- Are we actually using prepared statements in tools like PDO?
  - `php emulation.php`
  
 