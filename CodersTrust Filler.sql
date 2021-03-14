Use coderstrust; # make it so the rest of the lines uses the Coderstrust database

insert into `City_ID`(Zip_Code, City) values #Inputs data into the atttrbutes in the table according to the first parentheses.
(2450,'København'), # the data according to the first parentheses.
(2500,'København'), #-11-
(2600,'København'), #-11-
(2060,'København'), #-11-
(4521,'Trelleborg'), #-11-
(1064,'Malmö'), #-11-
(1097,'Lund'), #-11-
(2064,'Roskilde'), #-11-
(2034,'Aarhus'); #-11-

insert into `User`(First_Name, Last_Name, Email, Address, Address_NR, Zip_Code, Phone_Number) values #Inputs data into the atttrbutes in the table according to the first parentheses. The parentheses dosen't have the User ID since it is in Auto_Increment and dosen't work if it is in the parentheses.
('Nicolas','Mousten','Example1@gmail.com','Vestre teglgade',18,2450,45875245), # the data according to the first parentheses.
('Alexander','Choueiri','Example2@gmail.com','Kongevænget',3,2500,15687864), #-11-
('Christian','Andersen','Example3@gmail.com','pengekrogen',24,2450,13678542), #-11-
('Marcus','Bjarnholt','Example4@gmail.com','Ploven',6,2600,25687452), #-11-
('John','Hansen','example5@gmail.com','Pilevænget',14,2060,69854785), #-11-
('Simon','Birgerson','Example6@gmail.com','Guldbaggegatan',4,4521,69854785), #-11-
('Victor','Såneson','Example7@gmail.com','Sødra teglgade',9,1064,25634789), #-11-
('Sebastian','Lague','Example8@gmail.com','Enghavevej',7,1097,36487456), #-11-
('Leif','Dansø','Example9@gmail.com','Strandpromenaden',13,2064,78922149), #-11-
('Lars','Larson','Example10@gmail.com','Højdedraget',8,2034,95643484); #-11-

insert into `Question`(Question_ID, Order_Of_Questions, Questions) values #Inputs data into the atttrbutes in the table according to the first parentheses.
(9,1,"Are you very active on social media?"), # the data according to the first parentheses.
(1,2,"Do you appreciate design in relation to products?"), #-11-
(7,3,"Are you interested in coding and learning to either understand or code youself?"), #-11-
(4,4,"Have you tried editing video on your mobile device or PC?"), #-11-
(8,5,"Have you tried building website with a CMS like wordpress or Wix?"), #-11-
(11,6,"Do you find that Social Media influences your buying decisions?"), #-11-
(5,7,"Do you like to take online intelligence tests?"), #-11-
(10,8,"Do you care about who likes and comments on your posts on social media?"), #-11-
(3,9,"Do you enjoy making visual presentations for school or business?"), #-11-
(12,10,"Do you belive that social media is more effective than traditional marketing?"), #-11-
(2,11,"Do you have a favourite artist when it comes to visual art?"), #-11-
(6,12,"Do you find numbers and logic is preferred over philosophical questions?"), #-11-
(13,13,"Choose a picture - How do you see yourself working?"), #-11-
(14,14,"Choose a picture - How do you see yourself as a person?"); #-11-

insert into `Answer_Type`(Type_, points) values #Inputs data into the atttrbutes in the table according to the first parentheses. The parentheses dosen't have the User ID since it is in Auto_Increment and dosen't work if it is in the parentheses.
('Yes',5), # the data according to the first parentheses.
('No',0), #-11-
('Pic 1',5), #-11-
('Pic 2',5), #-11-
('Pic 3',5); #-11-

insert into `Question_Category_ID`(Category_Name) values #Inputs data into the atttrbutes in the table according to the first parentheses. The parentheses dosen't have the User ID since it is in Auto_Increment and dosen't work if it is in the parentheses.
('Graphical design'), # the data according to the first parentheses.
('Programming'), #-11-
('SoMe'), #-11-
('Multi'); #-11-

