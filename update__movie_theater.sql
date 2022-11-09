UPDATE customers
SET	street_address1 = '123 venice ave',
	city = 'venice',
	state_ = 'fl',
	zip_code = '34292',
 	telephone = '941-555-1212',
 	email = 'steve@example.com',
 	separate_billing_address = 'false',
 	billing_info = '1234 5678 9101 1121 123 01/23',
 	rewards_member = 'true',
	most_recent_transaction_date = '2022-07-05',
 	reward_points = 25
WHERE customer_id = 2;



