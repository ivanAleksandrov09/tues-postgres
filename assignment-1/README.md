# assignment-1

decided table structure should be:

[users]
INT id;
TEXT name;

[books]
INT id;
TEXT title;
TEXT author;
INT year;

[loans]
INT user_id;
INT book_id;
TIMESTAMP borrowed;
BOOL returned;

reasoning: made a seperate loans table so when searching for all borrowed books or overdue books, etc we have to search thru a loans table smaller than books
