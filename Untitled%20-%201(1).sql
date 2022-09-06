SELECT * from CANADA_CROP;

SELECT distinct(crop_type) from canada_crop;

SELECT COUNT(distinct(crop_type)) as Number_of_Grain_Crops from canada_crop;

--Grain Crops and the quantity produced
select CROP_TYPE, sum(QUANTITY_PRODUCED_METRIC_TONNES_) as Total_Quantity_Produced
from CANADA_CROP
group by CROP_TYPE
ORDER BY 2 desc;

--Quantity of Grain Crops Produced by Province
SELECT PROVINCE, sum(QUANTITY_PRODUCED_METRIC_TONNES_) as Total_Quantity_Produced
FROM CANADA_CROP
GROUP BY PROVINCE
ORDER BY 2 desc;

--Grain Crops and quantities produced in Saskatchewan
SELECT CROP_TYPE, SUM(QUANTITY_PRODUCED_METRIC_TONNES_) AS Total
FROM CANADA_CROP
WHERE PROVINCE = 'Saskatchewan'
Group By CROP_TYPE
ORDER BY 2 desc;

--Crop prices by province 2021 sorted by highest to lowest
SELECT PROVINCE, CROP_TYPE, PRICE_DOLLARS_PER_TONNE_
FROM CANADA_CROP
WHERE YEAR = 2021
ORDER BY 2, 3;

--Highest price of grain crops
SELECT CROP_TYPE, MAX(PRICE_DOLLARS_PER_TONNE_) AS Max_Price
FROM CANADA_CROP
GROUP BY CROP_TYPE
ORDER BY 2 DESC;

--Number of grain Crops produced by province
SELECT PROVINCE, COUNT(distinct(CROP_TYPE)) AS NUMBER_OF_CROP_PRODUCED
FROM CANADA_CROP
WHERE QUANTITY_PRODUCED_METRIC_TONNES_ > 0
GROUP BY PROVINCE;