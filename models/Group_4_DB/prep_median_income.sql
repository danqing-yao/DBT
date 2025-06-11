{{ config(
    materialized='table',
    schema='prep'
) }}

SELECT
  STATE,
  AREANAME,
  MEDIAN_HOUSEHOLD_INCOME,
  AGGREGATE_FAMILY_INCOME
FROM {{source('dbt_Group_4_raw','MARKETPLACE_INCOME_RAW')}}