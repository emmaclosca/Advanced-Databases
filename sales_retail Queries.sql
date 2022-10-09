use sales_retail;

select *  from sales where sale_total<60;

select * from items where item_category='Xbox One Game';

select * from dates where month<=6;

select * from sales where storeID=1 AND quantity=1;

select saleID,sale_total,employeeID from sales ;

