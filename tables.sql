create table TransactionDetails (
    transaction_id int primary key,
    client_id int,
    flat_id int,
    transaction_date DATE,
    transaction_amount decimal(15, 2),
    foreign  key (client_id) references Client(client_id),
    foreign  key (flat_id) references FlatDetails(flat_id)
);
create table Client (
    client_id int primary key,
    full_name varchar(100),
    email varchar(100),
    phone_number varchar(20),
    budget decimal(15, 2)
);
create table FlatDetails (
    flat_id int primary key,
    property_id int,
    floor_number int,
    flat_owner varchar(255),
    num_bedrooms int,
    num_bathrooms int,
    foreign  key (property_id) references PropertyDetails(property_id)
);
create table Admin (
    admin_id int primary key,
    username varchar(50),
    password varchar(50),
    full_name varchar(100),
    email varchar(100),
    phone_number varchar(20)
);
create table PropertyDetails (
    property_id int primary key,
    address varchar(255),
    type varchar(50),
    property_size varchar(255),
    price decimal(15, 2)
);