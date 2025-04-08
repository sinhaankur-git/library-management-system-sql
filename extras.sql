-- Creating a book reservation table:

create table Reservations(
	reservation_id int primary key,
    book_id int,
    borrower_id int,
    reservation_date date,
    foreign key (book_id) references Books(book_id),
    foreign key (borrower_id) references Borrowers(borrower_id));
	
-- to check fine_paid

update loans
set fine_paid = 1
where loan_id - 1003;
