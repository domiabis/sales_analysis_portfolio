-- Revenue by category in the month with drop (e.g., 2024-03)

select
    p.category,
	sum(convert(decimal, o.quantity) * o.price ) as revenue
from orders o
join products p on o.product_id = p.product_id
where FORMAT(cast([order_date] as DATE), 'yyyy-MM') = '2024-03'
group by p.category
order by revenue desc