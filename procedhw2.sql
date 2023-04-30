CREATE PROCEDURE SevenDayslateFee(
	return_arg INTEGER,
	late_fee_amount DECIMAL(5,2)
	
)
LANGUAGE plpgsql
AS $$
BEGIN

		UPDATE payment
		SET amount = amount +late_fee_amount
		WHERE customer_id = cust_id AND payment_id = pay_id;
		
		COMMIT;
			
END;
$$


ALTER TABLE customer
ADD COLUMN platinum_members boolean;

CREATE PROCEDURE update_customers(
	
	
)
LANGUAGE plpgsql
AS $$
BEGIN

		UPDATE customer
		SET amount = 200 
		WHERE customer_id = cust_id AND payment_id = pay_id;
		
		COMMIT;
			
END;
$$






		