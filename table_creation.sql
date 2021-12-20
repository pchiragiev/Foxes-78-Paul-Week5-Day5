CREATE TABLE customer(
	customer_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE mechanics(
	mechanics_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE parts(
	parts_id SERIAL PRIMARY KEY,
	mechanics_id INTEGER,
	FOREIGN KEY(mechanics_id) REFERENCES mechanics(mechanics_id)
);

CREATE TABLE service(
	service_ticket SERIAL PRIMARY KEY,
	mechanics_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY(mechanics_id) REFERENCES mechanics(mechanics_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	amount NUMERIC(10,2)
);

CREATE TABLE vehicle(
	vin SERIAL PRIMARY KEY,
	model VARCHAR(100),
	make VARCHAR(100),
	year_ INTEGER NOT NULL,
	service_ticket INTEGER,
	customer_id INTEGER,
	salesperson_id INTEGER,
	FOREIGN KEY(service_ticket) REFERENCES service(service_ticket),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE service_history(
	serviceh_id SERIAL PRIMARY KEY,
	vin INTEGER,
	FOREIGN KEY(vin) REFERENCES vehicle(vin)
);

CREATE TABLE sales_transaction(
	sales_id SERIAL PRIMARY KEY,
	vin INTEGER,
	salesperson_id INTEGER,
	FOREIGN KEY(vin) REFERENCES vehicle(vin),
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	amount NUMERIC(10,2)
);