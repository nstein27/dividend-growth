
--DROP TABLE portfolio.dividend;
--DROP TABLE portfolio.Account;
--DROP TABLE portfolio.accountType;
--DROP TABLE portfolio.dividendFrequency;
--DROP TABLE portfolio.dividendType;
--DROP TABLE portfolio.stockSplit;
--DROP TABLE portfolio.stock;
--DROP TABLE portfolio.sector;




-- =============================================================
-- Sector
-- =============================================================
CREATE TABLE portfolio.sector (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL
)



-- =============================================================
-- Stock
-- =============================================================
CREATE TABLE portfolio.stock (
    symbol VARCHAR(6) PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    sectorId INT NOT NULL,
    industry VARCHAR(50),
    website VARCHAR(100),
	CONSTRAINT FK_Sector FOREIGN KEY(sectorId) REFERENCES portfolio.sector (id)
)



-- =============================================================
-- Stock Split
-- Split Info: https://www.financecharts.com/stocks/SYK/stock-splits
-- Split Info: https://investors.airproducts.com/stock-information
-- =============================================================
CREATE TABLE portfolio.stockSplit (
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	symbol VARCHAR(6) NOT NULL,
	date DATE NOT NULL,
	split VARCHAR(7) NOT NULL,
	multiple DECIMAL(4,1) NOT NULL,
	description VARCHAR(20),
	CONSTRAINT FK_Stock FOREIGN KEY (symbol) REFERENCES portfolio.stock (symbol)
)



-- =============================================================
-- Divident Type
-- =============================================================
CREATE TABLE portfolio.dividendType (
	id TINYINT PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL
)



-- =============================================================
-- Dividend Frequency
-- =============================================================
CREATE TABLE portfolio.dividendFrequency (
	id TINYINT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
)



-- =============================================================
-- Account Type
-- =============================================================
CREATE TABLE portfolio.accountType (
	id TINYINT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
)



-- =============================================================
-- Dividends
-- Dividend Info: https://investors.airproducts.com/stock-information
-- =============================================================
CREATE TABLE portfolio.dividend (
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	symbol VARCHAR(6) NOT NULL, 
	dividendTypeId TINYINT, 
	frequency TINYINT, 
	amount DECIMAL(19, 4), 
	adjustedAmount DECIMAL(19, 4), 
	declareDate DATE, 
	exDividendDate DATE, 
	recordDate DATE, 
	payDate DATE,
	CONSTRAINT FK_Divident_Stock FOREIGN KEY (symbol) REFERENCES portfolio.stock (symbol),
	CONSTRAINT FK_Dividend_Type FOREIGN KEY (dividendTypeId) REFERENCES portfolio.dividendType (id)
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
