INSERT INTO Admin (Name, Age, Email, Password, Phone, Shift_start, Shift_end) VALUES 
('Ahmed Ali', 45, 'ahmed.ali@example.com', 'password123', '+201234567890', '08:00', '16:00'),
('Sara Nabil', 34, 'sara.nabil@example.com', 'password123', '+201234567891', '09:00', '17:00'),
('Hassan Saad', 39, 'hassan.saad@example.com', 'password123', '+201234567892', '10:00', '18:00'),
('Mona Adel', 40, 'mona.adel@example.com', 'password123', '+201234567893', '08:00', '16:00');




INSERT INTO ZoneManagement ( Name, Address) VALUES 
('Cairo', '123 Cairo St, Cairo, Egypt'),
('Alexandria', '456 Alexandria St, Alexandria, Egypt'),
('Giza', '789 Giza St, Giza, Egypt');

INSERT INTO Driver ( Name, Age, Phone, Availability, Email, Password, Shift_start, Shift_end ) VALUES 
( 'Ahmed Hassan', 35, '+201000000001', 'Available', 'ahmed.hassan@example.com', 'password123', '08:00', '17:00'),
( 'Mohamed Ali', 40, '+201000000002', 'Available', 'mohamed.ali@example.com', 'password123', '09:00', '18:00'),
( 'Omar Youssef', 29, '+201000000003', 'Unavailable', 'omar.youssef@example.com', 'password123', '10:00', '19:00' ),
( 'Sara Ibrahim', 32, '+201000000004', 'Available', 'sara.ibrahim@example.com', 'password123', '08:00', '17:00' ),
( 'Laila Tamer', 27, '+201000000005', 'Unavailable', 'laila.tamer@example.com', 'password123', '09:00', '18:00');



INSERT INTO DriverFunction (Driver_ID, [Function]) VALUES
(1, 'Delivery'),
(2, 'Pickup'),
(3, 'return'),
(4, 'Delivery'),
(5, 'Pickup');

INSERT INTO Sender ( Name, Phone, Email, Address, Password, Zone) VALUES 
( 'Ahmed Ali', '+201234567890', 'ahmed.ali@example.com', '123 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Sara Youssef', '+201234567891', 'sara.youssef@example.com', '456 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Mohamed Samir', '+201234567892', 'mohamed.samir@example.com', '789 Sender St, Giza, Egypt', 'password123', 'Giza'),
( 'Nora Hassan', '+201234567893', 'nora.hassan@example.com', '012 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Yasser Nabil', '+201234567894', 'yasser.nabil@example.com', '345 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Mona Salah', '+201234567895', 'mona.salah@example.com', '678 Sender St, Giza, Egypt', 'password123', 'Giza'),
( 'Ali Tarek', '+201234567896', 'ali.tarek@example.com', '901 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Laila Ahmed', '+201234567897', 'laila.ahmed@example.com', '234 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Karim Hany', '+201234567898', 'karim.hany@example.com', '567 Sender St, Giza, Egypt', 'password123', 'Giza'),
('Heba Khaled', '+201234567899', 'heba.khaled@example.com', '890 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Amira Ali', '+201234567900', 'amira.ali@example.com', '123 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Omar Samir', '+201234567901', 'omar.samir@example.com', '456 Sender St, Giza, Egypt', 'password123', 'Giza'),
( 'Nadia Hassan', '+201234567902', 'nadia.hassan@example.com', '789 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Rania Youssef', '+201234567903', 'rania.youssef@example.com', '012 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Tamer Nabil', '+201234567904', 'tamer.nabil@example.com', '345 Sender St, Giza, Egypt', 'password123', 'Giza'),
( 'Aya Salah', '+201234567905', 'aya.salah@example.com', '678 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Hassan Ali', '+201234567906', 'hassan.ali@example.com', '901 Sender St, Alexandria, Egypt', 'password123', 'Alexandria'),
( 'Mariam Youssef', '+201234567907', 'mariam.youssef@example.com', '234 Sender St, Giza, Egypt', 'password123', 'Giza'),
( 'Mohamed Tarek', '+201234567908', 'mohamed.tarek@example.com', '567 Sender St, Cairo, Egypt', 'password123', 'Cairo'),
( 'Khaled Samir', '+201234567909', 'khaled.samir@example.com', '890 Sender St, Alexandria, Egypt', 'password123', 'Alexandria');

