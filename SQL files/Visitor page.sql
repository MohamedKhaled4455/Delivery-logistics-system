--////////////// Visitor page Queries /////////////

SELECT 
	Email, 
	Password 
FROM Sender;

SELECT 
	Email,
	Password 
FROM Sender
WHERE Email = 'Sender 1@gmail.com';
-- when doing the backend part we will append this query into C# and remove the Sender Email
-- compare the email and password entered by user with valuse
---------------------------------------------------------------------------
INSERT INTO Sender (ID, Name, Phone, Email, Address, Password, Zone)
	VALUES(1, 'Sender 1', '01234567890', 'Sender 1@gmail.com', '213 St','1234567890', 'Giza')




