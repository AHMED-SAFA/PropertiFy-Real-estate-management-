  +-----------------+         +------------------+         +---------------------+
  |     Admin       |         |      Client      |         |   PropertyDetails   |
  +-----------------+         +------------------+         +---------------------+
  | admin_id (PK)   |<------->| client_id (PK)   |<------->| property_id (PK)    |
  | username        |         | full_name        |         | address             |
  | password        |         | email            |         | type                |
  | full_name       |         | phone_number     |         | size                |
  | email           |         | budget           |         | price               |
  |                 |         +------------------+         | owner_name          |
  | phone_number    |                                      +---------------------+
  +-----------------+
         |                           |
         |                           |
         |                           |
         v                           v
+-------------------+    +-------------------+
|  FlatDetails      |    | TransactionDetails|
+-------------------+    +-------------------+
| flat_id (PK)      |    | transaction_id (PK)|
| property_id (FK)  |    | client_id (FK)     |
| floor_number      |    | flat_id (FK)       |
| num_bedrooms      |    | transaction_date   |
| num_bathrooms     |    | transaction_amount |
+-------------------+    +-------------------+
