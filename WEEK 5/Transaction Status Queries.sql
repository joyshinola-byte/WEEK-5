SELECT *
FROM Payment
WHERE Payment_Status = 'Success';

SELECT *
FROM Payment
WHERE Payment_Status = 'Failed';

SELECT Payment_Status, COUNT(*) AS Total
FROM Payment
WHERE Payment_Status IN ('Success', 'Failed')
GROUP BY Payment_Status;

UPDATE Payment
SET Payment_Status = 'Success'
WHERE Payment_ID = 'P102'
AND Payment_Status = 'Failed';

SELECT *
FROM Payment
WHERE Payment_Status = 'Pending';

SELECT *
FROM Payment
WHERE Order_ID = (
    SELECT MIN(Order_ID)
    FROM Orders
);