with 

source as (

    select * from {{ source('gz_raw_data', 'ship') }}

),

renamed as (

    select

    from source

)

select * from renamed
