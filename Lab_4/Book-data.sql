INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Deitel', 'Harvey');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Deitel', 'Paul');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Stallings', 'William');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Beard', 'Cory');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Coronel', 'Carlos');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Morris', 'Steven');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Rob', 'Peter');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Elmasri', 'Ramez');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Navathe', 'Sham');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Choffnes', 'David');
INSERT INTO `Author` (`A_ID`, `lastName`, `firstName`) VALUES (NULL, 'Goldberg', 'Andrew');


--
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0131450913', 'Internet & World Wide Web How to Program', 3, 2004);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0131525239', 'Visual C# 2005 How to Program', 2, 2006);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0131828274', 'Operating Systems', 3, 2004);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0131857576', 'C++ How to Program', 5, 2005);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0131869000', 'Java How to Program', 7, 2007);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('013230998X', 'Operating Systems', 7, 2012);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0132404168', 'C How to Program', 5, 2007);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0133354695', 'Cryptography and Network Security', 6, 2014);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0133370437', 'Data and Computer Communications', 10, 2014);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0133594173', 'Wireless Communication Networks and Systems', 1, 2016);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0133970779', 'Fundamentals of Database Systems', 7, 2017);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0134101618', 'Computer Organization and Architecture', 10, 2016);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0134175395', 'Foundations of Modern Networking: SDN, NFV, QoE, IoT, and Cloud', 1, 2016);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0134444280', 'Android How to Program', 3, 2017);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0321122267', 'Fundamentals of Database Systems', 4, 2003);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('0321369572', 'Fundamentals of Database Systems', 5, 2006);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('1285196147', 'Database Systems: Design, Implementation, & Management', 11, 2014);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('1337561916', 'Invitation to Computer Science', 8, 2018);
INSERT INTO `Book` (`ISBN`, `Title`, `Edition`, `Year`) VALUES ('1418835935', 'Database Systems: Design, Implementation, & Management', 7, 2002);
--

--
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0131450913');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0131450913');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (11, '0131450913');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0131525239');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0131525239');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0131828274');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0131828274');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (10, '0131828274');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0131857576');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0131857576');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0131869000');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0131869000');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0132222205');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0132222205');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '013230998X');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0132404168');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0132404168');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0133354695');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0133370437');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0133506487');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0133594173');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (4, '0133594173');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (8, '0133970779');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (9, '0133970779');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0134101618');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0134175395');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (3, '0134444280');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (1, '0134444302');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (2, '0134444302');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (8, '0321122267');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (9, '0321122267');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (8, '0321369572');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (9, '0321369572');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (5, '1285196147');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (6, '1285196147');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (6, '1418835935');
INSERT INTO `A_writes_B` (`A_ID`, `ISBN`) VALUES (7, '1418835935');


