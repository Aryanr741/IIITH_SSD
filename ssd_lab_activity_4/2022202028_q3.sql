delimiter $$
-- drop procedure IF EXISTS names;
create procedure names2()
	begin
		select CUST_NAME, GRADE from customer where (OPENING_AMT+RECEIVE_AMT)>10000;
	end $$
	delimiter ;
call names2();