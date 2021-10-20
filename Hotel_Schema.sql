drop table if exists `hotel_Employee`;
drop table if exists `invoice`;
drop table if exists `verifies`;
drop table if exists `rooms`;
drop table if exists `cleans`;
drop table if exists `customer`;
drop table if exists `reserves`;

create table `hotel_Employee`(
	`Employee_Id` int(10) not null,
	`firstname` varchar(30) not null,
	`lastname` varchar(30) not null,
	`position` varchar(30) not null,
	`PhoneNumber` bigint(10) not null,
	PRIMARY KEY (`Employee_Id`)
);

create table `hotel_Invoice`(
	`Billing_Id`  int(4) not null,
	`Reservationcost` varchar(30) not null,
	`Arrival_Date` varchar(30) not null,
	`Departure_Date` varchar(30) not null,
	PRIMARY KEY (`Billing_Id`)
);

create table `hotel_Verifies`(
	`Employee_Id` int(10) not null,
	`Billing_Id` int(4) not null,
	PRIMARY KEY (`Billing_Id`,`Employee_Id`)
);

create table `hotel_Rooms`(
	`Room_Id` int(3) not null,
	PRIMARY KEY(`Room_id`)
);

create table `hotel_Cleans`(
	`Room_Id` int(3) not null,
	`Employee_Id` int(10),
	PRIMARY KEY(`Room_Id`, `Employee_Id`)
);

create table `hotel_Customer`(
	`Customer_Id` int(4) not null,
	`firstname` varchar(50)not null,
	`lastname` varchar(50)not null,
	`phone_no` bigint(10)not null,
	PRIMARY KEY(`Customer_Id`)
);

create table `hotel_Reserves`(
	`Customer_Id` int(4) not null,
	`Room_Id` int(3) not null,
	`Billing_Id` int(4) not null,
	PRIMARY KEY(`Customer_Id`, `Room_Id`, `Billing_Id`)
);


ALTER TABLE `hotel_Cleans` 
	ADD CONSTRAINT foreign key (`Room_Id`) references `hotel_Rooms`(`Room_Id`); 
    
 ALTER TABLE `hotel_Cleans`    
	ADD CONSTRAINT foreign key (`Employee_Id`) references `hotel_Employee`(`Employee_Id`);
	
ALTER TABLE `hotel_Reserves` ADD CONSTRAINT	
	foreign key (`Customer_Id`) references `hotel_Customer`(`Customer_Id`);

ALTER TABLE `hotel_Reserves` ADD CONSTRAINT	
	foreign key (`Room_Id`) references `hotel_Rooms`(`Room_Id`);

ALTER TABLE `hotel_Reserves` ADD CONSTRAINT	
	foreign key (`Billing_Id`) references `hotel_Invoice`(`Billing_Id`);


