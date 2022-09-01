delimiter $$
drop procedure IF EXISTS details;
create procedure details()
begin
	declare name varchar(50);
	declare city varchar(50);
	declare country varchar(50);
	declare grade int;
	declare temp int default 0;
	declare tera_suroor cursor for select CUST_NAME, CUST_CITY, CUST_COUNTRY, GRADE from customer where AGENT_CODE like 'A00%';
	declare continue handler for not found set temp=1;
	open tera_suroor;
	chal_na:loop
		fetch tera_suroor into name, city, country, grade;
		select name, city, country, grade;
		if temp=1 then
		leave chal_na;
		end if;
	end loop chal_na;
end $$

delimiter ;


call details();
