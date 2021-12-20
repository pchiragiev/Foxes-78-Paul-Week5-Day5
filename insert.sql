INSERT INTO customer (
	customer_id,
	first_name,
	last_name
)
VALUES
    (
		1,
		'Alia',
		'Sheldon'
    ),
    (
    	2,
		'Hays',
    	'Bird'
    );
    
INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
)
VALUES
    (
		1,
		'Tanner',
		'Tyrese'	   
    ),
    (
		2,
		'Schmidt',
		'Compton'    	   
    );
    
INSERT INTO mechanics (
	mechanics_id,
	first_name,
	last_name
)
VALUES
    (
		1,
		'Ramiro',
		'Trevin'	   
    ),
    (
		2,
		'Clements',
		'Clayton'    	   
    );
INSERT INTO parts (
	parts_id,
	mechanics_id
)
VALUES
    (
		1,
		1	   
    ),
    (
		2,
		2    	   
    );
    
INSERT INTO service (
	service_ticket,
	mechanics_id,
	customer_id,
	amount
)
VALUES
    (
		1,
    	1,
		2,
		100.50
    ),
    (
		2,
    	2,
		2,
		200.50
    );
    
INSERT INTO vehicle (
	vin,
	model,
	make,
	year_,
	service_ticket,
	customer_id,
	salesperson_id
)
VALUES
    (
    	1,
		'2',
		'3',
		1999,
		1,
		2,
		1   
    ),
    (
		2,
		'2',
		'3',
		1999,
		1,
		2,
		2    	   
    );
    
INSERT INTO service_history (
	serviceh_id,
	vin
)
VALUES
    (
		1,
		2
    ),
    (
		2,
		1
    );
    
INSERT INTO sales_transaction (
	sales_id,
	vin,
	salesperson_id,
	amount
)
VALUES
    (
		1,
		2,
		1,
		100.50
    ),
    (
    	2,
		1,
		2,
		200.50   
    );