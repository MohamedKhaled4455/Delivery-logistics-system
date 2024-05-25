
Select * from Admin;
SELECT COUNT(*) 
FROM Driver
WHERE Availability = 'Available';

-------------------------------------------
SELECT COUNT(*) FROM Admin
-----------------------------------------
SELECT 
    o.ID AS OrderID,
    s.Name AS SenderName,
    d.Name AS DriverName,
    o.Date,
    o.Shipment_method,
    o.Status AS OrderStatus,
    o.Workflow
FROM 
    [Order] o
JOIN 
    Sender s ON o.SenderID = s.ID
JOIN 
    Driver d ON o.DriverID = d.ID;

----------------------------------------------



	SELECT 
    s.ID AS SenderID,
    s.Name AS SenderName,
    s.Email AS SenderEmail,
    s.Address AS SenderAddress,
    COUNT(o.ID) AS NumOfOrders
FROM 
    Sender s
LEFT JOIN 
    [Order] o ON s.ID = o.SenderID
GROUP BY 
    s.ID, s.Name, s.Email, s.Address;

--------------------------------------------

	SELECT 
    d.ID AS DriverID,
    d.Name AS DriverName,
    v.Plate_No,
    d.Shift_start,
    d.Shift_end,
    d.Availability
FROM 
    Driver d
LEFT JOIN 
    Vehicle v ON d.ID = v.Driver_ID;
----------------------------------------------------------

	select Type, Plate_No, Cost, Year, Model from Vehicle

---------------------------------------------------------------
	select ID, Name, Age, Shift_start, Shift_end from Admin where ID = 2;

	----------------------------------------------------------------------
