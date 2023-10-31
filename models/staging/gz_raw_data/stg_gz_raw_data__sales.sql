with 

source as (

    select * from {{ source('gz_raw_data', 'sales') }}

),

renamed as (

    select
    CONCAT(date_date, " ", orders_id, pdt_id) AS sales_id,
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
