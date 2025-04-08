-- List all books with their authors
select b.title, a.name as author, b.genre
from Books b
join authors a on b.author_id = a.author_id;

-- Find all books currently on loan

select b.title, br.name as borrower, l.loan_date
from loans l
join books b on l.book_id= b.book_id
join borrowers br on l.borrower_id = br.borrower_id
where l.return_date is null;

-- List overdue books (due date passed and not returned)

select b.title, br.name, l.due_date
from loans l
join books b on l.book_id = b.book_id
join borrowers br on l.borrower_id = br.borrower_id
where l.return_date is null and l.due_date < curdate();

-- Count how many books are available in total
select* from books;
select sum(copies_available) as total_books_available from books;

-- Find the top 2 most borrowed books

select b.title, count(*) as times_borrowed
from loans l
join books b on l.book_id = b.book_id
group by l.book_id
order by times_borrowed desc
limit 2;

-- Show borrowers who have borrowed more than 1 book

select* from borrowers, loans,books;
select br.name, count(*) as books_borrowed
from loans l
join borrowers br on l.borrower_id = br.borrower_id
group by l.borrower_id
having count(*) >1;	

-- Find all unpaid loans

select l.loan_id, b.title, br.name, l.fine_amount
from loans l
join books b on l.book_id = b.book_id
join borrowers br on l.borrower_id = br.borrower_id
where l.fine_amount > 0 and l.fine_paid = 0;
