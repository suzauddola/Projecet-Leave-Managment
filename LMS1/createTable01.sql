
CREATE TABLE employee_info(
employee_index_pk int identity (1, 1),
name varchar(50),
gender varchar(5),
email varchar(50),
mobile varchar(15),
employee_type varchar(10),

PRIMARY KEY(employee_index_pk)
);
GO

CREATE TABLE faculty_info(
indx int identity(1, 1),
employee_index_pk int,
short_name varchar(10),
department varchar(10),
designation varchar(20),
superior_id int,

PRIMARY KEY(indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE staff_info(
indx int identity(1, 1),
employee_index_pk int,
designation varchar(20),

PRIMARY KEY(indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE login_info(
indx int identity(1, 1),
employee_index_pk int,
username varchar(50),
password varchar(50),
privilege int,

PRIMARY KEY (indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE leave_type(
leave_index_pk int identity(1, 1),
leave_name varchar(30),

PRIMARY KEY(leave_index_pk)
);

GO

CREATE TABLE leave_availability(
indx int identity(1, 1),
employee_index_pk int,
leave_index_pk int,
available_day int,

PRIMARY KEY (indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk),
FOREIGN KEY (leave_index_pk) REFERENCES leave_type(leave_index_pk)
);

GO

CREATE TABLE leave_details(
leave_no_index int identity(1, 1),
employee_index_pk int,
leave_index_pk int,
starting_date datetime,
ending_date datetime,
num_of_days int,
applying_date datetime,
status int,
apply_remakrs varchar(80),
denial_remarks varchar(80),
status_word varchar(20),

PRIMARY KEY(leave_no_index),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk),
FOREIGN KEY (leave_index_pk) REFERENCES leave_type(leave_index_pk)
);

GO