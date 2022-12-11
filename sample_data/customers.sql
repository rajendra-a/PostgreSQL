-- ----------------------------
--  Table: Customers
-- ----------------------------
DROP TABLE IF EXISTS "customers";
CREATE TABLE "customers" (
	"customer_id" int4 NOT NULL,
	"first_name" varchar(100) COLLATE "default",
	"last_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Sample customers records
-- ----------------------------
BEGIN;
INSERT INTO "customers" VALUES ('1', 'John', 'Doe');
INSERT INTO "customers" VALUES ('2', 'Jeff', 'Smith');
INSERT INTO "customers" VALUES ('3', 'Mike', 'Steel');
INSERT INTO "customers" VALUES ('4', 'Mark', 'Benjamin');
INSERT INTO "customers" VALUES ('5', 'Hannah', 'Rose');
COMMIT;

-- ----------------------------
--  Primary key for table : customers
-- ----------------------------
ALTER TABLE "customers" ADD PRIMARY KEY ("customer_id") NOT DEFERRABLE INITIALLY IMMEDIATE;
