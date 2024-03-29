-- 53
-- PKCColumnE
-- ListElementExchanger with ChainedSupplier with PrimaryKeyConstraintSupplier and PrimaryKeyColumnsWithAlternativesSupplier - Exchanged product_no with price

CREATE TABLE "products" (
	"product_no"	INT	NOT NULL,
	"name"	VARCHAR(100)	NOT NULL,
	"price"	NUMERIC	PRIMARY KEY	NOT NULL,
	"discounted_price"	NUMERIC	NOT NULL,
	CHECK ("price" > 0),
	CHECK ("discounted_price" > 0),
	CHECK ("price" > "discounted_price")
)

CREATE TABLE "orders" (
	"order_id"	INT	PRIMARY KEY,
	"shipping_address"	VARCHAR(100)
)

CREATE TABLE "order_items" (
	"product_no"	INT	 REFERENCES "products" ("product_no"),
	"order_id"	INT	 REFERENCES "orders" ("order_id"),
	"quantity"	INT	NOT NULL,
	PRIMARY KEY ("product_no", "order_id"),
	CHECK ("quantity" > 0)
)

