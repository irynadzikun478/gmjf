with

source_accounts as (

    select * from {{ ref('stg_dataverse__accounts') }}

),

transformed as (

    select
        account_id,
        -- LOWER(CONCAT(country,'_', city)) as geo_location,
        UPPER(CONCAT(country,'_', city)) as geo_location,
        DATEDIFF(days, created_at, CURRENT_DATE) AS days_since_created_date
    from source_accounts

)

select * from transformed