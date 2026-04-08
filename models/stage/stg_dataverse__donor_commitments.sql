with

source as (

    select * from {{ source('raw','MSNFP_DONORCOMMITMENTS') }}

),

renamed as (

    select * from source

)

select * from renamed