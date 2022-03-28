{{config(
    materialized="table"
    )}}

    With weekly_stat as
  ( Select week(Cast(DATE as datetime)) as week,
    MONTH(Cast(DATE as datetime)) as MONTH,
    year(Cast(DATE as datetime)) as year,
    SUM(NEW_CASES) as new_cases,
    SUM(NEW_DEATHS) as new_deaths
    from "INTERVIEW_DB"."PLAYGROUND_IKECHUKWU_DIKE"."COVID19_COUNTRY_DETAIL"
    group by week,MONTH,year
  )
  
  Select * from weekly_stat  