
-- which books are currently borrowed, by who and when?

--"To Kill a Mockingbird"	"Bob Jones"	"2026-09-24 07:19:27.375376"
--"1984"	"Charlie Brown"	"2026-10-01 07:19:27.375376"
--"The Great Gatsby"	"Diana Prince"	"2026-10-14 07:19:27.375376"
SELECT 
    b.title,
    u.name AS student,
    l.borrowed AS date_taken
FROM loans l
JOIN books b ON l.book_id = b.id
JOIN users u ON l.user_id = u.id
WHERE l.returned = FALSE;

-- which students have borrowed a book more than 14 days ago and what book
SELECT 
    u.name AS student,
	b.title
FROM loans l
JOIN books b ON l.book_id = b.id
JOIN users u ON l.user_id = u.id
WHERE l.returned = FALSE
AND l.borrowed < NOW() - INTERVAL '14 days';

--"Bob Jones"	"To Kill a Mockingbird"
--"Charlie Brown"	"1984"