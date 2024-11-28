CREATE OR REPLACE TABLE SAT_PO_TRAN (
  POnumber INTEGER,
  lineitem INTEGER,
  DATE_PK INTEGER,
  VENDOR_PK INTEGER,
  MATERIAL_PK INTEGER,
  PLANT_PK INTEGER,
  unit STRING,
  price FLOAT,
  currency STRING,
  doc_type STRING,
  payment_type STRING,
  Quantity INTEGER
);