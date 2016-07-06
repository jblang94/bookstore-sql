SELECT
  ROUND(AVG(stock.cost),2) AS "Average Cost",
  ROUND(AVG(stock.retail),2) AS "Average Retail",
  ROUND(AVG(stock.retail - stock.cost),2) AS "Average Profit"
FROM stock;
