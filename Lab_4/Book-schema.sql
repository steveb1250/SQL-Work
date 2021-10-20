SET FOREIGN_KEY_CHECKS=0;

drop table if exists Author;
drop table if exists A_writes_B;
drop table if exists Book;


SET FOREIGN_KEY_CHECKS=1;

-- Create Author table
CREATE TABLE Author 
(
	A_ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT, 
	lastName VARCHAR (25) NOT NULL, 
	firstName VARCHAR (25) NOT NULL,
	CONSTRAINT PRIMARY KEY (A_ID)
 );

-- Create Book table
CREATE TABLE Book
(
    ISBN CHAR (10)  NOT NULL,
    Title VARCHAR (256) NOT NULL,
    Edition INTEGER UNSIGNED NOT NULL,
    Year INTEGER UNSIGNED NOT NULL,
    CONSTRAINT PK_Book PRIMARY KEY (ISBN)
 );
 
 -- Create A_writes_B table
 CREATE TABLE A_writes_B
 (
	A_ID INTEGER UNSIGNED NOT NULL
	ISBN varchar(10)  NOT NULL,
	CONSTRAINT PK_A_writes_B PRIMARY KEY (A_ID, ISBN)
 );



-- Add foreign key constraints to the database for A_writes_B

ALTER TABLE `A_writes_B_ibfk_1` ADD CONSTRAINT
  foreign key (A_ID) references Author(A_ID) on delete set null on update cascade;
  
ALTER TABLE `A_writes_B_ibfk_2` ADD CONSTRAINT
   foreign key (ISBN) references Book(ISBN) on delete set null on update cascade;
