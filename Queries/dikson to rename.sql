Author: 
Date:
Purpose: 
Version:


SELECT
sfo.`increment_id` AS 'Order Number',
sfoi.sku AS productID,
sfoi.name AS Product,
sfoi.`qty_ordered` quantity,
sfo.`grand_total` total_paid,
sfo.`shipping_amount` frieght,
sfo.`total_due` total_due,
sfop.`method`
FROM sales_flat_order sfo
LEFT JOIN sales_flat_order_item sfoi ON (sfoi.order_id = sfo.`entity_id`)
LEFT JOIN sales_flat_order_payment sfop ON (sfop.`parent_id` = sfo.`entity_id`)
#GROUP BY sfo.`increment_id`;