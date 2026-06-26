
SELECT COUNT(*) AS TotalCustomers
FROM dbo.CustomerChurn;

SELECT
    Churn,
    COUNT(*) AS Customers
FROM dbo.CustomerChurn
GROUP BY Churn;

SELECT
    Contract,
    Churn,
    COUNT(*) AS Customers
FROM dbo.CustomerChurn
GROUP BY Contract, Churn
ORDER BY Contract;

SELECT
    Churn,
    AVG(CAST(MonthlyCharges AS DECIMAL(10,2))) AS AvgMonthlyCharges
FROM dbo.CustomerChurn
GROUP BY Churn;

SELECT
    InternetService,
    Churn,
    COUNT(*) AS Customers
FROM dbo.CustomerChurn
GROUP BY InternetService, Churn
ORDER BY InternetService;