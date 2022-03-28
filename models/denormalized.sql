{{config(
    materialized="table"
    )}}

    With denormalized as
    (
        Select * from {{ ref('covid19_country_detail') }}
        union
        Select * from {{ ref('covid19_province_detail') }}
    )

    Select * from denormalized