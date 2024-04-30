use Amusement_Park;

CREATE TABLE CUSTOMERS (
    Customer_ID VARCHAR(50) primary key,
    Ticket_ID VARCHAR(50),
    Age INT,
    Customer_Name CHAR(100),
    State CHAR(20),          
    Country CHAR(50),
    foreign key(Ticket_ID) references ENTRY_TICKET(Ticket_ID)
);

CREATE TABLE ENTRY_TICKET (
    Ticket_ID VARCHAR(50) primary key,
    Activity_ID VARCHAR(100),
    Activity_Name CHAR(100),
    Ratings int,
    Customer_ID int
);

CREATE TABLE ACTIVITIES (
    Activity_ID VARCHAR(50) primary key,
    Activity_Name CHAR(100),
    Supplier_ID VARCHAR(50)
);

ALTER TABLE ACTIVITIES add foreign key(Supplier_ID) references SUPPLIERS(Supplier_ID)

CREATE TABLE SUPPLIERS (
    Supplier_ID VARCHAR(50) primary key,
    Supplier_Name CHAR(100),
    Supplier_email VARCHAR(30)
);

CREATE TABLE FEEDBACK (
    Feedback_ID VARCHAR(50) primary key,
    Activity_ID VARCHAR(100),
    Activity_Name CHAR(100),
    Ratings int,
    Customer_ID varchar(50)
);

alter table FEEDBACK add foreign key(Customer_ID) references CUSTOMERS(Customer_ID)

drop table FEEDBACK

CREATE TABLE ENTRY_TICKET (
    Ticket_ID VARCHAR(50) primary key,
    Activity_ID VARCHAR(100),
    Activity_Name CHAR(100),
    Ratings int,
    Customer_ID int,
    foreign key(Customer_ID) references CUSTOMERS(Customer_ID)
);
drop table ENTRY_TICKET
CREATE TABLE EXPENSE (
    Expense_ID int primary key,
    Expense_Date date,
    Customer_ID int,
    Payment_Type CHAR(100)
);

CREATE TABLE RIDES (
    Activity_ID int FOREIGN key ,
    Entry_Cost_in_USD int,
    Wait_Time_in_Minutes int
);

CREATE TABLE STALLS (
    Activity_ID varchar(50),
    Average_Customer_spendings int
);
DROP TABLE STALLS
alter table STALLS ADD FOREIGN KEY(Activity_ID) references ACTIVITIES(Activity_ID)
select * from CUSTOMERS
select * from ACTIVITIES
select * from SUPPLIERS
select * from FEEDBACK
select * from ENTRY_TICKET
select * from EXPENSE
select * from RIDES
select * FROM STALLS