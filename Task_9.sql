select * from sales

select * from sales

create or replace function profit_percent(profit_p varchar)
returns double precision as $$
	declare 
	percentage double precision;
	sum_of_sales double precision;
	sum_of_profit double precision;
begin
	select sum(sales) as sum_of_sales, sum(profit) as sum_of_profit into sum_of_sales,sum_of_profit from sales 
	where product_id = profit_p;	
	percentage:=(sum_of_sales/sum_of_profit) *100;
	return percentage;
end
$$ language plpgsql;


select product_id,sum(sales) as sales,sum(profit) as profit from sales where product_id = 'FUR-BO-10001798' group by product_id
	
select profit_percent('FUR-BO-10001798')