INSERT INTO Receiver ( Name, Phone, Email, Address, Zone) VALUES 
('Mariam Salah', '+201234567985', 'mariam.salah@example.com', '321 Receiver St, Cairo, Egypt','Cairo'),
( 'Yasser Mostafa', '+201234567986', 'yasser.mostafa@example.com', '654 Receiver St, Alexandria, Egypt', 'Alexandria'),
( 'Rana Hany', '+201234567987', 'rana.hany@example.com', '987 Receiver St, Giza, Egypt', 'Giza'),
( 'Amr Ali', '+201234567988', 'amr.ali@example.com', '210 Receiver St, Cairo, Egypt','Cairo'),
( 'Sara Youssef', '+201234567989', 'sara.youssef@example.com', '321 Receiver St, Alexandria, Egypt', 'Alexandria'),
( 'Khaled Nabil', '+201234567990', 'khaled.nabil@example.com', '432 Receiver St, Giza, Egypt',  'Giza'),
( 'Nadia Tamer', '+201234567991', 'nadia.tamer@example.com', '543 Receiver St, Cairo, Egypt',  'Cairo'),
( 'Hassan Adel', '+201234567992', 'hassan.adel@example.com', '654 Receiver St, Alexandria, Egypt',  'Alexandria'),
( 'Aya Hany', '+201234567993', 'aya.hany@example.com', '765 Receiver St, Giza, Egypt',  'Giza'),
( 'Mohamed Samir', '+201234567994', 'mohamed.samir@example.com', '876 Receiver St, Cairo, Egypt',  'Cairo'),
('Laila Yasser', '+201234567995', 'laila.yasser@example.com', '987 Receiver St, Alexandria, Egypt', 'Alexandria'),
('Nour Mohamed', '+201234567996', 'nour.mohamed@example.com', '210 Receiver St, Giza, Egypt',  'Giza'),
( 'Mona Khaled', '+201234567997', 'mona.khaled@example.com', '321 Receiver St, Cairo, Egypt',  'Cairo'),
( 'Hany Tarek', '+201234567998', 'hany.tarek@example.com', '432 Receiver St, Alexandria, Egypt',  'Alexandria'),
( 'Amira Youssef', '+201234567999', 'amira.youssef@example.com', '543 Receiver St, Giza, Egypt',  'Giza'),
( 'Tarek Amr', '+201234568000', 'tarek.amr@example.com', '654 Receiver St, Cairo, Egypt',  'Cairo'),
( 'Rania Nabil', '+201234568001', 'rania.nabil@example.com', '765 Receiver St, Alexandria, Egypt',  'Alexandria'),
( 'Maha Hassan', '+201234568002', 'maha.hassan@example.com', '876 Receiver St, Giza, Egypt', 'Giza'),
( 'Heba Yasser', '+201234568003', 'heba.yasser@example.com', '987 Receiver St, Cairo, Egypt',  'Cairo'),
( 'Karim Mohamed', '+201234568004', 'karim.mohamed@example.com', '210 Receiver St, Alexandria, Egypt',  'Alexandria');

INSERT INTO Vehicle (Plate_No, Model, Type, Year, Color, Cost, Capacity, Driver_ID)VALUES 
('EG1234', 'Toyota Hilux', 'Truck', 2020, 'White', 20000.00, 2, 1),
('EG5678', 'Hyundai H1', 'Van', 2019, 'Silver', 18000.00, 12, 2),
('EG9101', 'Chevrolet Aveo', 'Car', 2021, 'Red', 15000.00, 5, 3),
('EG1121', 'Ford Transit', 'Van', 2018, 'Blue', 22000.00, 15, 4),
('EG3141', 'Isuzu NPR', 'Truck', 2022, 'Black', 25000.00, 3, 5);




INSERT INTO Warehouse (Name, Address, Shift, Zone) VALUES
('Warehouse A', '123 Main Street, Cairo, Egypt', 'Day', 'Cairo'),
('Warehouse B', '456 Elm Street, Alexandria, Egypt', 'Night', 'Alexandria'),
('Warehouse C', '789 Oak Street, Giza, Egypt', 'Day', 'Giza');


INSERT INTO Feature (Name, Description) VALUES
('cairo207', 'Freezing, Automation'),
('GAlexandria109', 'Automation, Anti-breakage care'),
('Giza287 ', 'Freezing, Automation, Anti-breakage care');



INSERT INTO Warehouse_feature (Warehouse_ID, Feature_Name) VALUES
(1, 'cairo207'),
(2, 'GAlexandria109'),
(3, 'Giza287');


