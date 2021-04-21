CREATE TABLE MarketUser (
	username varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	total_money_made int DEFAULT 0,
	total_money_spent int DEFAULT 0,
	PRIMARY KEY (username)
);

CREATE TABLE Item (
	ID int NOT NULL,
	name varchar(255),
	price float,
	remaining_quantity int,
	seller varchar(255),
	PRIMARY KEY (ID),
	FOREIGN KEY (seller) REFERENCES MarketUser(username)
);

CREATE TABLE Purchase (
	ID int NOT NULL,
	buyer varchar(255),
	seller varchar(255),
	item int,
	date date,
	PRIMARY KEY (ID),
	FOREIGN KEY (buyer) REFERENCES MarketUser(username),
	FOREIGN KEY (seller) REFERENCES MarketUser(username),
	FOREIGN KEY (item) REFERENCES Item(ID)
);