with

source as (

    select * from {{ source('raw','ACCOUNTS') }}

),

renamed as (

    select
        accountid as account_id,
        address1_country as country,
        address1_city as city
    from source

)

select * from renamed