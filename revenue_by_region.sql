-- Revenue by region

select
    c.region,
	sum(convert(decimal, o.quantity) * o.price ) as revenue
from orders o
join customers c on o.customer_id = c.customer_id
where FORMAT(cast([order_date] as DATE), 'yyyy-MM') = '2024-03'
group by c.region
order by revenue desc;