INSERT INTO [Order] (Date, Status, Workflow, Requirements, Shipment_method, Payment_method, SenderID, ReceiverID, WarehouseID, DriverID)
VALUES
('2024-02-20 10:00:00', 'Pending', 'Standard', 'None', 'Air', 'Credit Card', 13, 14, 3, NULL),
('2024-02-21 11:00:00', 'Pending', 'In warehouse', 'Fragile', 'Ground', 'Cash on Delivery', 14, 15, 1, NULL),
('2024-02-22 12:00:00', 'Pending', 'Return', 'None', 'Sea', 'Credit Card', 15, 16, 2, NULL),
('2024-02-23 13:00:00', 'Pending', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 16, 17, 3, NULL),
('2024-02-24 14:00:00', 'Pending', 'In warehouse', 'Fragile', 'Air', 'Cash on Delivery', 17, 18, 1, NULL),
('2024-01-01 10:00:00', 'Pending', 'Standard', 'None', 'Air', 'Credit Card', 1, 2, 1, 1),
('2024-01-02 11:00:00', 'Processing', ' In warehouse ', 'Fragile', 'Ground', 'Cash on Delivery', 2, 3, 2, 2),
('2024-01-03 12:00:00', 'Shipped', 'Standard', 'None', 'Sea', 'Credit Card', 3, 4, 3, 3),
('2024-01-04 13:00:00', 'Delivered', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 4, 5, 1, 4),
('2024-01-05 14:00:00', 'Pending', 'return', 'Fragile', 'Air', 'Cash on Delivery', 5, 6, 2, 5),
('2024-01-06 15:00:00', 'Processing', 'Standard', 'None', 'Sea', 'Credit Card', 6, 7, 3, 1),
('2024-01-07 16:00:00', 'Shipped', ' In warehouse ', 'Refrigerated', 'Ground', 'Cash on Delivery', 7, 8, 1, 2),
('2024-01-08 17:00:00', 'Delivered', 'Standard', 'Fragile', 'Air', 'Credit Card', 8, 9, 2, 3),
('2024-01-09 18:00:00', 'Pending', ' In warehouse ', 'None', 'Sea', 'Cash on Delivery', 9, 10, 3, 4),
('2024-01-10 19:00:00', 'Processing', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 10, 11, 1, 5),
('2024-01-11 10:00:00', 'Shipped', 'return', 'Fragile', 'Air', 'Cash on Delivery', 11, 12, 2, 1),
('2024-01-12 11:00:00', 'Delivered', 'Standard', 'None', 'Sea', 'Credit Card', 12, 13, 3, 2),
('2024-01-13 12:00:00', 'Pending', 'return', 'Refrigerated', 'Ground', 'Cash on Delivery', 13, 14, 1, 3),
('2024-01-14 13:00:00', 'Processing', 'Standard', 'Fragile', 'Air', 'Credit Card', 14, 15, 2, 4),
('2024-01-15 14:00:00', 'Shipped', ' In warehouse ', 'None', 'Sea', 'Cash on Delivery', 15, 16, 3, 5),
('2024-01-16 15:00:00', 'Delivered', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 16, 17, 1, 1),
('2024-01-17 16:00:00', 'Pending', ' In warehouse ', 'Fragile', 'Air', 'Cash on Delivery', 17, 18, 2, 2),
('2024-01-18 17:00:00', 'Processing', 'Standard', 'None', 'Sea', 'Credit Card', 18, 19, 3, 3),
('2024-01-19 18:00:00', 'Shipped', 'return', 'Refrigerated', 'Ground', 'Cash on Delivery', 19, 20, 1, 4),
('2024-01-20 19:00:00', 'Delivered', 'Standard', 'Fragile', 'Air', 'Credit Card', 1, 2, 2, 5),
('2024-01-21 10:00:00', 'Pending', 'Standard', 'None', 'Air', 'Credit Card', 2, 3, 3, 1),
('2024-01-22 11:00:00', 'Processing', ' In warehouse ', 'Fragile', 'Ground', 'Cash on Delivery', 3, 4, 1, 2),
('2024-01-23 12:00:00', 'Shipped', 'Standard', 'None', 'Sea', 'Credit Card', 4, 5, 2, 3),
('2024-01-24 13:00:00', 'Delivered', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 5, 6, 3, 4),
('2024-01-25 14:00:00', 'Pending', 'return', 'Fragile', 'Air', 'Cash on Delivery', 6, 7, 1, 5),
('2024-01-26 15:00:00', 'Processing', 'Standard', 'None', 'Sea', 'Credit Card', 7, 8, 2, 1),
('2024-01-27 16:00:00', 'Shipped', ' In warehouse ', 'Refrigerated', 'Ground', 'Cash on Delivery', 8, 9, 3, 2),
('2024-01-28 17:00:00', 'Delivered', 'Standard', 'Fragile', 'Air', 'Credit Card', 9, 10, 1, 3),
('2024-01-29 18:00:00', 'Pending', 'return', 'None', 'Sea', 'Cash on Delivery', 10, 11, 2, 4),
('2024-01-30 19:00:00', 'Processing', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 11, 12, 3, 5),
('2024-01-31 10:00:00', 'Shipped', ' In warehouse ', 'Fragile', 'Air', 'Cash on Delivery', 12, 13, 1, 1),
('2024-02-01 11:00:00', 'Delivered', 'Standard', 'None', 'Sea', 'Credit Card', 13, 14, 2, 2),
('2024-02-02 12:00:00', 'Pending', 'return', 'Refrigerated', 'Ground', 'Cash on Delivery', 14, 15, 3, 3),
('2024-02-03 13:00:00', 'Processing', 'Standard', 'Fragile', 'Air', 'Credit Card', 15, 16, 1, 4),
('2024-02-04 14:00:00', 'Shipped', ' In warehouse ', 'None', 'Sea', 'Cash on Delivery', 16, 17, 2, 5),
('2024-02-05 15:00:00', 'Delivered', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 17, 18, 3, 1),
('2024-02-06 16:00:00', 'Pending', 'return', 'Fragile', 'Air', 'Cash on Delivery', 18, 19, 1, 2),
('2024-02-07 17:00:00', 'Processing', 'Standard', 'None', 'Sea', 'Credit Card', 19, 20, 2, 3),
('2024-02-08 18:00:00', 'Shipped', ' In warehouse ', 'Refrigerated', 'Ground', 'Cash on Delivery', 1, 2, 3, 4),
('2024-02-09 19:00:00', 'Delivered', ' In warehouse ', 'Fragile', 'Air', 'Credit Card', 2, 3, 1, 5),
('2024-02-10 10:00:00', 'Pending', 'Standard', 'None', 'Air', 'Credit Card', 3, 4, 2, 1),
('2024-02-11 11:00:00', 'Processing', 'return', 'Fragile', 'Ground', 'Cash on Delivery', 4, 5, 3, 2),
('2024-02-12 12:00:00', 'Shipped', 'Standard', 'None', 'Sea', 'Credit Card', 5, 6, 1, 3),
('2024-02-13 13:00:00', 'Delivered', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 6, 7, 2, 4),
('2024-02-14 14:00:00', 'Pending', ' In warehouse ', 'Fragile', 'Air', 'Cash on Delivery', 7, 8, 3, 5),
('2024-02-15 15:00:00', 'Processing', 'Standard', 'None', 'Sea', 'Credit Card', 8, 9, 1, 1),
('2024-02-16 16:00:00', 'Shipped', ' In warehouse ', 'Refrigerated', 'Ground', 'Cash on Delivery', 9, 10, 2, 2),
('2024-02-17 17:00:00', 'Delivered', 'Standard', 'Fragile', 'Air', 'Credit Card', 10, 11, 3, 3),
('2024-02-18 18:00:00', 'Pending', 'Expedited', 'None', 'Sea', 'Cash on Delivery', 11, 12, 1, 4),
('2024-02-19 19:00:00', 'Processing', 'Standard', 'Refrigerated', 'Ground', 'Credit Card', 12, 13, 2, 5);


