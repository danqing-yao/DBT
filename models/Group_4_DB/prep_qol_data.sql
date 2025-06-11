{{ config(
    materialized='table',
    schema='prep'
) }}

WITH source_data AS (
  SELECT *
  FROM {{ ref('prep_housing_csv') }}
)

SELECT
  json_data:state::STRING AS state,
  json_data:QualityOfLifeTotalScore::NUMBER AS Qol_TotalScore,
  json_data:QualityOfLifeQualityOfLife::NUMBER AS Qol_Life,
  json_data:QualityOfLifeAffordability::NUMBER AS Qol_Affordability,
  json_data:QualityOfLifeEconomy::NUMBER AS Qol_Economy,
  json_data:QualityOfLifeEducationAndHealth::NUMBER AS Qol_Education_and_Health,
  json_data:QualityOfLifeSafety::NUMBER AS Qol_Safety
FROM source_data







