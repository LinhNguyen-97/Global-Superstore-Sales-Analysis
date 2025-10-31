WITH
  CATEGORY AS (
  SELECT
    DISTINCT `Category`,
    `Sub-Category`
  FROM
    global-superstore-475905.global_superstore_rawdata.Orders ),
  SUBCATEGORY AS (
  SELECT
    ROW_NUMBER() OVER(ORDER BY `Sub-Category`) AS SubCategoryID,
    *
  FROM
    CATEGORY )
SELECT
  DISTINCT a.`Product ID`,
  a.`Product Name`,
  b.SubCategoryID
FROM
  global-superstore-475905.global_superstore_rawdata.Orders a
LEFT JOIN
  SUBCATEGORY b
ON
  a.`Sub-Category` = b.`Sub-Category`
