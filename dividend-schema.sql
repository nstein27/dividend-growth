
-- =============================================================
-- Sector
-- =============================================================
CREATE TABLE portfolio.sector (
    id INT PRIMARY KEY,
    name VARCHAR(50)
)

SELECT * FROM portfolio.sector;




-- =============================================================
-- Stock
-- =============================================================
CREATE TABLE portfolio.stock (
    symbol VARCHAR(6),
    name VARCHAR(50),
    sector VARCHAR(50),
    industry VARCHAR(50),
    website VARCHAR(100)
)

SELECT * FROM portfolio.stock;




-- =============================================================
-- Stock Split
-- Split Info: https://www.financecharts.com/stocks/SYK/stock-splits
-- Split Info: https://investors.airproducts.com/stock-information
-- =============================================================
CREATE TABLE portfolio.stockSplit (
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	symbol VARCHAR(6),
	date DATE,
	split VARCHAR(7),
	multiple DECIMAL(4,1),
	description VARCHAR(20)
)

SELECT * FROM portfolio.stockSplit;




-- =============================================================
-- Divident Type
-- =============================================================
CREATE TABLE portfolio.dividendType (
	id TINYINT PRIMARY KEY,
	name VARCHAR(50)
)

SELECT * FROM portfolio.dividendType;




-- =============================================================
-- Dividend Frequency
-- =============================================================
CREATE TABLE portfolio.dividendFrequency (
	id TINYINT PRIMARY KEY,
	name VARCHAR(50)
)

SELECT * FROM portfolio.dividendFrequency;




-- =============================================================
-- Account Type
-- =============================================================
CREATE TABLE portfolio.accountType (
	id TINYINT PRIMARY KEY,
	name VARCHAR(50)
)

SELECT * FROM portfolio.accountType;




-- =============================================================
-- Dividends
-- Dividend Info: https://investors.airproducts.com/stock-information
-- =============================================================
CREATE TABLE portfolio.dividend (
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	symbol VARCHAR(6), 
	type TINYINT, 
	frequency TINYINT, 
	amount DECIMAL(19, 4), 
	adjustedAmount DECIMAL(19, 4), 
	declareDate DATE, 
	exDividendDate DATE, 
	recordDate DATE, 
	payDate DATE
)

SELECT * FROM portfolio.dividend WHERE symbol = 'APD' ORDER BY payDate DESC;

SELECT SUM(amount) FROM portfolio.dividend WHERE symbol = 'APD';
SELECT SUM(amount), YEAR(paydate) FROM portfolio.dividend WHERE symbol = 'APD' GROUP BY YEAR(payDate) ORDER BY YEAR(payDate) DESC;


SELECT CAST('5/22/2025' AS DATE)
SELECT CAST ('7/18/2025' AS DATE);

SELECT * FROM portfolio.dividendFrequency
SELECT * FROM portfolio.stock


-- To Do
-- stock trade table
-- Dividend Table
-- splits
-- buyout
