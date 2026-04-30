--Step 2: Create RAW tables
-------------------------
--Run these in Snowflake.
Use database dbt_retail;
  CREATE OR REPLACE TABLE RAW.customers (
      customer_id NUMBER,
      first_name STRING,
      last_name STRING,
      email STRING,
      phone_number STRING,
      loyalty_card_number STRING,
      loyalty_tier STRING,
      signup_date STRING,
      postcode STRING,
      city STRING,
      country STRING
  );

   CREATE OR REPLACE TABLE RAW.products (
      product_id NUMBER,
      product_name STRING,
      brand STRING,
      category STRING,
      sub_category STRING,
      cost_price NUMBER(12,2),
      selling_price NUMBER(12,2),
      vat_rate NUMBER(5,2),
      effective_from STRING,
      effective_to STRING,
      is_current BOOLEAN
  );

    CREATE OR REPLACE TABLE RAW.orders (
      order_id NUMBER,
      order_datetime STRING,
      load_datetime STRING,
      customer_id NUMBER,
      store_id NUMBER,
      order_channel STRING,
      payment_method STRING,
      order_status STRING,
      total_amount NUMBER(12,2)
  );

  CREATE OR REPLACE TABLE RAW.order_items (
      order_item_id NUMBER,
      order_id NUMBER,
      product_id NUMBER,
      quantity NUMBER,
      unit_price NUMBER(12,2),
      discount_applied NUMBER(12,2),
      final_price NUMBER(12,2)
  );