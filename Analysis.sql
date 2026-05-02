## Querry1

SELECT area, ROUND(AVG(delay_mins), 2) as avg_delay, COUNT(*) as total_orders
FROM blinkit_bangalore_orders 
GROUP BY area 
ORDER BY avg_delay DESC
LIMIT 10;



## Querry2
SELECT CAST(strftime('%H', order_timestamp) AS INT) as hour,
       ROUND(AVG(delay_mins), 2) as avg_delay,
       COUNT(*) as orders
FROM blinkit_bangalore_orders
GROUP BY hour ORDER BY hour;




