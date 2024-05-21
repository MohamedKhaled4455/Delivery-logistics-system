-- Admin
INSERT INTO Admin 
VALUES(1, 'mohamed sherif', 30, 'Admin 1@gmail.com','01122334455','1234567890', '08:00:00', '16:00:00'),
(2, 'mohamed khaked', 35, 'Admin 2@gmail.com','01222338455','1234567890','09:00:00', '17:00:00'),
(3, 'mohammed ali', 28, 'Admin 3@gmail.com',   '01222334555','1234567890','10:00:00','18:00:00'),
(4, 'ahmed almuhana', 33, 'Admin 4@gmail.com', '01222334465','1234567890','11:00:00', '19:00:00'),
(5, 'waleed mohamed', 40,'Admin 5@gmail.com',  '01222334458','1234567890','12:00:00','20:00:00'),
(6, 'salah ahmed', 27, 'Admin 6@gmail.com', '01222334454','1234567890','13:00:00','21:00:00'),
(7, 'mohamed gamal', 32,'Admin 7@gmail.com', '01222334456','1234567890','14:00:00', '22:00:00'),
(8, 'sherif sayed', 29, 'Admin 8@gmail.com', '01222334453','1234567890','15:00:00','23:00:00'),
(9, 'osman ahmed', 34,'Admin 9@gmail.com', '01222334452','1234567890','16:00:00', '00:00:00'),
(10, 'shahd ahmed', 31,'Admin 10@gmail.com','01222334451','1234567890','17:00:00', '01:00:00');

-- ZoneManagement
INSERT INTO ZoneManagement 
VALUES('Cairo', '123 St'),
('Giza', '456 St'),
('Alex', '789 St');


-- Driver
INSERT INTO Driver 
VALUES(1, 'Driver 1', 32, 'Available','Driver 1@gmail.com','01122334455','1234567890',  '08:00:00', '16:00:00', 'Local', 'Active'),
(2, 'Driver 2', 29, 'Unavailable', 'Driver 2@gmail.com','01122334455','1234567890', '09:00:00', '17:00:00', 'International', 'Inactive'),
(3, 'Driver 3', 35, 'Available','Driver 3@gmail.com','01122334455','1234567890',  '10:00:00', '18:00:00', 'Local', 'Active'),
(4, 'Driver 4', 28, 'Unavailable', 'Driver 4@gmail.com','01122334455','1234567890', '11:00:00', '19:00:00', 'International', 'Inactive'),
(5, 'Driver 5', 30, 'Available','Driver 5@gmail.com','01122334455','1234567890',  '12:00:00', '20:00:00', 'Local', 'Active'),
(6, 'Driver 6', 33, 'Unavailable', 'Driver 6@gmail.com','01122334455','1234567890', '13:00:00', '21:00:00', 'International', 'Inactive'),
(7, 'Driver 7', 31, 'Available','Driver 7@gmail.com','01122334455','1234567890',  '14:00:00', '22:00:00', 'Local', 'Active'),
(8, 'Driver 8', 34, 'Unavailable','Driver 8@gmail.com','01122334455','1234567890',  '15:00:00', '23:00:00', 'International', 'Inactive'),
(9, 'Driver 9', 27, 'Available', 'Driver 9@gmail.com','01122334455','1234567890', '16:00:00', '00:00:00', 'Local', 'Active'),
(10, 'Driver 10', 36, 'Unavailable', 'Driver 10@gmail.com','01122334455','1234567890', '17:00:00', '01:00:00', 'International', 'Inactive');
-- DriverFunction
INSERT INTO DriverFunction
VALUES(1, 'Transportation'),
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
VALUES(1, 'Sender 1', '01234567890', 'Sender 1@gmail.com', '213 St','1234567890', 'Giza'),
(2, 'Sender 2', '01234567891', 'Sender 2@gmail.com', '214 St','1234567890', 'Cairo'),
(3, 'Sender 3', '01234567892', 'Sender 3@gmail.com', '215 St','1234567890', 'Cairo'),
(4, 'Sender 4', '01234567893', 'Sender 4@gmail.com', '216 St','1234567890', 'Alex'),
(5, 'Sender 5', '01234567894', 'Sender 5@gmail.com', '217 St','1234567890', 'Giza'),
(6, 'Sender 6', '01234567895', 'Sender 6@gmail.com', '218 St','1234567890', 'Alex'),
(7, 'Sender 7', '01234567896', 'Sender 7@gmail.com', '219 St','1234567890', 'Alex'),
(8, 'Sender 8', '01234567897', 'Sender 8@gmail.com', '220 St','1234567890', 'Giza'),
(9, 'Sender 9', '01234567898', 'Sender 9@gmail.com', '221 St','1234567890', 'Cairo'),
(10, 'Sender 10', '01234567899', 'Sender 10@gmail.com', '222 St','1234567890', 'Cairo');

-- Receiver
INSERT INTO Receiver
VALUES(1, 'Receiver 1', '01234567810', 'Receiver 1@gmail.com', '310 St', 'Giza'),
(2, 'Receiver 2', '01234567811', 'Receiver 2@gmail.com', '311 St', 'Cairo'),
(3, 'Receiver 3', '01234567812', 'Receiver 3@gmail.com', '312 St', 'Cairo'),
(4, 'Receiver 4', '01234567813', 'Receiver 4@gmail.com', '314 St', 'Alex'),
(5, 'Receiver 5', '01234567814', 'Receiver 5@gmail.com', '315 St', 'Giza'),
(6, 'Receiver 6', '01234567815', 'Receiver 6@gmail.com', '316 St', 'Alex'),
(7, 'Receiver 7', '01234567816', 'Receiver 7@gmail.com', '317 St', 'Alex'),
(8, 'Receiver 8', '01234567817', 'Receiver 8@gmail.com', '318 St', 'Giza'),
(9, 'Receiver 9', '01234567818', 'Receiver 9@gmail.com', '319 St', 'Cairo'),
(10, 'Receiver 10', '01234567819', 'Receiver 10@gmail.com', '320 St', 'Cairo');

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
(1, 'Warehouse 1', '213 St', 'Day', 'Giza'),
(2, 'Warehouse 2', '214 St', 'Night', 'Cairo'),
(3, 'Warehouse 3', '215 St', 'Day', 'Cairo'),
(4, 'Warehouse 4', '216 St', 'Night', 'Alex'),
(5, 'Warehouse 5', '217 St', 'Day', 'Giza'),
(6, 'Warehouse 6', '218 St', 'Night', 'Alex'),
(7, 'Warehouse 7', '219 St', 'Day', 'Alex'),
(8, 'Warehouse 8', '220 St', 'Night', 'Giza'),
(9, 'Warehouse 9', '221 St', 'Day', 'Cairo'),
(10, 'Warehouse 10', '222 St', 'Night', 'Cairo');

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
VALUES('Giza', 'ABC123'),
('Cairo', 'DEF456'),
('Cairo', 'GHI789'),
('Alex', 'JKL012'),
('Giza', 'MNO345'),
('Alex', 'PQR678'),
('Alex', 'STU901'),
('Giza', 'VWX234'),
('Cairo', 'YZA567'),
('Cairo', 'BCD890');


-- Driver_works_in_zone
INSERT INTO Driver_works_in_zone
VALUES('Giza', 1),
('Cairo', 2),
('Cairo', 3),
('Alex',4),
('Giza', 5),
('Alex', 6),
('Alex', 7),
('Giza', 8),
('Cairo', 9),
('Cairo', 10);

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