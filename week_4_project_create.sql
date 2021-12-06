
--Salesperson Table Creation
CREATE TABLE Salesperson(
	sales_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);


-- Customer Table Creation
CREATE TABLE Customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

-- Invoice Table Creation
CREATE TABLE Invoice (
	po_id SERIAL PRIMARY KEY,
	price NUMERIC,
	vin_num INTEGER,
	customer_id INTEGER,
	sales_id INTEGER,
	date DATE
);
-- Car Table Creation
CREATE TABLE Orders (
	vin_num SERIAL PRIMARY KEY,
	year VARCHAR(4),
	make VARCHAR(25),
	model VARCHAR(25),
	used BOOLEAN,
	sold BOOLEAN
);

-- Service Ticket Table Creation
CREATE TABLE Service_Ticket (
	st_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	vin_num INTEGER,
	mechanic_id INTEGER,
	part_id INTEGER,
	date DATE,
	total_cost NUMERIC,
	service_type VARCHAR(30)
);

-- Mechanic Table Creation
CREATE TABLE Mechanic (
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

-- Parts Table Creation
CREATE TABLE Part (
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(25),
	price NUMERIC
);
