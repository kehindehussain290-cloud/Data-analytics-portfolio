-- 1. Create and select your database
CREATE DATABASE IF NOT EXISTS toman_bike_share;
USE toman_bike_share;

-- 2. Create the pricing/cost table
CREATE TABLE cost_table (
    yr INT PRIMARY KEY,
    price DECIMAL(10,2),
    cogs DECIMAL(10,2)
);

-- Insert pricing data for Year 0 and Year 1
INSERT INTO cost_table (yr, price, cogs) VALUES 
(0, 4.99, 1.25), 
(1, 6.99, 1.50);

-- 3. Create the base table structure for Year 0 data
CREATE TABLE bike_share_yr_0 (
    dteday VARCHAR(20),
    season INT,
    yr INT,
    mnth INT,
    hr INT,
    holiday INT,
    weekday INT,
    workingday INT,
    weathersit INT,
    temp DECIMAL(5,4),
    atemp DECIMAL(5,4),
    hum DECIMAL(5,4),
    windspeed DECIMAL(5,4),
    rider_type VARCHAR(20),
    riders INT
);

-- 4. Create the base table structure for Year 1 data (same schema)
CREATE TABLE bike_share_yr_1 LIKE bike_share_yr_0;
