delimiter $$
drop procedure IF EXISTS city_customers;
create procedure city_customers(in city varchar(30))
	begin
		select CUST_NAME from customer where WORKING_AREA = city;
	end $$
	delimiter ;
call city_customers('Bangalore');
