with

source_accounts as (

    select * from {{ ref('stg_dataverse__donor_commitments') }}

),

transformed as (

    select * from source_accounts

)

select * from transformed