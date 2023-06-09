USE car_dealership;

-- 1
SELECT * FROM dealerships;

-- 2
SELECT *
FROM vehicles
WHERE VIN IN (
  SELECT VIN
  FROM inventory
  WHERE dealership_id = 102
);

-- 3
SELECT * FROM vehicles;

SELECT *
FROM vehicles
WHERE VIN = 146675;

-- 4
SELECT d.*
FROM dealerships d
INNER JOIN inventory i ON d.dealership_id = i.dealership_id
INNER JOIN vehicles v ON i.VIN = v.VIN
WHERE v.VIN = 156475;

-- 5
SELECT d.*
FROM dealerships d
INNER JOIN inventory i ON d.dealership_id = i.dealership_id
INNER JOIN vehicles v ON i.VIN = v.VIN
WHERE v.vehicle_Type = 'Sedan';

-- 6
select * from dealerships;
select * from sales_contracts; 

SELECT sc.*
FROM sales_contracts sc
INNER JOIN dealerships d ON sc.dealership_id = d.dealership_id
WHERE d.dealership_id = 101
AND sc.contract_date BETWEEN '2023-05-01' AND '2023-06-20';


