with 

source as (

    select * from {{ source('tpch', 'customer') }}

),

renamed as (

    select
        c_custkey as customer_key,
        c_name as customer_name,
        c_address,
        c_nationkey,
        c_phone,
        c_acctbal,
        c_mktsegment,
        c_comment

    from source

)

select * from renamed
