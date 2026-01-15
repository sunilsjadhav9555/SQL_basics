SELECT 
    Transaction_ID, 
    Date, 
    Transaction_Type, 
    Description,
    DATENAME(WEEKDAY, Date) AS Day_of_Week,
    DATEDIFF(DAY, Date, GETDATE()) AS Days_Since_Transaction
FROM 
    BankTransationDetails
WHERE 
    Description = 'Salary Credit';

	SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    SUM(CASE WHEN Amount > 0 THEN Amount ELSE 0 END) AS Total_Credit_Amount,
    SUM(CASE WHEN Amount < 0 THEN ABS(Amount) ELSE 0 END) AS Total_Debit_Amount,
    COUNT(*) AS Transaction_Count
FROM 
    BankTransationDetails
GROUP BY 
    YEAR(Date), 
    MONTH(Date)
ORDER BY 
    Year, Month;