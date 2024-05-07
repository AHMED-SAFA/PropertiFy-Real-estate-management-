
-- Admin Insertions

INSERT INTO Admin (admin_id, username, password, full_name, email, phone_number)
VALUES (1, 'sf', '12345', 'safa', 'sf@gmail;.com', '1234567890');
INSERT INTO Admin (admin_id, username, password, full_name, email, phone_number)
VALUES (2, 'sd', '123456', 'sad', 'sd@gmail.com', '1234567890');
INSERT INTO Admin (admin_id, username, password, full_name, email, phone_number)
VALUES (3, 'ds', '123', 'da', 'ds@gmail.com', '1234567890');
INSERT INTO Admin (admin_id, username, password, full_name, email, phone_number)
VALUES (4, 'sda', '1234', 'sda', 'sda@gmail.com', '1234567890');

--Property Details insertion

INSERT INTO PropertyDetails (property_id, address, type, property_size, price)
VALUES (1, '', 'south', '1500sqft', 5000000);
INSERT INTO PropertyDetails (property_id, address, type, property_size, price)
VALUES (2, '', 'north', '1000sqft', 3000000);
INSERT INTO PropertyDetails (property_id, address, type, property_size, price)
VALUES (3, '', 'west', '1600sqft', 7000000);
INSERT INTO PropertyDetails (property_id, address, type, property_size, price)
VALUES (4, '', 'east', '1200sqft', 400000);

--FlatDetails insertion

INSERT INTO FlatDetails (flat_id, property_id, floor_number, flat_owner, num_bedrooms, num_bathrooms)
VALUES (3, 1, 1, 'sd', 3, 3);
INSERT INTO FlatDetails (flat_id, property_id, floor_number, flat_owner, num_bedrooms, num_bathrooms)
VALUES (4, 2, 4, 'sf', 3, 2);
INSERT INTO FlatDetails (flat_id, property_id, floor_number, flat_owner, num_bedrooms, num_bathrooms)
VALUES (7, 3, 6, 'fs', 4, 3);
INSERT INTO FlatDetails (flat_id, property_id, floor_number, flat_owner, num_bedrooms, num_bathrooms)
VALUES (5, 4, 5, 'ds', 2, 2);

--Client Table insertion

INSERT INTO Client (client_id, full_name, email, phone_number, budget)
VALUES (1, 'sf', 'sf@gmail.com', '1234567890', 500000.00);
INSERT INTO Client (client_id, full_name, email, phone_number, budget)
VALUES (2, 'sd', 'sd@gmail.com', '1234567890', 800000.00);
INSERT INTO Client (client_id, full_name, email, phone_number, budget)
VALUES (3, 'ds', 'ds@gmail.com', '1234567890', 700000.00);
INSERT INTO Client (client_id, full_name, email, phone_number, budget)
VALUES (4, 'sda', 'sda@gmail.com', '1234567890', 150000.00);

--TransactionDetails insertion

INSERT INTO TransactionDetails (transaction_id, client_id, flat_id, transaction_date, transaction_amount)
VALUES (1, 1, 3, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 50000.00);
INSERT INTO TransactionDetails (transaction_id, client_id, flat_id, transaction_date, transaction_amount)
VALUES (4, 2, 4, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1500000.00);
INSERT INTO TransactionDetails (transaction_id, client_id, flat_id, transaction_date, transaction_amount)
VALUES (8, 3, 7, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 10000.00);
INSERT INTO TransactionDetails (transaction_id, client_id, flat_id, transaction_date, transaction_amount)
VALUES (10, 4, 5, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 600000.00);