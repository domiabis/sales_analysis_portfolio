-- Total revenue per month

select 
    format(cast([order_date] as DATE),'yyyy-MM') as month,
	SUM(CONVERT(DECIMAL, quantity) * price) as revenue
from orders
GROUP BY format(cast([order_date] as DATE),'yyyy-MM')
ORDER BY month;