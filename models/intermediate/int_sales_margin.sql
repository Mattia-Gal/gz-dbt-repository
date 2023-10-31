SELECT
    sales.sales_id,
    sales.date_date,
    sales.orders_id,
    sales.products_id,
    sales.revenue,
    sales.quantity,
    sales.quantity * products.purchase_price AS purchase_cost,
    sales.revenue - (sales.quantity * products.purchase_price) AS margin
FROM {{ref ('stg_gz_raw_data__sales')}} AS sales
JOIN {{ref ('stg_gz_raw_data__product')}} AS products
ON products.products_id = sales.products_id

