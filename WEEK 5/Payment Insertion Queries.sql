INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P101', Order_ID, '2026-10-20',
       'UPI', 'Success', 2500.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P102', Order_ID, '2026-10-21',
       'Credit Card', 'Failed', 4500.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P103', Order_ID, '2026-10-22',
       'Debit Card', 'Success', 3000.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P104', Order_ID, '2026-10-23',
       'Net Banking', 'Pending', 2000.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P105', Order_ID, '2026-10-24',
       'Cash on Delivery', 'Success', 1500.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
SELECT 'P106', Order_ID, '2026-10-25',
       'UPI', 'Failed', 1800.00
FROM Orders
WHERE Order_ID NOT IN (SELECT Order_ID FROM Payment)
ORDER BY Order_ID LIMIT 1;

SELECT * FROM Payment;

