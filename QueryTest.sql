--Test for this is working

SELECT * FROM web_scrapping

-- Select all items from the table Units_sold_BC_transf_2019
SELECT * FROM "Units_sold_BC_transf_2019"

-- Select the date from the table Interest_rate_2019
SELECT "Date" FROM "Interest_rate_2019"

--Join the tables
SELECT *
FROM "CovidCases_On" join "Price_Houses_sold_ON_2020" on "CovidCases_On"."Date" = "Price_Houses_sold_ON_2020"."Date"