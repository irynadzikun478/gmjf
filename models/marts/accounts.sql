with

source as (

    select * from {{ ref('stg_dataverse__accounts') }}

),

transformed as (

    select
        account_id,
        CONCAT(country,'_', city ) as geo_location,
    from source

)

select * from transformed