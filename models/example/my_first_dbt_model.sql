/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml.

    Try changing "table" to "view" below.
*/

{{ config(
    materialized='table'
) }}

with source_data as (
    select 1 as id
    union all
    select null as id
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values.
*/

-- where id is not null

/*
    TROUBLESHOOTING STEPS IF YOU SEE "OBJECT DOES NOT EXIST OR NOT AUTHORIZED" ERROR:

    1️⃣ Run `dbt run` before running `dbt test`. Models must exist first.
       ```sh
       dbt run
       dbt test
       ```
    2️⃣ Ensure the correct schema is used in `dbt_project.yml`.
       ```yaml
       models:
         my_dbt_project:
           +schema: test  # Verify this is correct
       ```
    3️⃣ Manually check in Snowflake if the model exists:
       ```sql
       SHOW TABLES IN ARROW_INTERNATIONAL.TEST;
       ```
    4️⃣ If permission issues exist, grant the necessary access:
       ```sql
       GRANT USAGE ON DATABASE ARROW_INTERNATIONAL TO ROLE YOUR_ROLE;
       GRANT USAGE ON SCHEMA ARROW_INTERNATIONAL.TEST TO ROLE YOUR_ROLE;
       GRANT SELECT ON ALL TABLES IN SCHEMA ARROW_INTERNATIONAL.TEST TO ROLE YOUR_ROLE;
       ```
    5️⃣ Clear dbt cache and dependencies before re-running:
       ```sh
       dbt clean
       dbt deps
       dbt run
       dbt test
       ```
*/
