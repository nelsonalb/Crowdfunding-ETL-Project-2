-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/KCcoDk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- create contacts table and set our primary key

CREATE TABLE "contacts" (
    "contact_id" integer   NOT NULL,
    "first_name" varchar(150)   NOT NULL,
    "last_name" varchar(150)   NOT NULL,
    "email" varchar(150)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

-- create category table and set our primary key
CREATE TABLE "category" (
    "category_id" varchar(150)   NOT NULL,
    "category" varchar(150)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

-- create subcategory table and set our primary key
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(150)   NOT NULL,
    "subcategory" varchar(150)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

-- create campaign table and set our primary key and foreign keys
CREATE TABLE "campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar(300)   NOT NULL,
    "description" varchar(300)   NOT NULL,
    "goal" decimal   NOT NULL,
    "pledged" decimal   NOT NULL,
    "outcome" varchar(300)   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(300)   NOT NULL,
    "currency" varchar(300)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(300)   NOT NULL,
    "subcategory_id" varchar(300)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