INSERT INTO PackageDetails (Order_ID, Name, Length, Height, Width, Weight)
VALUES
(1, 'Package 1', 10.5, 15.2, 20.3, 5.0),
(2, 'Package 2', 12.0, 17.5, 22.1, 6.5),
(3, 'Package 3', 8.0, 13.0, 18.0, 4.0),
(4, 'Package 4', 9.5, 14.5, 19.0, 5.5),
(5, 'Package 5', 11.0, 16.0, 21.0, 6.0),
(6, 'Package 6', 13.0, 18.0, 23.0, 7.0),
(7, 'Package 7', 14.5, 19.5, 24.5, 8.0),
(8, 'Package 8', 10.0, 15.0, 20.0, 5.5),
(9, 'Package 9', 12.5, 17.5, 22.5, 6.5),
(10, 'Package 10', 9.0, 14.0, 19.0, 5.0),
(11, 'Package 11', 11.5, 16.5, 21.5, 6.0),
(12, 'Package 12', 10.5, 15.2, 20.3, 5.0),
(13, 'Package 13', 12.0, 17.5, 22.1, 6.5),
(14, 'Package 14', 8.0, 13.0, 18.0, 4.0),
(15, 'Package 15', 9.5, 14.5, 19.0, 5.5),
(16, 'Package 16', 11.0, 16.0, 21.0, 6.0),
(17, 'Package 17', 13.0, 18.0, 23.0, 7.0),
(18, 'Package 18', 14.5, 19.5, 24.5, 8.0),
(19, 'Package 19', 10.0, 15.0, 20.0, 5.5),
(20, 'Package 20', 12.5, 17.5, 22.5, 6.5),
(21, 'Package 21', 9.0, 14.0, 19.0, 5.0),
(22, 'Package 22', 11.5, 16.5, 21.5, 6.0),
(23, 'Package 23', 10.5, 15.2, 20.3, 5.0),
(24, 'Package 24', 12.0, 17.5, 22.1, 6.5),
(25, 'Package 25', 8.0, 13.0, 18.0, 4.0),
(26, 'Package 26', 9.5, 14.5, 19.0, 5.5),
(27, 'Package 27', 11.0, 16.0, 21.0, 6.0),
(28, 'Package 28', 13.0, 18.0, 23.0, 7.0),
(29, 'Package 29', 14.5, 19.5, 24.5, 8.0),
(30, 'Package 30', 10.0, 15.0, 20.0, 5.5),
(31, 'Package 31', 12.5, 17.5, 22.5, 6.5),
(32, 'Package 32', 9.0, 14.0, 19.0, 5.0),
(33, 'Package 33', 11.5, 16.5, 21.5, 6.0),
(34, 'Package 34', 10.5, 15.2, 20.3, 5.0),
(35, 'Package 35', 12.0, 17.5, 22.1, 6.5),
(36, 'Package 36', 8.0, 13.0, 18.0, 4.0),
(37, 'Package 37', 9.5, 14.5, 19.0, 5.5),
(38, 'Package 38', 11.0, 16.0, 21.0, 6.0),
(39, 'Package 39', 13.0, 18.0, 23.0, 7.0),
(40, 'Package 40', 14.5, 19.5, 24.5, 8.0),
(41, 'Package 41', 10.0, 15.0, 20.0, 5.5),
(42, 'Package 42', 12.5, 17.5, 22.5, 6.5),
(43, 'Package 43', 9.0, 14.0, 19.0, 5.0),
(44, 'Package 44', 11.5, 16.5, 21.5, 6.0),
(45, 'Package 45', 10.5, 15.2, 20.3, 5.0),
(46, 'Package 46', 12.0, 17.5, 22.1, 6.5),
(47, 'Package 47', 8.0, 13.0, 18.0, 4.0),
(48, 'Package 48', 9.5, 14.5, 19.0, 5.5),
(49, 'Package 49', 11.0, 16.0, 21.0, 6.0),
(50, 'Package 50', 13.0, 18.0, 23.0, 7.0);

