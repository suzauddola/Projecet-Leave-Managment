
CREATE TABLE employee_info(
employee_index_pk Numeric(10),
name Varchar(50),
gender Varchar(5),
email Varchar(50),
mobile Varchar(15),
employee_type Varchar(2),

PRIMARY KEY(employee_index_pk)
);
GO

CREATE TABLE faculty_info(
indx Numeric(10),
employee_index_pk Numeric(10),
short_name Varchar(10),
department Varchar(10),
designation Varchar(20),
superior_id Numeric(10),

PRIMARY KEY(indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE staff_info(
indx Numeric(10),
employee_index_pk Numeric(10),
designation Varchar(20),

PRIMARY KEY(indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE login_info(
indx Numeric(10),
employee_index_pk Numeric(10),
username Varchar(50),
password Varchar(50),
privilege Numeric(3),

PRIMARY KEY (indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk)
);

GO

CREATE TABLE leave_type(
leave_index_pk Numeric(10),
leave_name Varchar(10),

PRIMARY KEY(leave_index_pk)
);

GO

CREATE TABLE leave_availability(
indx Numeric(10),
employee_index_pk Numeric(10),
leave_index_pk Numeric(10),
available_day Numeric(10),

PRIMARY KEY (indx),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk),
FOREIGN KEY (leave_index_pk) REFERENCES leave_type(leave_index_pk)
);

GO

CREATE TABLE leave_details(
leave_no_index Numeric(10),
employee_index_pk Numeric(10),
leave_index_pk Numeric(10),
starting_date DATETIME,
ending_date DATETIME,
num_of_days Numeric(10),
applying_date DATETIME,
status Numeric(3),

PRIMARY KEY(leave_no_index),
FOREIGN KEY(employee_index_pk) REFERENCES employee_info(employee_index_pk),
FOREIGN KEY (leave_index_pk) REFERENCES leave_type(leave_index_pk)
);