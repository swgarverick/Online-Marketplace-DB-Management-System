/* Get most recent order bob has placed */

SELECT *
FROM Purchase
WHERE date = (SELECT MAX(date)
FROM Purchase
WHERE buyer = 'bob');
