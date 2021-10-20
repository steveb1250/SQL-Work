INSERT INTO `employee` (`Employee_Id`, `firstname`, `lastname`, `position`, `PhoneNumber`) VALUES 
('001', 'John', 'Adams', 'Manager', '1234567890');
INSERT INTO `employee` (`Employee_Id`, `firstname`, `lastname`, `position`, `PhoneNumber`) VALUES 
('002', 'Amy', 'Rose', 'Front Desk', '1236540987');
INSERT INTO `employee` (`Employee_Id`, `firstname`, `lastname`, `position`, `PhoneNumber`) VALUES 
('003', 'Abe', 'Lincoln', 'Front Desk', '1235468790');
INSERT INTO `employee` (`Employee_Id`, `firstname`, `lastname`, `position`, `PhoneNumber`) VALUES 
('004', 'Ashley', 'Johnson', 'Cleaner', '1236457988');

INSERT INTO `rooms` (`Room_Id`) VALUES
('001');
INSERT INTO `rooms` (`Room_Id`) VALUES
('002');
INSERT INTO `rooms` (`Room_Id`) VALUES
('003');
INSERT INTO `rooms` (`Room_Id`) VALUES
('004');
INSERT INTO `rooms` (`Room_Id`) VALUES
('005');
INSERT INTO `rooms` (`Room_Id`) VALUES
('006');
INSERT INTO `rooms` (`Room_Id`) VALUES
('007');
INSERT INTO `rooms` (`Room_Id`) VALUES
('008');
INSERT INTO `rooms` (`Room_Id`) VALUES
('009');
INSERT INTO `rooms` (`Room_Id`) VALUES
('010');
INSERT INTO `rooms` (`Room_Id`) VALUES
('011');
INSERT INTO `rooms` (`Room_Id`) VALUES
('012');
INSERT INTO `rooms` (`Room_Id`) VALUES
('013');
INSERT INTO `rooms` (`Room_Id`) VALUES
('014');
INSERT INTO `rooms` (`Room_Id`) VALUES
('015');
INSERT INTO `rooms` (`Room_Id`) VALUES
('016');
INSERT INTO `rooms` (`Room_Id`) VALUES
('017');
INSERT INTO `rooms` (`Room_Id`) VALUES
('018');
INSERT INTO `rooms` (`Room_Id`) VALUES
('019');
INSERT INTO `rooms` (`Room_Id`) VALUES
('020');


INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('001', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('002', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('003', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('004', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('005', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('006', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('007', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('008', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('009', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('010', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('011', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('012', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('013', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('014', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('015', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('016', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('017', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('018', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('019', '4');
INSERT INTO `cleans` (`Room_Id`, `Employee_Id`) VALUES 
('020', '4');

INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0001', 'Steven', 'Moody', '9785947692');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0002', 'John', 'Clause', '1729574839');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0003', 'Amy', 'Meserve', '1058677639');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0004', 'Bo', 'Hatfield', '6175937823');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0005', 'Thomas', 'Schmidt', '0987654321');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0006', 'Adam', 'Joseph', '3859265743');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0007', 'Jen', 'Adams', '2885774493');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0008', 'Kevin', 'Smith', '9657881432');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('0009', 'Dan', 'Majoane', '6775849399');
INSERT INTO `customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES 
('00010', 'Sarah', 'Johsnon', '9789665748');

INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0001', '125.50', '01012020', '01032020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0002', '150.00', '01032020', '01052020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0003', '75.00', '01052020', '01072020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0004', '200.00', '01092020', '01112020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0005', '175.50', '01112020', '01132020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0006', '175.50', '01132020', '01152020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0007', '250.00', '01152020', '01172020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0008', '125.50', '01172020', '01192020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0009', '100.00', '01192020', '01212020');
INSERT INTO `invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES 
('0010', '225.00', '01212020', '01232020');

INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('1', '3', '1');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('2', '2', '2');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('3', '5', '3');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('4', '7', '4');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('5', '6', '5');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('6', '10', '6');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('7', '15', '7');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('8', '14', '8');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('9', '18', '9');
INSERT INTO `reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES 
('10', '12', '10');

INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('001', '0001');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('001', '0002');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('001', '0003');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('002', '0004');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('002', '0005');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('002', '0006');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('003', '0007');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('003', '0008');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('003', '0009');
INSERT INTO `verifies` (`Employee_Id`, `Billing_Id`) VALUES
('003', '0010');

