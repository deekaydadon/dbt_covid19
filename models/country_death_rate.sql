{{config(
    materialized="table"
    )}}

Select Cast(DATE as datetime) as date_recorded,
  max(NEW_DEATHS) as death_rate
  from "INTERVIEW_DB"."PLAYGROUND_IKECHUKWU_DIKE"."COVID19_COUNTRY_DETAIL"
  group by DATE
  having death_rate >0
  order by date_recorded asc