INSERT INTO ComplainAndFeedback (Type, Sender_ID, Form, Receiver_ID, Order_ID, Admin_ID)VALUES
('Complaint', 1, 'Email', 2, 1, 1),
('Feedback', 2, 'Phone', 3, 15, 2),
('Contact us', 3, 'Form', 4, 20, 3),
('Feedback', 4, 'Email', 5, 4, 4),
('Complaint', 5, 'Phone', 6, 5, 3),
('Contact us', 6, 'Form', 7,50, 1),
('Complaint', 7, 'Email', 8, 7, 2),
('Feedback', 8, 'Phone', 9, 18, 3),
('Contact us', 9, 'Form', 10, 9, 4),
('Feedback', 10, 'Email', 11, 40, 1);


INSERT INTO Admin_manage_warehouse (Administrator_ID, Warehouse_ID)VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);


INSERT INTO Allowed_Vehicles (Zone_name, Plate_number)
VALUES
('Cairo', 'EG1234'),
('Cairo', 'EG5678'),
('Alexandria', 'EG9101'),
('Giza', 'EG1121'),
('Giza', 'EG3141');


INSERT INTO Driver_works_in_zone (Zone_name, Driver_ID)
VALUES
('Cairo', 1),
('Cairo', 2),
('Alexandria', 3),
('Giza', 4),
('Giza', 5);

INSERT INTO Monitor_Order (Administrator_ID, Order_ID)
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(3, 11), (3, 12), (3, 13), (3, 14), (3, 15),
(4, 16), (4, 17), (4, 18), (4, 19), (4, 20),
(1, 21), (1, 22), (1, 23), (1, 24), (1, 25),
(2, 26), (2, 27), (2, 28), (2, 29), (2, 30),
(3, 31), (3, 32), (3, 33), (3, 34), (3, 35),
(4, 36), (4, 37), (4, 38), (4, 39), (4, 40),
(1, 41), (1, 42), (1, 43), (1, 44), (1, 45),
(2, 46), (2, 47), (2, 48), (2, 49), (2, 50);