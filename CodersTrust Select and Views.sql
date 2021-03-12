Use coderstrust; # make it so the rest of the lines uses the Coderstrust database
drop view if exists user_info; #Deletes the view if it already exists
drop view if exists User_Question_Answers; #Deletes the view if it already exists
drop view if exists User_Interest; #Deletes the view if it already exists
drop view if exists Quiz_Questions; #Deletes the view if it already exists

create view User_Info as #View saves the select statment like a table. 
select `user`.User_ID, `user`.First_Name, `user`.Last_Name,`user`.Email,`user`.Address,`user`.Address_NR,`user`.Zip_Code,`user`.Phone_Number,`City_ID`.city #Selects what attributes the select statement should use.
from `user`#what table the information is in.
inner join `City_ID` on `User`.Zip_Code=`City_ID`.Zip_code;#combines the attributes from multibul tables though 4 diffreant join statements.


create view Quiz_Questions as#View saves the select statment like a table. 
select `Question`.Question_ID,`Question`.Order_OF_Questions,`Question`.Questions,`Question_category_id`.Category_Name_Id,`Question_category_ID`.Category_Name #Selects what attributes the select statement should use.
from `Question`#what table the information is in.
inner join `Question_Category` on `Question`.Question_ID=`Question_Category`.Question_ID#combines the attributes from multibul tables though 4 diffreant join statements.
inner join `Question_Category_ID` on `Question_category`.Category_Name_ID=`Question_Category_ID`.Category_Name_ID;#A second join statement to make it possible to have multibul tables in a view.


create view User_Question_Answers as#View saves the select statment like a table. 
select `User_Answer_data`.User_Id,`User_Answer_data`.Time_,`answer_Type`.Type_ID,`answer_Type`.Type_,`answer_Type`.Points,`User_Answer_data`.Question_Id #Selects what attributes the select statement should use.
from `User_Answer_Data`#what table the information is in.
inner join `Answer_Type` on `Answer_Type`.Type_ID=`User_Answer_Data`.Type_ID;#combines the attributes from multibul tables though 4 diffreant join statements.


create view User_Interest as#View saves the select statment like a table. 
select `User_Answer`.User_ID as 'User ID', `User_Answer`.Time_ as 'Time', #Selects what attribute is in the view
concat(`User_Answer`.Graphical_Design*100, '%')as 'Graphical_Design', #And concat combines information into one row, and the as after the concat renames the attribute title to whatever string that is after it.
concat(`User_Answer`.Programming*100, '%')as 'Programming', #-11-
concat(`User_Answer`.SoMe_*100, '%') as 'Social Media' #-11-
from `User_Answer`;#what table the information is in.



