/* Placing an order for bob to buy item with ID 2
VARS NEEDED:
PURCHASE ID
BUYER USERNAME
ITEM ID
*/

INSERT INTO Purchase (ID, buyer, item) VALUES
	(1, 'bob', 2);

UPDATE Item
SET remaining_quantity = remaining_quantity - 1
WHERE ID = 2;

UPDATE MarketUser
SET total_money_spent = total_money_spent + (SELECT price
FROM Item
WHERE ID = 2)
WHERE username = 'bob';


UPDATE MarketUser
SET total_money_made = total_money_made + (SELECT price
FROM Item
WHERE ID = 2)
WHERE username = (SELECT seller
FROM Item
WHERE ID = 2);