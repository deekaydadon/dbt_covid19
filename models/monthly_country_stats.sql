{{config(
    materialized="table"
    )}}
    
With monthly_stat as
  ( Select MONTH(Cast(DATE as datetime)) as MONTH,
    year(Cast(DATE as datetime)) as year,
    SUM(NEW_CASES) as new_cases,
    SUM(NEW_DEATHS) as new_deaths
    from "INTERVIEW_DB"."PLAYGROUND_IKECHUKWU_DIKE"."COVID19_COUNTRY_DETAIL"
    group by MONTH,year
  )
  
  Select * from monthly_stat 