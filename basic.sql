show databases;
use `awesome chocolates`;
show tables;
select * from people;

;-- selecting columns on mysql workbench

select  SPID,SaleDate,amount  from sales;

;-- ordering values
select * from sales
order by Amount;


;-- where clause
select * from sales
where Amount>3000 and saledate>'2022-01-01';


;-- calculations 
select SPID,GeoID,amount/boxes 'amount per boxes' from sales; 

;-- built in functions
select spid,geoid,year(saledate) as 'year of sale' from sales
where year(saledate)=2022 ;

;-- in instead of or
select * from  people;

select * from people 
where team='Yummies' or team='Delish';

select * from people 
where team in ('Yummies','Delish');

;-- between function
select * from sales 
where amount>0 and amount<50;

select * from sales
where amount between 0 and 50;


;-- case function

select * from sales;

select customers,boxes,
     case when amount<1000 then "under 1k"
          when amount<5000 then "under 5k"
          when amount<1000 then "under 10K"
		else
         "more than 10k"
	 end
as "number" from sales;

;-- pattern matching 

select * from people
where salesperson like 'B%';

select * from people
where salesperson like '%B%';

select * from people
where salesperson like '%B';


