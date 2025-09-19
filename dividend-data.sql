
-- =============================================================
-- Sector
-- =============================================================
INSERT INTO portfolio.sector (ID, name) VALUES (1, 'Communication Services');
INSERT INTO portfolio.sector (ID, name) VALUES (2, 'Consumer Discretionary');
INSERT INTO portfolio.sector (ID, name) VALUES (3, 'Consumer Staples');
INSERT INTO portfolio.sector (ID, name) VALUES (4, 'Energy');
INSERT INTO portfolio.sector (ID, name) VALUES (5, 'Financials');
INSERT INTO portfolio.sector (ID, name) VALUES (6, 'Health Care');
INSERT INTO portfolio.sector (ID, name) VALUES (7, 'Industrials');
INSERT INTO portfolio.sector (ID, name) VALUES (8, 'Materials');
INSERT INTO portfolio.sector (ID, name) VALUES (9, 'Real Estate');
INSERT INTO portfolio.sector (ID, name) VALUES (10, 'Technology');
INSERT INTO portfolio.sector (ID, name) VALUES (11, 'Utilities');

SELECT * FROM portfolio.sector;



-- =============================================================
-- Stock
-- =============================================================

INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('APD', 'Air Products and Chemicals', 8, 'Industrial Gases');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('CVS', 'CVS Health Corporation', 6, 'Health Care Services');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('INTC', 'Intel Corporation', 10, 'Semiconductors');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('JNJ', 'Johnson and Johnson', 6, 'Pharmaceuticals');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('KO', 'The Coca-Cola Company', 3, 'Soft Drinks & Non-alcoholic Beverages');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('MDT', 'Medtronic plc', 6, 'Health Care Equipment');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('MSFT', 'Microsoft Corporation', 10, 'Systems Software');
INSERT INTO portfolio.stock (symbol, name, sectorId, industry) VALUES ('NSC', 'Norfolk Southern Corporation', 7, 'Rail Transportation');

SELECT * FROM portfolio.stock;



-- =============================================================
-- Stock Split
-- Split Info: https://www.financecharts.com/stocks/SYK/stock-splits
-- Split Info: https://investors.airproducts.com/stock-information
-- =============================================================

INSERT INTO portfolio.stockSplit (symbol, date, split, multiple, [description]) VALUES ('SYK', '05/17/2004', '2:1', 2, '2 for 1 split');

SELECT * FROM portfolio.stockSplit;



-- =============================================================
-- Divident Type
-- =============================================================
INSERT INTO portfolio.dividendType (id, name) VALUES (1, 'Regular');
INSERT INTO portfolio.dividendType (id, name) VALUES (2, 'Special');
INSERT INTO portfolio.dividendType (id, name) VALUES (3, 'Stock');
INSERT INTO portfolio.dividendType (id, name) VALUES (4, 'Interim');
INSERT INTO portfolio.dividendType (id, name) VALUES (5, 'Final');

SELECT * FROM portfolio.dividendType;



-- =============================================================
-- Dividend Frequency
-- =============================================================
INSERT INTO portfolio.dividendFrequency (id, name) VALUES (1, 'Quarterly');
INSERT INTO portfolio.dividendFrequency (id, name) VALUES (2, 'Semiannual');
INSERT INTO portfolio.dividendFrequency (id, name) VALUES (3, 'Annual');
INSERT INTO portfolio.dividendFrequency	(id, name) VALUES (4, 'Other');

SELECT * FROM portfolio.dividendFrequency;



-- =============================================================
-- Account Type
-- =============================================================
INSERT INTO portfolio.accountType (id, name) VALUES (1, 'Brokerage Account');
INSERT INTO portfolio.accountType (id, name) VALUES (2, 'Rollover IRA');
INSERT INTO portfolio.accountType (id, name) VALUES (3, 'Roth IRA');
INSERT INTO portfolio.accountType (id, name) VALUES (4, 'IRA');
INSERT INTO portfolio.accountType (id, name) VALUES (5, '401(k)');

SELECT * FROM portfolio.accountType;



-- =============================================================
-- Dividends
-- Dividend Info: https://investors.airproducts.com/stock-information
-- =============================================================

