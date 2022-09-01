delimiter $$
create procedure IF NOT EXISTS`add`(
	IN `n1` int,
	IN `n2` int,
	OUT `res` int
)
begin
	set res = num1 + num2;
end$$
delimiter ;

call addNums(5,10,@sum);
SELECT @sum;
