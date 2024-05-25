Select * from Driver;
select * from Warehouse;
select * from [Order];
select * from Sender;
select * from Receiver;

-- for current orders table
select [ID],[Date],[Shipment_method],[Payment_method],[Requirements],[Status] from [Order] where DriverID = 1 and [Status] = 'Pending';

-- for history orders table
select [ID],[Date],[Shipment_method],[Payment_method],[Requirements],[Status] from [Order] where DriverID = 1 and [Status] = 'Delivered';

-- for pending orders
-- require join
select [Order].[ID],[Order].[Requirements],[Order].[Date],[Order].WarehouseID, Sender.Zone as [Sender_Zone], Receiver.Zone as [Reciever_Zone]  from [Order] 
inner join Receiver on [Order].ReceiverID = Receiver.ID
inner join Sender on [Order].SenderID = Sender.ID;

select [Order].[ID],[Order].[Requirements],[Order].[Date],[Order].WarehouseID, Sender.Zone as [Sender Zone], Receiver.Zone as [Reciever Zone]  from [Order] 
inner join Receiver on [Order].ReceiverID = Receiver.ID
inner join Sender on [Order].SenderID = Sender.ID
WHERE DriverID is NULL and [Status] = 'Pending';


-- for Profile data
SELECT ID, Name, Email, Phone, Shift_start, Shift_end
FROM Driver Where ID = 1;

SELECT ID, Name, Email, Phone, Shift_start, Shift_end
FROM Driver Where ID = 1;

SELECT ID, Name, Email, Phone, Shift_start, Shift_end
FROM Driver Where ID = 1;

SELECT ID, Name, Email, Phone, Shift_start, Shift_end
FROM Driver Where ID = 1;


--for login data
SELECT ID
FROM Driver
WHERE Email = 'user_email' AND Password = 'user_password';

--for details page

select 
[Order].[ID],
[Order].[Date],
[Order].[Requirements],
[Order].[Shipment_method],
[Order].[Payment_method],
[Order].WarehouseID,
[Order].[Status],
[Order].[SenderID],
[Order].[ReceiverID],

Sender.Name as SenderName,
Sender.Phone as SenderPhone,
Sender.Email as SenderEmail,
Sender.Address as SenderAddress,

    Receiver.Name as ReceiverName,
    Receiver.Phone as ReceiverPhone,
    Receiver.Email as ReceiverEmail,
    Receiver.Address as ReceiverAddress

from [Order] 
inner join Receiver on [Order].ReceiverID = Receiver.ID
inner join Sender on [Order].SenderID = Sender.ID

Where [Order].[ID] = 1;