WITH
  CATEGORY AS (
    SELECT DISTINCT
        `Category`
        ,`Sub-Category`
    FROM global-superstore-475905.global_superstore_rawdata.Orders
    )

SELECT ROW_NUMBER() OVER(ORDER BY `Sub-Category`) AS SubCategoryID
        ,*
FROM CATEGORY;
