-- for joining tables based on spid
select s.SPID,p.Salesperson,s.SaleDate,s.Amount 
 from sales s 
 join people p on s.SPID=p.SPID;
 
 ;-- for joining more than two tables
  
select * from sales;
 select s.SPID,p.Salesperson,s.SaleDate,s.Amount,pr.product,pr.category 
 from sales s 
 join people p on s.SPID=p.SPID
 join products pr on s.PID=pr.PID;
 
 ;-- multiple conditions
 select * from sales;
 
 select * from products;
 
 
 select s.SPID,p.Salesperson,s.SaleDate,s.Amount,pr.product,pr.category 
 from sales s 
 join people p on s.SPID=p.SPID
 join products pr on s.PID=pr.PID
 where s.Boxes>400 and 
 pr.Category in ('bars','other')
 order by s.SaleDate desc;
 
 ;-- group by statement for reporting
 
 select * from sales;
 
 select spid,sum(Amount) 
 from sales
 group by SPid;
 
 select s.spid,p.team,pr.category
 from sales s
 join people p on p.spid=s.spid
 join products pr on pr.pid=s.pid
 group by s.spid,p.team,pr.category;
 
 
 select * from sales
 order by SaleDate
 limit 10 ;
 
 
 
 