SELECT * FROM portfolio.dividend WHERE symbol = 'APD' ORDER BY payDate DESC;

SELECT SUM(amount) FROM portfolio.dividend WHERE symbol = 'APD';
SELECT SUM(amount), YEAR(paydate) FROM portfolio.dividend WHERE symbol = 'APD' GROUP BY YEAR(payDate) ORDER BY YEAR(payDate) DESC;





-- =============================================
-- APD Dividend Data Starting 1 Jan 2000
-- =============================================
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.79, 1.79, '2025-07-18', '2025-10-01', '2025-10-01', '2025-11-10');
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.79, 1.79, CAST('5/22/2025' AS DATE), CAST('7/01/2025' AS DATE), CAST('7/01/2025' AS DATE), CAST('8/11/2025' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.79, 1.79, CAST('1/22/2025' AS DATE), CAST('4/01/2025' AS DATE), CAST('4/01/2025' AS DATE), CAST('5/12/2025' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.77, 1.77, CAST('11/21/2024' AS DATE), CAST('1/02/2025' AS DATE), CAST('1/02/2025' AS DATE), CAST('2/10/2025' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.77, 1.77, CAST('7/18/2024' AS DATE), CAST('10/01/2024' AS DATE), CAST('10/01/2024' AS DATE), CAST('11/12/2024' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.77, 1.77, CAST('5/17/2024' AS DATE), CAST('7/01/2024' AS DATE), CAST('7/01/2024' AS DATE), CAST('8/12/2024' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.77, 1.77, CAST('1/25/2024' AS DATE), CAST('3/28/2024' AS DATE), CAST('4/01/2024' AS DATE), CAST('5/13/2024' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.75, 1.75, CAST('11/15/2023' AS DATE), CAST('12/29/2023' AS DATE), CAST('1/02/2024' AS DATE), CAST('2/12/2024' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.75, 1.75, CAST('7/21/2023' AS DATE), CAST('9/29/2023' AS DATE), CAST('10/02/2023' AS DATE), CAST('11/13/2023' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.75, 1.75, CAST('5/18/2023' AS DATE), CAST('6/30/2023' AS DATE), CAST('7/03/2023' AS DATE), CAST('8/14/2023' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.75, 1.75, CAST('1/26/2023' AS DATE), CAST('3/31/2023' AS DATE), CAST('4/03/2023' AS DATE), CAST('5/08/2023' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.62, 1.62, CAST('11/22/2022' AS DATE), CAST('12/30/2022' AS DATE), CAST('1/03/2023' AS DATE), CAST('2/13/2023' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.62, 1.62, CAST('7/15/2022' AS DATE), CAST('9/30/2022' AS DATE), CAST('10/03/2022' AS DATE), CAST('11/14/2022' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.62, 1.62, CAST('5/19/2022' AS DATE), CAST('6/30/2022' AS DATE), CAST('7/01/2022' AS DATE), CAST('8/08/2022' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.62, 1.62, CAST('2/03/2022' AS DATE), CAST('3/31/2022' AS DATE), CAST('4/01/2022' AS DATE), CAST('5/09/2022' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.5, 1.5, CAST('11/18/2021' AS DATE), CAST('12/31/2021' AS DATE), CAST('1/03/2022' AS DATE), CAST('2/14/2022' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.5, 1.5, CAST('7/15/2021' AS DATE), CAST('9/30/2021' AS DATE), CAST('10/01/2021' AS DATE), CAST('11/08/2021' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.5, 1.5, CAST('5/20/2021' AS DATE), CAST('6/30/2021' AS DATE), CAST('7/01/2021' AS DATE), CAST('8/09/2021' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.5, 1.5, CAST('1/28/2021' AS DATE), CAST('3/31/2021' AS DATE), CAST('4/01/2021' AS DATE), CAST('5/10/2021' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.34, 1.34, CAST('11/19/2020' AS DATE), CAST('12/31/2020' AS DATE), CAST('1/04/2021' AS DATE), CAST('2/08/2021' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.34, 1.34, CAST('7/16/2020' AS DATE), CAST('9/30/2020' AS DATE), CAST('10/01/2020' AS DATE), CAST('11/09/2020' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.34, 1.34, CAST('5/21/2020' AS DATE), CAST('6/30/2020' AS DATE), CAST('7/01/2020' AS DATE), CAST('8/10/2020' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.34, 1.34, CAST('1/23/2020' AS DATE), CAST('3/31/2020' AS DATE), CAST('4/01/2020' AS DATE), CAST('5/11/2020' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.16, 1.16, CAST('11/26/2019' AS DATE), CAST('12/31/2019' AS DATE), CAST('1/02/2020' AS DATE), CAST('2/10/2020' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.16, 1.16, CAST('7/18/2019' AS DATE), CAST('9/30/2019' AS DATE), CAST('10/01/2019' AS DATE), CAST('11/11/2019' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.16, 1.16, CAST('5/14/2019' AS DATE), CAST('6/28/2019' AS DATE), CAST('7/01/2019' AS DATE), CAST('8/12/2019' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.16, 1.16, CAST('1/24/2019' AS DATE), CAST('3/29/2019' AS DATE), CAST('4/01/2019' AS DATE), CAST('5/13/2019' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.1, 1.1, CAST('11/20/2018' AS DATE), CAST('12/31/2018' AS DATE), CAST('1/02/2019' AS DATE), CAST('2/11/2019' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.1, 1.1, CAST('7/19/2018' AS DATE), CAST('9/28/2018' AS DATE), CAST('10/01/2018' AS DATE), CAST('11/12/2018' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.1, 1.1, CAST('5/16/2018' AS DATE), CAST('6/29/2018' AS DATE), CAST('7/02/2018' AS DATE), CAST('8/13/2018' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 1.1, 1.1, CAST('1/25/2018' AS DATE), CAST('3/29/2018' AS DATE), CAST('4/02/2018' AS DATE), CAST('5/14/2018' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.95, 0.95, CAST('11/14/2017' AS DATE), CAST('12/29/2017' AS DATE), CAST('1/02/2018' AS DATE), CAST('2/12/2018' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.95, 0.95, CAST('7/20/2017' AS DATE), CAST('10/06/2017' AS DATE), CAST('10/10/2017' AS DATE), CAST('11/13/2017' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.95, 0.95, CAST('12/30/1899' AS DATE), CAST('6/29/2017' AS DATE), CAST('7/03/2017' AS DATE), CAST('8/14/2017' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.95, 0.95, CAST('1/27/2017' AS DATE), CAST('3/30/2017' AS DATE), CAST('4/03/2017' AS DATE), CAST('5/08/2017' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.86, 0.86, CAST('11/16/2016' AS DATE), CAST('12/29/2016' AS DATE), CAST('1/03/2017' AS DATE), CAST('2/13/2017' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.86, 0.86, CAST('7/21/2016' AS DATE), CAST('10/06/2016' AS DATE), CAST('10/11/2016' AS DATE), CAST('11/14/2016' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.86, 0.7951, CAST('5/19/2016' AS DATE), CAST('6/29/2016' AS DATE), CAST('7/01/2016' AS DATE), CAST('8/08/2016' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.86, 0.7951, CAST('3/17/2016' AS DATE), CAST('3/30/2016' AS DATE), CAST('4/01/2016' AS DATE), CAST('5/09/2016' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.81, 0.7488, CAST('11/19/2015' AS DATE), CAST('12/30/2015' AS DATE), CAST('1/04/2016' AS DATE), CAST('2/08/2016' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.81, 0.7488, CAST('9/16/2015' AS DATE), CAST('9/29/2015' AS DATE), CAST('10/01/2015' AS DATE), CAST('11/09/2015' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.81, 0.7488, CAST('5/21/2015' AS DATE), CAST('6/29/2015' AS DATE), CAST('7/01/2015' AS DATE), CAST('8/10/2015' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.81, 0.7488, CAST('3/19/2015' AS DATE), CAST('3/30/2015' AS DATE), CAST('4/01/2015' AS DATE), CAST('5/11/2015' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.77, 0.7119, CAST('11/20/2014' AS DATE), CAST('12/30/2014' AS DATE), CAST('1/02/2015' AS DATE), CAST('2/09/2015' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.77, 0.7119, CAST('7/17/2014' AS DATE), CAST('9/29/2014' AS DATE), CAST('10/01/2014' AS DATE), CAST('11/10/2014' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.77, 0.7119, CAST('5/15/2014' AS DATE), CAST('6/27/2014' AS DATE), CAST('7/01/2014' AS DATE), CAST('8/11/2014' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.77, 0.7119, CAST('3/20/2014' AS DATE), CAST('3/28/2014' AS DATE), CAST('4/01/2014' AS DATE), CAST('5/12/2014' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.71, 0.6564, CAST('11/21/2013' AS DATE), CAST('12/30/2013' AS DATE), CAST('1/02/2014' AS DATE), CAST('2/10/2014' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.71, 0.6564, CAST('9/19/2013' AS DATE), CAST('9/27/2013' AS DATE), CAST('10/01/2013' AS DATE), CAST('11/12/2013' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.71, 0.6564, CAST('5/16/2013' AS DATE), CAST('6/27/2013' AS DATE), CAST('7/01/2013' AS DATE), CAST('8/12/2013' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.71, 0.6564, CAST('3/21/2013' AS DATE), CAST('3/27/2013' AS DATE), CAST('4/01/2013' AS DATE), CAST('5/13/2013' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.64, 0.5917, CAST('11/15/2012' AS DATE), CAST('12/28/2012' AS DATE), CAST('1/02/2013' AS DATE), CAST('2/11/2013' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.64, 0.5917, CAST('12/30/1899' AS DATE), CAST('9/27/2012' AS DATE), CAST('10/01/2012' AS DATE), CAST('11/13/2012' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.64, 0.5917, CAST('12/30/1899' AS DATE), CAST('6/28/2012' AS DATE), CAST('7/02/2012' AS DATE), CAST('8/13/2012' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.64, 0.5917, CAST('12/30/1899' AS DATE), CAST('3/29/2012' AS DATE), CAST('4/02/2012' AS DATE), CAST('5/14/2012' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.58, 0.5362, CAST('12/30/1899' AS DATE), CAST('12/29/2011' AS DATE), CAST('1/03/2012' AS DATE), CAST('2/13/2012' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.58, 0.5362, CAST('12/30/1899' AS DATE), CAST('9/29/2011' AS DATE), CAST('10/03/2011' AS DATE), CAST('11/14/2011' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.58, 0.5362, CAST('12/30/1899' AS DATE), CAST('6/29/2011' AS DATE), CAST('7/01/2011' AS DATE), CAST('8/08/2011' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.58, 0.5362, CAST('12/30/1899' AS DATE), CAST('3/30/2011' AS DATE), CAST('4/01/2011' AS DATE), CAST('5/09/2011' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.49, 0.453, CAST('12/30/1899' AS DATE), CAST('12/30/2010' AS DATE), CAST('1/03/2011' AS DATE), CAST('2/14/2011' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.49, 0.453, CAST('12/30/1899' AS DATE), CAST('9/29/2010' AS DATE), CAST('10/01/2010' AS DATE), CAST('11/08/2010' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.49, 0.453, CAST('12/30/1899' AS DATE), CAST('6/29/2010' AS DATE), CAST('7/01/2010' AS DATE), CAST('8/09/2010' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.49, 0.453, CAST('12/30/1899' AS DATE), CAST('3/30/2010' AS DATE), CAST('4/01/2010' AS DATE), CAST('5/10/2010' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.45, 0.416, CAST('12/30/1899' AS DATE), CAST('12/30/2009' AS DATE), CAST('1/04/2010' AS DATE), CAST('2/08/2010' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.45, 0.416, CAST('12/30/1899' AS DATE), CAST('9/29/2009' AS DATE), CAST('10/01/2009' AS DATE), CAST('11/09/2009' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.45, 0.416, CAST('12/30/1899' AS DATE), CAST('6/29/2009' AS DATE), CAST('7/01/2009' AS DATE), CAST('8/10/2009' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.45, 0.416, CAST('12/30/1899' AS DATE), CAST('3/30/2009' AS DATE), CAST('4/01/2009' AS DATE), CAST('5/11/2009' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.44, 0.4068, CAST('12/30/1899' AS DATE), CAST('12/30/2008' AS DATE), CAST('1/02/2009' AS DATE), CAST('2/09/2009' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.44, 0.4068, CAST('12/30/1899' AS DATE), CAST('9/29/2008' AS DATE), CAST('10/01/2008' AS DATE), CAST('11/10/2008' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.44, 0.4068, CAST('12/30/1899' AS DATE), CAST('6/27/2008' AS DATE), CAST('7/01/2008' AS DATE), CAST('8/11/2008' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.44, 0.4068, CAST('12/30/1899' AS DATE), CAST('3/28/2008' AS DATE), CAST('4/01/2008' AS DATE), CAST('5/12/2008' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.38, 0.3513, CAST('12/30/1899' AS DATE), CAST('12/28/2007' AS DATE), CAST('1/02/2008' AS DATE), CAST('2/11/2008' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.38, 0.3513, CAST('12/30/1899' AS DATE), CAST('9/27/2007' AS DATE), CAST('10/01/2007' AS DATE), CAST('11/12/2007' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.38, 0.3513, CAST('12/30/1899' AS DATE), CAST('6/28/2007' AS DATE), CAST('7/02/2007' AS DATE), CAST('8/13/2007' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.38, 0.3513, CAST('12/30/1899' AS DATE), CAST('3/29/2007' AS DATE), CAST('4/02/2007' AS DATE), CAST('5/14/2007' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.34, 0.3143, CAST('12/30/1899' AS DATE), CAST('12/28/2006' AS DATE), CAST('1/02/2007' AS DATE), CAST('2/12/2007' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.34, 0.3143, CAST('12/30/1899' AS DATE), CAST('9/28/2006' AS DATE), CAST('10/02/2006' AS DATE), CAST('11/13/2006' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.34, 0.3143, CAST('12/30/1899' AS DATE), CAST('6/29/2006' AS DATE), CAST('7/03/2006' AS DATE), CAST('8/14/2006' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.34, 0.3143, CAST('12/30/1899' AS DATE), CAST('3/30/2006' AS DATE), CAST('4/03/2006' AS DATE), CAST('5/08/2006' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.32, 0.2958, CAST('12/30/1899' AS DATE), CAST('12/29/2005' AS DATE), CAST('1/03/2006' AS DATE), CAST('2/13/2006' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.32, 0.2958, CAST('12/30/1899' AS DATE), CAST('9/29/2005' AS DATE), CAST('10/03/2005' AS DATE), CAST('11/14/2005' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.32, 0.2958, CAST('12/30/1899' AS DATE), CAST('6/29/2005' AS DATE), CAST('7/01/2005' AS DATE), CAST('8/08/2005' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.32, 0.2958, CAST('12/30/1899' AS DATE), CAST('3/30/2005' AS DATE), CAST('4/01/2005' AS DATE), CAST('5/09/2005' AS DATE));

INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.29, 0.2681, CAST('12/30/1899' AS DATE), CAST('12/30/2004' AS DATE), CAST('1/03/2005' AS DATE), CAST('2/14/2005' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.29, 0.2681, CAST('12/30/1899' AS DATE), CAST('9/29/2004' AS DATE), CAST('10/01/2004' AS DATE), CAST('11/08/2004' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.29, 0.2681, CAST('12/30/1899' AS DATE), CAST('6/29/2004' AS DATE), CAST('7/01/2004' AS DATE), CAST('8/09/2004' AS DATE));
INSERT INTO portfolio.dividend (symbol, dividendTypeId, frequency, amount, adjustedAmount, declareDate, exDividendDate, recordDate, payDate) VALUES ('APD', 1, 1, 0.23, 0.2126, CAST('12/30/1899' AS DATE), CAST('3/30/2004' AS DATE), CAST('4/01/2004' AS DATE), CAST('5/10/2004' AS DATE));


SELECT * FROM portfolio.dividend;



SELECT CAST('5/22/2025' AS DATE)
SELECT CAST ('7/18/2025' AS DATE);



SELECT * FROM portfolio.dividendFrequency
SELECT * FROM portfolio.stock


-- To Do
-- stock trade table
-- Dividend Table
-- splits
-- buyout
