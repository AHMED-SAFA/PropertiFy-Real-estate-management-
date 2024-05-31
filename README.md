# PropertiFy - Real Estate Database Management

PropertiFy is a console-based MySQL database management project designed to streamline real estate operations. This project showcases various PL/SQL functionalities including functions, triggers, procedures, and cursors to efficiently manage real estate data. 

## Features

- **Add Admin**: Register new administrators to the system.
- **Add/Remove Client**: Manage client profiles by adding or removing clients.
- **Record Transaction**: Keep track of transactions related to property sales.
- **Add/Remove Flat**: Add new flats to the database or remove existing ones.
- **Flat Details**: Retrieve detailed information about available flats.
- **Buy Flat**: Process the purchase of a flat by a client.

## Database Structure

The project consists of several tables including:

- **Admins**: Stores admin user details.
- **Clients**: Stores client information.
- **Flats**: Stores information about available flats.
- **Transactions**: Records details of each transaction.

## PL/SQL Components

### Functions
- **GetFlatDetails(flat_id INT)**: Returns the details of a flat given its ID.

### Procedures
- **AddAdmin(admin_name VARCHAR(50), admin_email VARCHAR(50))**: Adds a new admin to the database.
- **AddClient(client_name VARCHAR(50), client_email VARCHAR(50))**: Adds a new client to the database.
- **RemoveClient(client_id INT)**: Removes a client from the database.
- **AddFlat(flat_details FLAT_TYPE)**: Adds a new flat with the given details.
- **RemoveFlat(flat_id INT)**: Removes a flat from the database.
- **BuyFlat(client_id INT, flat_id INT)**: Processes the purchase of a flat by a client.

### Triggers
- **BeforeInsertTransaction**: Ensures certain conditions are met before inserting a new transaction.
- **AfterDeleteClient**: Cleans up related data when a client is removed.

### Cursors
- **ClientCursor**: Iterates over the list of clients for batch operations.
- **FlatCursor**: Iterates over the list of flats for detailed processing.

## Installation

1. Clone the repository:
   ```sh
   https://github.com/AHMED-SAFA/PropertiFy-Real-estate-management-.git
