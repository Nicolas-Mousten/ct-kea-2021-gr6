drop database if exists coderstrust; #Deletes the database if it already exists
create database coderstrust; #Creates the new database 
use CodersTrust; # make it so the rest of the lines uses the Coderstrust database
drop table if exists `Question_Category`; #Deletes the table if it already exists
drop table if exists `User_Answer`; #Deletes the table if it already exists
drop table if exists `User_Answer_Data`; #Deletes the table if it already exists
drop table if exists `Question_Category_ID`; #Deletes the table if it already exists
drop table if exists `User`; #Deletes the table if it already exists
drop table if exists `City_ID`; #Deletes the table if it already exists
drop table if exists `Question`; #Deletes the table if it already exists
drop table if exists `Answer_Type`; #Deletes the table if it already exists


create table `City_ID`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
Zip_Code int not null primary key, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing, also if you want you primary key to Auto_Increment(Automaticly count upwards or from another choosen number).
City varchar(255) not null #Name of attibute, datatype, and not null that makes it so the row must have data, nothing in the row is allowed to show NULL.
);


create table `User`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
User_ID int auto_increment primary key, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing, also if you want you primary key to Auto_Increment(Automaticly count upwards or from another choosen number).
First_Name varchar(255) not null, #Name of attibute, datatype, and not null that makes it so the row must have data, nothing in the row is allowed to show NULL.
Last_Name varchar(255) not null, #-11-
Email varchar(255) not null, #-11-
Address varchar(255) not null, #-11-
Address_NR int not null, #-11-
Zip_Code int not null, #-11-
Phone_Number int not null, #-11-
foreign key(Zip_Code) references City_ID(Zip_Code) #Makes it so the table is dependent on another tables primary key, that makes it so the table can't be dropped if the other table is still there. So the foreign key table need to be dropped first to allow for the primary key table to be dropped. Refernces is the way the foreign key finds what primary key it is dependent after.
);



create table `Question`(# creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
Question_ID int not null, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing.
Order_Of_Questions int not null, #Name of attibute, datatype, and not null that makes it so the row must have data, nothing in the row is allowed to show NULL.
Questions varchar(255) not null, #-11-
primary key(Question_ID) #diffreant way of assigning what attribute is the primary key.
);


create table `Answer_Type`(	# creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
Type_ID int not null auto_increment Primary key, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing, also if you want you primary key to Auto_Increment(Automaticly count upwards or from another choosen number).
Type_ varchar(255) not null, #Name of attibute, datatype, and not null that makes it so the row must have data, nothing in the row is allowed to show NULL.
points int not null #-11-
);


create table `Question_Category_ID`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
Category_Name_ID int not null auto_increment primary key, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing, also if you want you primary key to Auto_Increment(Automaticly count upwards or from another choosen number).
Category_Name varchar(255) not null #Name of attibute, datatype, and not null that makes it so the row must have data, nothing in the row is allowed to show NULL.
);


create table `Question_Category`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
Question_ID int not null,# Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing. 
Category_Name_ID int not null, #Attributes Name, Data type, and not null for not getting NULL in the table.
foreign key(Question_ID) references `Question`(Question_ID), #Makes it so the table is dependent on another tables primary key, that makes it so the table can't be dropped if the other table is still there. So the foreign key table need to be dropped first to allow for the primary key table to be dropped. Refernces is the way the foreign key finds what primary key it is dependent after.
foreign key(Category_Name_ID) references `Question_Category_ID`(Category_Name_ID) #-11-
);




create table `User_Answer`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
User_ID int not null auto_increment, # Name of attribute, what sort of data the attribute has, also if the attribute is primary key/Alternate Key/Foreign Key or nothing, also if you want you primary key to Auto_Increment(Automaticly count upwards or from another choosen number).
Time_ date not null, #Attributes Name, Data type, and not null for not getting NULL in the table.
Graphical_Design decimal(5,3) not null, #Attribute with a data type where inside the parentheses it is choosen how many numbers there should be in front of the comma and behind.
Programming decimal(5,3) not null, #-11-
SoMe_ decimal(5,3) not null, #-11-
foreign key(User_ID) references User(User_ID) #Makes it so the table is dependent on another tables primary key, that makes it so the table can't be dropped if the other table is still there. So the foreign key table need to be dropped first to allow for the primary key table to be dropped. Refernces is the way the foreign key finds what primary key it is dependent after.
);


create table `User_Answer_Data`( # creates a table and the ` marks is to protect the table name from not working beacuse of keywords that are reserved by SQL.
User_ID Int not null,  #Attributes Name, Data type, and not null for not getting NULL in the table.
Time_ Date not null, #-11-
Question_ID int not null, #-11-
Type_ID int not null, #-11-
foreign key(User_ID) references `User`(User_ID), #Makes it so the table is dependent on another tables primary key, that makes it so the table can't be dropped if the other table is still there. So the foreign key table need to be dropped first to allow for the primary key table to be dropped. Refernces is the way the foreign key finds what primary key it is dependent after.
foreign key(Question_ID) references `Question`(Question_ID), #-11-
foreign key(Type_ID) references `Answer_Type`(Type_ID) #-11-
);


drop view if exists user_info; #Deletes the view if it already exists
drop view if exists User_Question_Answers; #Deletes the view if it already exists
drop view if exists User_Interest; #Deletes the view if it already exists
drop view if exists Quiz_Questions; #Deletes the view if it already exists

create view User_Info as #View saves the select statment like a table. 
select `user`.User_ID, `user`.First_Name, `user`.Last_Name,`user`.Email, `user`.Address,`user`.Address_NR,`user`.Zip_Code,`user`.Phone_Number,`City_ID`.city #Selects what attributes the select statement should use.
from `user`	#what table the information is in.
inner join `City_ID` on `User`.Zip_Code=`City_ID`.Zip_code;	#combines the attributes from multibul tables though 4 diffreant join statements.


create view Quiz_Questions as #View saves the select statment like a table. 
select `Question`.Question_ID,`Question`.Order_OF_Questions,`Question`.Questions, `Question_category_id`.Category_Name_Id,`Question_category_ID`.Category_Name #Selects what attributes the select statement should use.
from `Question`	#what table the information is in.
inner join `Question_Category` on `Question`.Question_ID=`Question_Category`.Question_ID #combines the attributes from multibul tables though 4 diffreant join statements.
inner join `Question_Category_ID` on `Question_category`.Category_Name_ID=`Question_Category_ID`.Category_Name_ID;#A second join statement to make it possible to have multibul tables in a view.


create view User_Question_Answers as#View saves the select statment like a table. 
select `User_Answer_data`.User_Id,`User_Answer_data`.Time_,`answer_Type`.Type_ID,`answer_Type`.Type_,`answer_Type`.Points,`User_Answer_data`.Question_Id #Selects what attributes the select statement should use.
from `User_Answer_Data`#what table the information is in.
inner join `Answer_Type` on `Answer_Type`.Type_ID=`User_Answer_Data`.Type_ID;#combines the attributes from multibul tables though 4 diffreant join statements.


create view User_Interest as #View saves the select statment like a table. 
select `User_Answer`.User_ID as 'User ID', `User_Answer`.Time_ as 'Time', #Selects what attribute is in the view
concat(`User_Answer`.Graphical_Design*100, '%')as 'Graphical_Design', #And concat combines information into one row, and the as after the concat renames the attribute title to whatever string that is after it.
concat(`User_Answer`.Programming*100, '%')as 'Programming', #-11-
concat(`User_Answer`.SoMe_*100, '%') as 'Social Media' #-11-
from `User_Answer`;	#what table the information is in.


