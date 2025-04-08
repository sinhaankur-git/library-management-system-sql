create database LIBRARY;
use library;

# Creating tables in the data base
-- Authors Table

create table Authors (
	Author_id int primary key ,
	Name varchar (30),
	Country varchar (30)
);

-- Books
create table Books (
	Book_id int primary key ,
	Title varchar (50),
	Author_id int,
	Genre varchar (50),
	Publisher varchar(50),
	Year_published int,
	Copies_available int check (Copies_available >= 0),
	Foreign Key (Author_id) References Authors(Author_id)
);

-- Borrowers

create table Borrowers (
	Borrower_id int primary key ,
	Name varchar (50),
	Email varchar (50),
	Phone varchar (50)
);

-- Loans

create table Loans (
	Loan_id int primary key ,
	Book_id int,
	Borrower_id int,
	Loan_date date,
	Return_date date,
	Due_date date,
	Fine_amount decimal(5,2),
	Foreign Key (Book_id) References Books(Book_id),
	Foreign Key (Borrower_id) References Borrowers(Borrower_id)
);