insert into `Question_Category`(Question_ID, Category_Name_ID) values #Inputs data into the atttrbutes in the table according to the first parentheses.
(9,3), # the data according to the first parentheses.
(1,1), #-11-
(7,2), #-11-
(4,1), #-11-
(8,2), #-11-
(11,3), #-11-
(5,2), #-11-
(10,3), #-11-
(3,1), #-11-
(12,3), #-11-
(2,1), #-11-
(6,2), #-11-
(13,4), #-11-
(14,4); #-11-

alter table `User_Answer` auto_increment=1;#not needed it can change to anything, it is used to choose the interval of auto increment.
insert into User_Answer(Time_, Graphical_Design, Programming, SoMe_) values #Inputs data into the atttrbutes in the table according to the first parentheses. The parentheses dosen't have the User ID since it is in Auto_Increment and dosen't work if it is in the parentheses.
('2000-09-13',0.4,0.2,0.4), # the data according to the first parentheses.
('2001-09-13',0.6,0.2,0.2), #-11-
('2020-01-03',0.5,0.125,0.375), #-11-
('2020-01-04',0.286,0.286,0.429), #-11-
('2020-01-05',0.33,0.33,0.33), #-11-
('2020-01-06',0.222,0.333,0.444), #-11-
('2020-01-07',0.40,0.20,0.40), #-11-
('2020-01-08',0.11,0.44,0.44), #-11-
('2020-01-09',0.25,0.375,0.375), #-11-
('2020-02-02',0.222,0.556,0.222); #-11-

