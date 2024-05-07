
CREATE TABLE [Admin] (
    ID INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(255),
    Age INT,
    Shift_start TIME,
    Shift_end TIME
);

CREATE TABLE ZoneManagement (
    [Name] VARCHAR(255) PRIMARY KEY NOT NULL,
    [Address] VARCHAR(255),
    LocationFunction VARCHAR(255)
);

CREATE TABLE Driver (
    ID INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(255),
    Age INT,
    [Availability] VARCHAR(50),
    Shift_start TIME,
    Shift_end TIME,
    Shipment_Type VARCHAR(50),
    [Status] VARCHAR(50)
);

CREATE TABLE DriverFunction (
    Driver_ID INT,
    [Function] VARCHAR(255),
    FOREIGN KEY (Driver_ID) REFERENCES Driver(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (Driver_ID, [Function])
);

CREATE TABLE Sender (
    ID INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(255),
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(255),
    [Address] VARCHAR(255),
    [Zone] VARCHAR(255),
    FOREIGN KEY ([Zone]) REFERENCES ZoneManagement([Name])
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Receiver (
    ID INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255),
    [Address] VARCHAR(255),
    [Zone] VARCHAR(255),
    FOREIGN KEY ([Zone]) REFERENCES ZoneManagement([Name])
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Vehicle (
    Plate_No VARCHAR(20) PRIMARY KEY NOT NULL,
    Model VARCHAR(255),
    [Type] VARCHAR(50),
    [Year] INT,
    Color VARCHAR(50),
    Cost DECIMAL(10, 2),
    Capacity INT,
    Driver_ID INT,
    FOREIGN KEY (Driver_ID) REFERENCES Driver(ID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Warehouse (
	[ID] INT PRIMARY KEY NOT NULL ,
    [Name] VARCHAR(255) NOT NULL,
    [Function] VARCHAR(50),
    [Address] VARCHAR(255),
    [Shift] VARCHAR(50),
    [Zone] VARCHAR(255),
    FOREIGN KEY (Zone) REFERENCES ZoneManagement(Name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Feature (
  [Name] VARCHAR(255) PRIMARY KEY NOT NULL,
  [Description] VARCHAR(255)
);

CREATE TABLE Warehouse_feature (
  Warehouse_ID INT,
  Feature_Name VARCHAR(255),
  FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
  FOREIGN KEY (Feature_Name) REFERENCES Feature([Name])
        ON DELETE CASCADE
        ON UPDATE CASCADE,
  PRIMARY KEY (Warehouse_ID, Feature_Name)
);

CREATE TABLE [Order] (
    ID INT PRIMARY KEY NOT NULL,
    [Date] DATETIME,
    [Status] VARCHAR(255),
    Workflow VARCHAR(255),
    Requirements VARCHAR(255),
    Shipment_method VARCHAR(255),
    Payment_method VARCHAR(255),
    SenderID INT NOT NULL,
    ReceiverID INT NOT NULL,
    WarehouseID INT NOT NULL,
    DriverID INT NOT NULL,
	FOREIGN KEY (SenderID) REFERENCES Sender(ID),
    FOREIGN KEY (ReceiverID) REFERENCES Receiver(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID),
    FOREIGN KEY (DriverID) REFERENCES Driver(ID),
);


CREATE TABLE PackageDetails (
    Order_ID INT,
    [Name] VARCHAR(255) PRIMARY KEY NOT NULL,
    [Length] DECIMAL(10, 2),
    Height DECIMAL(10, 2),
    Width DECIMAL(10, 2),
    [Weight] DECIMAL(10, 2),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);



CREATE TABLE ComplainAndFeedback (
    ID INT PRIMARY KEY NOT NULL,
    [Type] VARCHAR(255),
    Sender_ID INT,
    Form VARCHAR(255),
    Receiver_ID INT,
    Order_ID INT,
    Admin_ID INT,
    FOREIGN KEY (Admin_ID) REFERENCES [Admin](ID),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID),
    FOREIGN KEY (Sender_ID) REFERENCES Sender(ID),
    FOREIGN KEY (Receiver_ID) REFERENCES Receiver(ID)
);

CREATE TABLE Admin_manage_warehouse (
   Administrator_ID INT,
   Warehouse_ID INT,
   FOREIGN KEY (Administrator_ID) REFERENCES [Admin](ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
   FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
   PRIMARY KEY (Administrator_ID, Warehouse_ID)
);

CREATE TABLE Allowed_Vehicles (
    Zone_name VARCHAR(255),
    Plate_number VARCHAR(20),
    FOREIGN KEY (Zone_name) REFERENCES ZoneManagement([Name]),
    FOREIGN KEY (Plate_number) REFERENCES Vehicle(Plate_No),
    PRIMARY KEY (Zone_name, Plate_number)
);

CREATE TABLE Driver_works_in_zone (
    Zone_name VARCHAR(255),
    driver_ID INT,
    FOREIGN KEY (Zone_name) REFERENCES ZoneManagement([Name]),
    FOREIGN KEY (driver_ID) REFERENCES Driver(ID),
    PRIMARY KEY (Zone_name, driver_ID)
);

CREATE TABLE Monitor_Order (
    Administrator_ID INT,
    Order_ID INT,
    FOREIGN KEY (Administrator_ID) REFERENCES [Admin](ID),
    FOREIGN KEY (Order_ID) REFERENCES "Order"(ID),
    PRIMARY KEY (Administrator_ID, Order_ID)
);

--------------------------------------------------------------------
-- Admin
INSERT INTO Admin 
VALUES(1, 'mohamed sherif', 30, '08:00:00', '16:00:00'),
(2, 'mohamed khaked', 35, '09:00:00', '17:00:00'),
(3, 'mohammed ali', 28, '10:00:00', '18:00:00'),
(4, 'ahmed almuhana', 33, '11:00:00', '19:00:00'),
(5, 'waleed mohamed', 40, '12:00:00', '20:00:00'),
(6, 'salah ahmed', 27, '13:00:00', '21:00:00'),
(7, 'mohamed gamal', 32, '14:00:00', '22:00:00'),
(8, 'sherif sayed', 29, '15:00:00', '23:00:00'),
(9, 'osman ahmed', 34, '16:00:00', '00:00:00'),
(10, 'shahd ahmed', 31, '17:00:00', '01:00:00');

-- ZoneManagement
INSERT INTO ZoneManagement 
VALUES('Zone A', '123 St', 'Storage'),
('Zone B', '456 St', 'Distribution'),
('Zone C', '789 St', 'Sorting'),
('Zone D', '101 St', 'Packaging'),
('Zone E', '202 St', 'Loading'),
('Zone F', '303 St', 'Dispatching'),
('Zone G', '404 St', 'Receiving'),
('Zone H', '505 St', 'Inventory'),
('Zone I', '606 St', 'Transportation'),
('Zone J', '707 St', 'Maintenance');

-- Driver
INSERT INTO Driver 
VALUES(1, 'Driver 1', 32, 'Available', '08:00:00', '16:00:00', 'Local', 'Active'),
(2, 'Driver 2', 29, 'Unavailable', '09:00:00', '17:00:00', 'International', 'Inactive'),
(3, 'Driver 3', 35, 'Available', '10:00:00', '18:00:00', 'Local', 'Active'),
(4, 'Driver 4', 28, 'Unavailable', '11:00:00', '19:00:00', 'International', 'Inactive'),
(5, 'Driver 5', 30, 'Available', '12:00:00', '20:00:00', 'Local', 'Active'),
(6, 'Driver 6', 33, 'Unavailable', '13:00:00', '21:00:00', 'International', 'Inactive'),
(7, 'Driver 7', 31, 'Available', '14:00:00', '22:00:00', 'Local', 'Active'),
(8, 'Driver 8', 34, 'Unavailable', '15:00:00', '23:00:00', 'International', 'Inactive'),
(9, 'Driver 9', 27, 'Available', '16:00:00', '00:00:00', 'Local', 'Active'),
(10, 'Driver 10', 36, 'Unavailable', '17:00:00', '01:00:00', 'International', 'Inactive');
-- DriverFunction
INSERT INTO DriverFunction (Driver_ID, [Function]) VALUES
(1, 'Transportation'),
(2, 'Distribution'),
(3, 'Transportation'),
(4, 'Distribution'),
(5, 'Transportation'),
(6, 'Distribution'),
(7, 'Transportation'),
(8, 'Distribution'),
(9, 'Transportation'),
(10, 'Distribution');

-- Sender
INSERT INTO Sender 
VALUES(1, 'Sender 1', '01234567890', 'Sender 1@gmail.com', '123 Pine St', 'Zone A'),
(2, 'Sender 2', '01234567891', 'Sender 2@gmail.com', '456 Oak St', 'Zone B'),
(3, 'Sender 3', '01234567892', 'Sender 3@gmail.com', '789 Maple St', 'Zone C'),
(4, 'Sender 4', '01234567893', 'Sender 4@gmail.com', '101 Elm St', 'Zone D'),
(5, 'Sender 5', '01234567894', 'Sender 5@gmail.com', '202 Cedar St', 'Zone E'),
(6, 'Sender 6', '01234567895', 'Sender 6@gmail.com', '303 Walnut St', 'Zone F'),
(7, 'Sender 7', '01234567896', 'Sender 7@gmail.com', '404 Cherry St', 'Zone G'),
(8, 'Sender 8', '01234567897', 'Sender 8@gmail.com', '505 Birch St', 'Zone H'),
(9, 'Sender 9', '01234567898', 'Sender 9@gmail.com', '606 Ash St', 'Zone I'),
(10, 'Sender 10', '01234567899', 'Sender 10@gmail.com', '707 Walnut St', 'Zone J');

-- Receiver
INSERT INTO Receiver
VALUES(1, 'Receiver 1', '01234567810', 'Receiver 1@gmail.com', '123 ine St', 'Zone A'),
(2, 'Receiver 2', '01234567811', 'Receiver 2@gmail.com', '456 ak St', 'Zone B'),
(3, 'Receiver 3', '01234567812', 'Receiver 3@gmail.com', '789 aple St', 'Zone C'),
(4, 'Receiver 4', '01234567813', 'Receiver 4@gmail.com', '101 lm St', 'Zone D'),
(5, 'Receiver 5', '01234567814', 'Receiver 5@gmail.com', '202 edar St', 'Zone E'),
(6, 'Receiver 6', '01234567815', 'Receiver 6@gmail.com', '303 alnut St', 'Zone F'),
(7, 'Receiver 7', '01234567816', 'Receiver 7@gmail.com', '404 herry St', 'Zone G'),
(8, 'Receiver 8', '01234567817', 'Receiver 8@gmail.com', '505 irch St', 'Zone H'),
(9, 'Receiver 9', '01234567818', 'Receiver 9@gmail.com', '606 sh St', 'Zone I'),
(10, 'Receiver 10', '01234567819', 'Receiver 10@gmail.com', '707 alnut St', 'Zone J');

-- Vehicle
INSERT INTO Vehicle 
VALUES('ABC123', 'Toyota Camry', 'Sedan', 2019, 'Black', 25000.00, 5, 1),
('DEF456', 'Ford F-150', 'Truck', 2020, 'White', 35000.00, 8, 3),
('GHI789', 'Honda Civic', 'Sedan', 2018, 'Red', 20000.00, 5, 5),
('JKL012', 'Chevrolet Silverado', 'Truck', 2021, 'Blue', 40000.00, 8, 7),
('MNO345', 'Hyundai Sonata', 'Sedan', 2020, 'Silver', 27000.00, 5, 9),
('PQR678', 'Toyota Tacoma', 'Truck', 2019, 'Gray', 38000.00, 8, 10),
('STU901', 'Nissan Altima', 'Sedan', 2017, 'Green', 22000.00, 5, 2),
('VWX234', 'GMC Sierra', 'Truck', 2022, 'Brown', 42000.00, 8, 4),
('YZA567', 'Ford Mustang', 'Coupe', 2020, 'Yellow', 30000.00, 4, 6),
('BCD890', 'Chevrolet Colorado', 'Truck', 2018, 'Orange', 36000.00, 8, 8);

-- Warehouse
INSERT INTO Warehouse
VALUES
(1, 'Warehouse 1', 'Storage', '123 Main St', 'Day', 'Zone A'),
(2, 'Warehouse 2', 'Distribution', '456 Elm St', 'Night', 'Zone B'),
(3, 'Warehouse 3', 'Sorting', '789 Oak St', 'Day', 'Zone C'),
(4, 'Warehouse 4', 'Packaging', '101 Pine St', 'Night', 'Zone D'),
(5, 'Warehouse 5', 'Loading', '202 Maple St', 'Day', 'Zone E'),
(6, 'Warehouse 6', 'Dispatching', '303 Cedar St', 'Night', 'Zone F'),
(7, 'Warehouse 7', 'Receiving', '404 Walnut St', 'Day', 'Zone G'),
(8, 'Warehouse 8', 'Inventory', '505 Birch St', 'Night', 'Zone H'),
(9, 'Warehouse 9', 'Transportation', '606 Ash St', 'Day', 'Zone I'),
(10, 'Warehouse 10', 'Maintenance', '707 Cherry St', 'Night', 'Zone J');

-- Feature
INSERT INTO Feature
VALUES('Temperature Control', 'Maintains temperature for sensitive items'),
('Security Cameras', '24/7 surveillance for added security'),
('Forklifts', 'For easy movement of heavy items'),
('Pallet Racking', 'Efficient storage solution'),
('Loading Docks', 'Facilitates easy loading and unloading'),
('Alarm System', 'Alerts for unauthorized access'),
('Inventory Management System', 'Tracks inventory in real-time'),
('Automated Sorting', 'Speeds up the sorting process'),
('GPS Tracking', 'Tracks location of vehicles in real-time'),
('Fire Suppression System', 'Prevents fire incidents');

-- Warehouse_feature
INSERT INTO Warehouse_feature 
VALUES(1, 'Temperature Control'),
(2, 'Security Cameras'),
(3, 'Forklifts'),
(4, 'Pallet Racking'),
(5, 'Loading Docks'),
(6, 'Alarm System'),
(7, 'Inventory Management System'),
(8, 'Automated Sorting'),
(9, 'GPS Tracking'),
(10, 'Fire Suppression System');

-- Order
INSERT INTO [Order] (ID, [Date], [Status], Workflow, Requirements, Shipment_method, Payment_method, SenderID, ReceiverID, WarehouseID, DriverID) VALUES
(1, '2024-05-06 09:00:00', 'Pending', 'Standard', 'Fragile items', 'Express', 'Credit Card', 1, 1, 1, 1),
(2, '2024-05-07 10:00:00', 'Delivered', 'Express', 'Urgent delivery', 'Next Day Air', 'Cash on Delivery', 2, 2, 2, 2),
(3, '2024-05-08 11:00:00', 'Pending', 'Standard', 'Bulk items', 'Ground', 'Bank Transfer', 3, 3, 3, 3),
(4, '2024-05-09 12:00:00', 'Delivered', 'Express', 'Perishable goods', 'Same Day', 'PayPal', 4, 4, 4, 4),
(5, '2024-05-10 13:00:00', 'Pending', 'Standard', 'Sensitive documents', 'Air Freight', 'Credit Card', 5, 5, 5, 5),
(6, '2024-05-11 14:00:00', 'Delivered', 'Express', 'Valuable items', 'Overnight', 'Cash on Delivery', 6, 6, 6, 6),
(7, '2024-05-12 15:00:00', 'Pending', 'Standard', 'Electronic devices', 'Ground', 'Bank Transfer', 7, 7, 7, 7),
(8, '2024-05-13 16:00:00', 'Delivered', 'Express', 'Fragile items', 'Next Day Air', 'PayPal', 8, 8, 8, 8),
(9, '2024-05-14 17:00:00', 'Pending', 'Standard', 'Heavy machinery', 'Air Freight', 'Credit Card', 9, 9, 9, 9),
(10, '2024-05-15 18:00:00', 'Delivered', 'Express', 'Perishable goods', 'Same Day', 'Cash on Delivery', 10, 10, 10, 10);

-- PackageDetails
INSERT INTO PackageDetails
VALUES(1, 'Package 1', 10.5, 8.2, 6.4, 5.7),
(2, 'Package 2', 15.3, 12.6, 9.8, 8.4),
(3, 'Package 3', 20.1, 18.4, 15.7, 12.3),
(4, 'Package 4', 25.8, 22.7, 20.5, 17.9),
(5, 'Package 5', 30.6, 28.9, 25.3, 23.6),
(6, 'Package 6', 35.4, 33.2, 30.1, 30.2),
(7, 'Package 7', 40.2, 37.5, 35.0, 38.8),
(8, 'Package 8', 45.0, 41.8, 40.9, 47.5),
(9, 'Package 9', 50.8, 46.1, 46.7, 57.3),
(10, 'Package 10', 55.6, 50.4, 53.4, 68.9);

-- ComplainAndFeedback
INSERT INTO ComplainAndFeedback
VALUES(1, 'Complaint', 1, 'Late delivery', 1, 1, 1),
(2, 'Feedback', 2, 'Excellent service', 2, 2, 2),
(3, 'Complaint', 3, 'Damaged package', 3, 3, 3),
(4, 'Feedback', 4, 'Polite driver', 4, 4, 4),
(5, 'Complaint', 5, 'Lost item', 5, 5, 5),
(6, 'Feedback', 6, 'Fast delivery', 6, 6, 6),
(7, 'Complaint', 7, 'Wrong item received', 7, 7, 7),
(8, 'Feedback', 8, 'Helpful customer service', 8, 8, 8),
(9, 'Complaint', 9, 'Poor packaging', 9, 9, 9),
(10, 'Feedback', 10, 'Professional driver', 10, 10, 10);

-- Admin_manage_warehouse
INSERT INTO Admin_manage_warehouse
VALUES(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10 ,10);

-- Allowed_Vehicles
INSERT INTO Allowed_Vehicles
VALUES('Zone A', 'ABC123'),
('Zone B', 'DEF456'),
('Zone C', 'GHI789'),
('Zone D', 'JKL012'),
('Zone E', 'MNO345'),
('Zone F', 'PQR678'),
('Zone G', 'STU901'),
('Zone H', 'VWX234'),
('Zone I', 'YZA567'),
('Zone J', 'BCD890');

-- Driver_works_in_zone
INSERT INTO Driver_works_in_zone
VALUES('Zone A', 1),
('Zone B', 2),
('Zone C', 3),
('Zone D', 4),
('Zone E', 5),
('Zone F', 6),
('Zone G', 7),
('Zone H', 8),
('Zone I', 9),
('Zone J', 10);

-- Monitor_Order
INSERT INTO Monitor_Order
VALUES(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

select * from Monitor_Order;
select * from Admin;
select * from Admin_manage_warehouse;
select * from Allowed_Vehicles;
select * from ComplainAndFeedback;
select * from Driver;
select * from Driver_works_in_zone;
select * from DriverFunction;
select * from Feature;
select * from [Order] ;
select * from Sender;
select * from Receiver;
select * from Warehouse;
select * from Warehouse_feature;
select * from ZoneManagement;
select * from Vehicle;
select * from PackageDetails;
