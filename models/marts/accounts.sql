with

source_accounts as (

    select * from {{ ref('stg_dataverse__accounts') }}

),

transformed as (

    select
        account_id,
        CONCAT(country,'_', city ) as geo_location
    from source_accounts

)

select * from transformed