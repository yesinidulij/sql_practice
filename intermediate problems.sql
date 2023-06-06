use `awesome chocolates`;
;-- intermediate problem
;--  Print details of shipments (sales) where amounts are > 2,000 and boxes are <100?
select * from sales
where amount>2000 and boxes<100;

;-- How many shipments (sales) each of the sales persons had in the month of January 2022?
select p.salesperson,count(*) count
from sales s 
join people p on p.spid=s.spid
where monthname(s.saledate)='January' and year(s.saledate)=2022
group by p.salesperson;

select p.Salesperson, count(*) as ‘Shipment_Count’
from sales s
join people p on s.spid = p.spid
where SaleDate between '2022-1-1' and '2022-1-31'
group by p.Salesperson;


select * from sales;
select * from products;
;-- 3. Which product sells more boxes? Milk Bars or Eclairs?

select pr.product,sum(s.boxes)
from sales s
join products pr on pr.PID=s.PID
where pr.product in ('Milk Bars','Eclairs')
group by pr.product;

;-- Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
select pr.product,sum(s.boxes) sum
from sales s
join products pr on pr.PID=s.PID
WHERE pr.product in ('Milk Bars','Eclairs') and
s.saledate between '2022-02-01' and '2022-02-07'
group by pr.product;

;-- Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?
select pr.product,s.customers,s.boxes,weekday(s.saledate) day
from sales s
join products pr on pr.pid=s.pid
where s.customers<100 and s.boxes<100 and
weekday(s.saledate)=4;



