CREATE TABLE Admin (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(30) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Shift_start TIME,
    Shift_end TIME
);




CREATE TABLE ZoneManagement (
    Name VARCHAR(50) PRIMARY KEY NOT NULL,
    Address VARCHAR(255)
);


CREATE TABLE Driver (
    ID INT IDENTITY(1,1)  PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Phone VARCHAR(20) NOT NULL,
    Availability VARCHAR(50),
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(30) NOT NULL,
    Shift_start TIME,
    Shift_end TIME
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
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(255),
    Address VARCHAR(255),
    Password VARCHAR(30) NOT NULL,
    Zone VARCHAR(50),
    FOREIGN KEY (Zone) REFERENCES ZoneManagement(Name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Receiver (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    Zone VARCHAR(50),
    FOREIGN KEY (Zone) REFERENCES ZoneManagement(Name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Vehicle (
    Plate_No VARCHAR(20) PRIMARY KEY NOT NULL,
    Model VARCHAR(255),
    Type VARCHAR(50),
    Year INT,
    Color VARCHAR(50),
    Cost DECIMAL(10, 2),
    Capacity INT,
    Driver_ID INT,
    FOREIGN KEY (Driver_ID) REFERENCES Driver(ID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);



CREATE TABLE Warehouse (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Shift VARCHAR(50),
    Zone VARCHAR(50),
    FOREIGN KEY (Zone) REFERENCES ZoneManagement(Name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


CREATE TABLE Feature (
    Name VARCHAR(255) PRIMARY KEY NOT NULL,
    Description VARCHAR(255)
);


CREATE TABLE Warehouse_feature (
    Warehouse_ID INT,
    Feature_Name VARCHAR(255),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Feature_Name) REFERENCES Feature(Name)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (Warehouse_ID, Feature_Name)
);


CREATE TABLE [Order] (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Date DATETIME,
    Status VARCHAR(255),
    Workflow VARCHAR(255),
    Requirements VARCHAR(255),
    Shipment_method VARCHAR(255),
    Payment_method VARCHAR(255),
    SenderID INT NOT NULL,
    ReceiverID INT NOT NULL,
    WarehouseID INT NOT NULL,
    DriverID INT NULL,
    FOREIGN KEY (SenderID) REFERENCES Sender(ID),
    FOREIGN KEY (ReceiverID) REFERENCES Receiver(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID),
    FOREIGN KEY (DriverID) REFERENCES Driver(ID)
);


CREATE TABLE PackageDetails (
    Order_ID INT,
    Name VARCHAR(255) PRIMARY KEY NOT NULL,
    Length DECIMAL(10, 2),
    Height DECIMAL(10, 2),
    Width DECIMAL(10, 2),
    Weight DECIMAL(10, 2),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE ComplainAndFeedback (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Type VARCHAR(255),
    Sender_ID INT,
    Form VARCHAR(255),
    Receiver_ID INT,
    Order_ID INT,
    Admin_ID INT,
    FOREIGN KEY (Admin_ID) REFERENCES Admin(ID),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID),
    FOREIGN KEY (Sender_ID) REFERENCES Sender(ID),
    FOREIGN KEY (Receiver_ID) REFERENCES Receiver(ID)
);


CREATE TABLE Admin_manage_warehouse (
    Administrator_ID INT,
    Warehouse_ID INT,
    FOREIGN KEY (Administrator_ID) REFERENCES Admin(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (Administrator_ID, Warehouse_ID)
);


CREATE TABLE Allowed_Vehicles (
    Zone_name VARCHAR(50),
    Plate_number VARCHAR(20),
    FOREIGN KEY (Zone_name) REFERENCES ZoneManagement(Name),
    FOREIGN KEY (Plate_number) REFERENCES Vehicle(Plate_No),
    PRIMARY KEY (Zone_name, Plate_number)
);
CREATE TABLE Driver_works_in_zone (
    Zone_name VARCHAR(50),
    Driver_ID INT,
    FOREIGN KEY (Zone_name) REFERENCES ZoneManagement(Name),
    FOREIGN KEY (Driver_ID) REFERENCES Driver(ID),
    PRIMARY KEY (Zone_name, Driver_ID)
);

CREATE TABLE Monitor_Order (
    Administrator_ID INT,
    Order_ID INT,
    FOREIGN KEY (Administrator_ID) REFERENCES Admin(ID),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID),
    PRIMARY KEY (Administrator_ID, Order_ID)
);