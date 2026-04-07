with

source_accounts as (

    select * from {{ ref('stg_dataverse__accounts') }}

),

transformed as (

    select
        account_id,
        CONCAT(country,'_', city ) as geo_location,
        DATEDIFF(day, created_at, CURRENT_DATE) AS days_since_created_date
    from source_accounts

)

select * from transformed