insert into `User_Answer_Data`(Time_, User_ID, Question_ID, Type_ID) values #Inputs data into the atttrbutes in the table according to the first parentheses. The parentheses dosen't have the User ID since it is in Auto_Increment and dosen't work if it is in the parentheses.
('2020-01-01',1,1,1), # the data according to the first parentheses.
('2020-01-01',1,2,2), #-11-
('2020-01-01',1,3,2), #-11-
('2020-01-01',1,13,3), #-11-
('2020-01-01',1,4,1), #-11-
('2020-01-01',1,5,2), #-11-
('2020-01-01',1,6,1), #-11-
('2020-01-01',1,7,1), #-11-
('2020-01-01',1,14,4), #-11-
('2020-01-01',1,8,1), #-11-
('2020-01-01',1,9,2), #-11-
('2020-01-01',1,10,2), #-11-
('2020-01-01',1,11,1), #-11-
('2020-01-01',1,12,1), #-11-
('2020-01-02',2,1,2), #-11-
('2020-01-02',2,2,1), #-11-
('2020-01-02',2,3,2), #-11-
('2020-01-02',2,4,1), #-11-
('2020-01-02',2,5,2), #-11-
('2020-01-02',2,6,2), #-11- 
('2020-01-02',2,14,4), #-11-
('2020-01-02',2,13,4), #-11-
('2020-01-02',2,7,1), #-11-
('2020-01-02',2,8,2), #-11-
('2020-01-02',2,9,2), #-11- 
('2020-01-02',2,10,1), #-11-
('2020-01-02',2,11,1), #-11-
('2020-01-02',2,12,2),
('2020-01-03',3,1,2),
('2020-01-03',3,13,3),
('2020-01-03',3,2,1),
('2020-01-03',3,3,1),
('2020-01-03',3,4,1),
('2020-01-03',3,5,2),
('2020-01-03',3,6,2),
('2020-01-03',3,7,1),
('2020-01-03',3,8,2),
('2020-01-03',3,9,2),
('2020-01-03',3,14,5),
('2020-01-03',3,10,2),
('2020-01-03',3,11,1),
('2020-01-03',3,12,1),
('2020-01-04',4,1,2),
('2020-01-04',4,14,3),
('2020-01-04',4,2,2),
('2020-01-04',4,3,1),
('2020-01-04',4,4,2),
('2020-01-04',4,5,2),
('2020-01-04',4,6,1),
('2020-01-04',4,7,1),
('2020-01-04',4,8,2),
('2020-01-04',4,13,5),
('2020-01-04',4,9,1),
('2020-01-04',4,10,2),
('2020-01-04',4,11,2),
('2020-01-04',4,12,1),
('2020-01-05',5,1,2),
('2020-01-05',5,2,1),
('2020-01-05',5,3,2),
('2020-01-05',5,4,1),
('2020-01-05',5,5,1),
('2020-01-05',5,6,2),
('2020-01-05',5,13,4),
('2020-01-05',5,7,2),
('2020-01-05',5,8,2),
('2020-01-05',5,9,2),
('2020-01-05',5,14,5),
('2020-01-05',5,10,2),
('2020-01-05',5,11,1),
('2020-01-05',5,12,2),
('2020-01-06',6,1,1),
('2020-01-06',6,2,2),
('2020-01-06',6,3,2),
('2020-01-06',6,4,1),
('2020-01-06',6,13,4),
('2020-01-06',6,5,2),
('2020-01-06',6,6,2),
('2020-01-06',6,7,1),
('2020-01-06',6,8,1),
('2020-01-06',6,9,1),
('2020-01-06',6,14,5),
('2020-01-06',6,10,1),
('2020-01-06',6,11,2),
('2020-01-06',6,12,1),
('2020-01-07',7,1,2),
('2020-01-07',7,2,1),
('2020-01-07',7,13,3),
('2020-01-07',7,14,3),
('2020-01-07',7,3,1),
('2020-01-07',7,4,2),
('2020-01-07',7,5,1),
('2020-01-07',7,6,2),
('2020-01-07',7,7,1),
('2020-01-07',7,8,2),
('2020-01-07',7,9,1),
('2020-01-07',7,10,1),
('2020-01-07',7,11,1),
('2020-01-07',7,12,1),
('2020-01-08',8,1,1),
('2020-01-08',8,2,2),
('2020-01-08',8,3,2),
('2020-01-08',8,4,2),
('2020-01-08',8,5,1),
('2020-01-08',8,14,4),
('2020-01-08',8,6,2),
('2020-01-08',8,7,1),
('2020-01-08',8,8,1),
('2020-01-08',8,9,1),
('2020-01-08',8,13,5),
('2020-01-08',8,10,2),
('2020-01-08',8,11,1),
('2020-01-08',8,12,1),
('2020-01-09',9,1,1),
('2020-01-09',9,2,2),
('2020-01-09',9,3,2),
('2020-01-09',9,4,1),
('2020-01-09',9,13,4),
('2020-01-09',9,5,2),
('2020-01-09',9,6,1),
('2020-01-09',9,7,1),
('2020-01-09',9,8,2),
('2020-01-09',9,14,5),
('2020-01-09',9,9,2),
('2020-01-09',9,10,1),
('2020-01-09',9,11,2),
('2020-01-09',9,12,1),
('2020-02-02',10,1,2),
('2020-02-02',10,2,1),
('2020-02-02',10,3,2),
('2020-02-02',10,4,1),
('2020-02-02',10,13,4),
('2020-02-02',10,14,4),
('2020-02-02',10,5,2),
('2020-02-02',10,6,1),
('2020-02-02',10,7,1),
('2020-02-02',10,8,1),
('2020-02-02',10,9,1),
('2020-02-02',10,10,2),
('2020-02-02',10,11,2),
('2020-02-02',10,12,1);



update `City_ID` #Update the city attribute so that the zip code's city is changed to Stockholm where Zip_code =2450,
set City='Stockholm'
where Zip_Code=2450;

insert into `City_ID`(Zip_Code,City) values
(1000,'Moscow'); 

DELETE FROM `City_ID` WHERE Zip_Code=1000;


