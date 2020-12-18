-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "web_scrapping" (
    "Date" VARCHAR(255)   NOT NULL,
    "Price_index" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_web_scrapping" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "CovidCases_On" (
    "Number_of_Cases" INT   NOT NULL,
    "Date" VARCHAR(255)   NOT NULL
);

CREATE TABLE "Interest_rate_2019" (
    "Date" VARCHAR(255)   NOT NULL,
    "Mortgage_Rate" DECIMAL   NOT NULL
);

CREATE TABLE "Interest_rate_2020" (
    "Date" VARCHAR(255)   NOT NULL,
    "Mortgage_Rate" DECIMAL   NOT NULL
);

CREATE TABLE "Price_Houses_sold_ON_2019" (
    "Date" VARCHAR(255)   NOT NULL,
    "Average" DECIMAL   NOT NULL,
    "Units" DECIMAL   NOT NULL
);

CREATE TABLE "Price_Houses_sold_ON_2020" (
    "Date" VARCHAR(255)   NOT NULL,
    "Average" DECIMAL   NOT NULL,
    "Units" DECIMAL   NOT NULL
);

CREATE TABLE "Units_sold_BC_transf_2019" (
    "Date" VARCHAR(255)   NOT NULL,
    "Average" DECIMAL   NOT NULL,
    "Units" DECIMAL   NOT NULL
);

CREATE TABLE "Units_sold_BC_transf_2020" (
    "Date" VARCHAR(255)   NOT NULL,
    "Average" DECIMAL   NOT NULL,
    "Units" DECIMAL   NOT NULL
);

ALTER TABLE "CovidCases_On" ADD CONSTRAINT "fk_CovidCases_On_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Interest_rate_2019" ADD CONSTRAINT "fk_Interest_rate_2019_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Interest_rate_2020" ADD CONSTRAINT "fk_Interest_rate_2020_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Price_Houses_sold_ON_2019" ADD CONSTRAINT "fk_Price_Houses_sold_ON_2019_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Price_Houses_sold_ON_2020" ADD CONSTRAINT "fk_Price_Houses_sold_ON_2020_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Units_sold_BC_transf_2019" ADD CONSTRAINT "fk_Units_sold_BC_transf_2019_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

ALTER TABLE "Units_sold_BC_transf_2020" ADD CONSTRAINT "fk_Units_sold_BC_transf_2020_Date" FOREIGN KEY("Date")
REFERENCES "web_scrapping" ("Date");

