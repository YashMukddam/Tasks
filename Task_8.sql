select * from sales


-- get 10 unknown question of regx and solve

1) find age from customer first only 2-4 and then last digit 0
	
select age:: varchar from customer where age:: varchar ~*'[2-4]0$'


2) find profit from sales last 2 char 5|9

select profit:: varchar from sales where profit:: varchar ~*'^[0-9]{3}.[0-7](5|9)$'

3) order_id 1st char is 'C' year is 2016 and 2017 second last digit between 2-6
 and last digit 4 or 8

select customer_id,order_id from sales where order_id::varchar ~* '^[C][a-z]-[0-2]{3}(6|7)-[0-9]{4}[2-6](2|8)'

4) All the customer age is between 30 to 40 by using ($)

select * from customer where cast(age as varchar) ~ '[3][0-9]$'

5) All the customer name start with latter 'E' and last latter is 'N'

select customer_name,first_name from customer where first_name ~* '^[e][a-z][a-z][n]$'

6) Order_id,ship_mode,quantity,sales and show quntity 2|3|4

select order_id, ship_mode, quantity,sales from sales where quantity::varchar ~* '^(2|3|4)$'


7) customer_id ,age and show age 1-2,5|6|7|8

select customer_id,age from customer where age::varchar~*'^[1-2](5|6|7|8)$'


8) TO DISPLAY THE segment HAVING END LETTER IS E.

select segment from customer where segment ~* 'e$';


9) DISPLAY AGE OF ROWS WHERE AS FIRST CHARACTER IS BETWEEN 2 AND 5 AND SECOND CHARACTER IS 0 OR 2 OR 3.

select customer_id, segment, age from customer where age::varchar ~* '^[2-5](0|2|3)$'


10) year have 2015 and 2017, month is 0-9, day 0-5

select * from sales where  order_date::varchar ~* '^201[5/7]-[0-9]{2}-[0-5]{2}$'

