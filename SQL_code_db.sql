CREATE TABLE "product" (
  "product_id" int,
  "product_line" varchar,
  "product_size" varchar,
  "product_class" varchar,
  "brand" varchar,
  "standart_cost" float8,
  "prod_unique_id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE "customer" (
  "customer_id" int PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "gender" varchar,
  "DOB" varchar,
  "job_title" varchar,
  "job_industry_category" varchar,
  "wealth_segment" varchar,
  "deceased_indicator" varchar,
  "owns_car" varchar,
  "address" text,
  "postcode" varchar,
  "state" varchar,
  "country" varchar,
  "property_valuation" varchar
);

CREATE TABLE "transaction" (
  "transaction_id" int PRIMARY KEY,
  "customer_id" int,
  "prod_unique_id" int,
  "transaction_date" varchar,
  "online_order" varchar,
  "order_status" varchar,
  "list_price" float
);

CREATE INDEX "id" ON "product" ("product_id", "product_line", "product_size", "product_class", "brand");

CREATE UNIQUE INDEX ON "product" ("prod_unique_id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("prod_unique_id") REFERENCES "product" ("prod_unique_id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");
