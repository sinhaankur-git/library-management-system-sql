# Values in tables
-- Values in Authors

Insert into Authors(author_id, name, country) 
	Values ( 1, 'J.K Rowling', 'UK'),
			(2, 'George Martin','USA'),
			(3,'J.R.R Tolkien','UK'),
			(4,'Agastha Christie','UK');
        

-- Values in Books
Insert into Books(book_id, title, author_id, genre, publisher, year_published, copies_available) 
	Values (101, 'Harry Potter and the Sorcerer\'s Stone', 1, 'Fantasy', 'Bloomsbury', 1997, 5),
			(102, 'A Game of Thrones', 2, 'Fantasy', 'Bantam Books', 1996, 3),
			(103, 'The Hobbit', 3, 'Fantasy', 'HarperCollins', 1937, 4),
			(104, 'Murder on the Orient Express', 4, 'Mystery', 'Collins Crime Club', 1934, 2);
        
-- Insert Borrowers
INSERT INTO Borrowers (borrower_id, name, email, phone) 
	VALUES
		(1, 'Alice Johnson', 'alice@example.com', '1234567890'),
		(2, 'Bob Smith', 'bob@example.com', '9876543210'),
		(3, 'Clara White', 'clara@example.com', '5556667777');

-- Insert Loans
INSERT INTO Loans (loan_id, book_id, borrower_id, loan_date, due_date, return_date, fine_amount) 
	VALUES
		(1001, 101, 1, '2024-03-01', '2024-03-10', '2024-03-09', 0.00),
		(1002, 102, 2, '2024-03-05', '2024-03-12', NULL, NULL),
		(1003, 103, 3, '2024-02-15', '2024-02-25', '2024-03-01', 2.50),
		(1004, 104, 1, '2024-03-20', '2024-03-27', '2024-03-27', 0.00);