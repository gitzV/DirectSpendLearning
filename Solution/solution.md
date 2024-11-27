Answe1>
> Retrieve the list of all unique materials from HUB_MATERIAL.
> 
Query :Select DISTINCT(MATERIAL_NK) from HUB_MATERIAL; 

> Fetch all purchase orders with their associated vendors.
Answer2>
select p.PONUMBER,
 h.VENDOR_NK
 from SAT_PO_TRAN p
 INNER JOIN
 HUB_VENDOR h ON
 p.vendor_pk=h.vendor_pk;

 > Write a query to find purchase orders where the transaction price exceeds $10,000.
Aggregation
> 
 Answer3>
 select PONUMBER,PRICE
 from SAT_PO_TRAN
 where PRICE>100000;

 > Calculate the total spend per vendor.
 Answer4>
 select v.VENDOR_NK,SUM(t.PRICE) as Total_Spend
from HUB_VENDOR v
INNER JOIN SAT_PO_TRAN t ON
v.vendor_pk=t.vendor_pk
group by v.vendor_nk
order by Total_Spend desc;

> Calculate the total spend for each month.
Answer5>
select d.MONTH,d.YEAR, SUM(t.PRICE) as Total_Spend
from DIM_DATE d INNER JOIN
SAT_PO_TRAN t on 
d.DATE_PK=t.DATE_PK
group by d.MONTH,D.YEAR
order by Total_Spend desc;

> Write a query to display the purchase order, material, and vendor for all transactions.
Answer6>
select s.DATE_PK,s.PONUMBER,s.PRICE,v.VENDOR_NK,h.MATERIAL_NK
 from SAT_PO_TRAN s INNER JOIN HUB_VENDOR v ON
 s.vendor_pk=v.vendor_pk
 INNER JOIN HUB_MATERIAL h ON
 s.material_pk=h.material_pk;

 > Identify the top 3 vendors by total spend.
 Answer7>
 select v.vendor_nk,SUM(s.PRICE) as Total_Spend
FROM SAT_PO_TRAN s INNER JOIN HUB_VENDOR v
ON s.vendor_pk=v.vendor_pk
group by v.vendor_nk
order by Total_Spend desc
limit 3;

> Which material has the highest total quantity purchased?
Answer8>
select m.MATERIAL_NK,SUM(s.LINEITEM) as Total_Quantity
from SAT_PO_TRAN s INNER JOIN HUB_MATERIAL m ON
s.material_pk=m.material_pk
group by m.material_nk
order by Total_Quantity desc
LIMIT 1;

> Find all purchase orders with missing vendor information.
Answer9>
 select d.DATE_NK,p.PONUMBER,p.PRICE,
 v.VENDOR_NK from SAT_PO_TRAN p INNER JOIN HUB_VENDOR v ON 
 p.vendor_pk=v.vendor_pk
 INNER join DIM_DATE d ON
 p.date_pk= d.date_pk
 where v.vendor_nk='Null';

> Check if any transactions in SAT_PO_TRAN have a DATE_PK not present in DIM_DATE. 
Answer10>
select p.* from SAT_PO_TRAN p
left join DIM_DATE d on 
p.date_pk=d.date_pk
where d.date_pk is NULL;
