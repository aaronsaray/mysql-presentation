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

