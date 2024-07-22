
select * from item

---1)find the sum of the price of Tomato from itemtype.

select sum(price) from item where price = 1.99

--2)find the maximum price of the item.

select max(price) from item

--3) find the minimum quantity of the item from table item.

select min(price) from item 

--4)find the top 5 highest price of item 

select * from item order by price desc limit 3

--5)find the quantity between 100 to 200.

select * from item where quantity between 100 
	
--6)find the itemtype of id = 1,4,9.

select itemtype from item where id in(5,10,28)

--7)find the quantity of item greater than 150 and less than 200.
	
select quantity from item where quantity > 150 and quantity < 300


--8)arrange the prie of item according to the highest to lowest.

select * from item order by price desc
