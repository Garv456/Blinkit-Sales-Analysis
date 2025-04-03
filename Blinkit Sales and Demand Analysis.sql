Create database Blinkit;

select Month, sum(qty_sold*mrp) as Total_Revenue
from blinkit.`blinkit data`
group by Month;

select item_name, sum(qty_sold) as Total_Quantity
from blinkit.`blinkit data`
group by item_name 
order by Total_Quantity desc limit 10;

select category , sum(qty_sold) as Total_Quantity, sum(qty_sold*mrp) as Total_Revenue
from blinkit.`blinkit data`
group by category
order by Total_Revenue desc;

