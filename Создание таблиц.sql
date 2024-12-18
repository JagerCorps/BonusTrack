create table cars (
id_vin INTEGER primary key,
brand VARCHAR(20),
model VARCHAR(50),
mileage INTEGER,
engine_power INTEGER,
transmission_id INTEGER,
body_type_id INTEGER,
manufacture_year INTEGER,
owners_count INTEGER,
price INTEGER,
status_id INTEGER,
client_id INTEGER
);

create table body_type (
body_type_id INTEGER primary key,
body_type VARCHAR(20)
);

create table transmission (
transmission_id INTEGER primary key,
transmission_type VARCHAR(20)
);

create table car_status (
car_status_id INTEGER primary key,
car_status VARCHAR(10)
);

create table transaction_type (
transaction_type_id INTEGER primary key,
transaction_type VARCHAR(20)
);

create table clients (
client_id INTEGER primary key,
client_name VARCHAR(30),
phone_number VARCHAR(20)
);

create table transactions (
transaction_id INTEGER primary key,
client_id INTEGER,
id_vin INTEGER,
price INTEGER,
transaction_type_id INTEGER,
transaction_date DATE,
description VARCHAR(255)
);