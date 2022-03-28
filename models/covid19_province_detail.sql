{{config(
    materialized="table"
    )}}

WITH Covid_province_data as 
(
  SELECT * 
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_IKECHUKWU_DIKE"
  where Location_Level != 'Country'
)
  
  Select * from Covid_province_data