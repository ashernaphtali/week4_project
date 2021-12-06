-- CREATE FUNCTION TO ADD SALESPERSON

create function add_salesperson_asher(
	salesperson INTEGER,
	f_name VARCHAR(25),
	l_name VARCHAR(25)
)
returns void
language plpgsql
as
$MAIN$
begin

	insert into salesperson(sales_id, first_name, last_name)
	values (salesperson, f_name, l_name );	
end;
$MAIN$

-- CALL FUNCTION(SALESPERSON INSERT)
select add_salesperson_asher(89, 'Bill', 'Johnson');



-- CREATE FUNCTION TO ADD CUSTOMER

create function add_customer_asher(
	c_id INTEGER,
	f_name VARCHAR(25),
	l_name VARCHAR(25)
)
returns void
language plpgsql
as
$MAIN$
begin

	insert into Customer(customer_id, first_name, last_name)
	values (c_id, f_name, l_name );	
end;
$MAIN$

-- CALL FUNCTION(CUSTOMER INSERT)
select add_customer_asher(72, 'Birdie', 'Husky');


