CREATE TABLE Tbl_Author(
Author_ID int PRIMARY KEY,
Author_Name varchar(30) NOT NULL DEFAULT('Unnammed'),
Author_Publication varchar(30));

CREATE TABLE Tbl_Books(
Book_ID int PRIMARY KEY,
Author_Id int NOT NULL,
Book_Name varchar(30) NOT NULL,
Book_Publication varchar(30),
Book_price int NOT NULL,
Units int DEFAULT(10)
FOREIGN KEY (Author_Id) REFERENCES Tbl_Author(Author_ID));


-- adding values

INSERT INTO Tbl_Author (Author_ID, Author_Name, Author_Publication) VALUES
(1, 'J.K. Rowling', 'Bloomsbury'),
(2, 'George R.R. Martin', 'Bantam'),
(3, 'Agatha Christie', 'Collins Crime Club'),
(4, 'Dan Brown', 'Doubleday'),
(5, 'Stephen King', 'Scribner');

INSERT INTO Tbl_Books (Book_ID, Author_Id, Book_Name, Book_Publication, Book_price, Units) VALUES
(1, 1, 'Harry Potter 1', 'Bloomsbury', 450, 20),
(2, 1, 'Harry Potter 2', 'Bloomsbury', 470, 15),
(3, 1, 'Harry Potter 3', 'Bloomsbury', 500, 12),

(4, 2, 'A Game of Thrones', 'Bantam', 550, 10),
(5, 2, 'A Clash of Kings', 'Bantam', 580, 9),
(6, 2, 'A Storm of Swords', 'Bantam', 600, 11),

(7, 3, 'Murder on the Orient Express', 'Collins', 400, 14),
(8, 3, 'And Then There Were None', 'Collins', 420, 10),
(9, 3, 'The ABC Murders', 'Collins', 390, 13),

(10, 4, 'The Da Vinci Code', 'Doubleday', 500, 25),
(11, 4, 'Angels and Demons', 'Doubleday', 480, 22),
(12, 4, 'Inferno', 'Doubleday', 510, 19),

(13, 5, 'The Shining', 'Scribner', 530, 10),
(14, 5, 'It', 'Scribner', 600, 8),
(15, 5, 'Misery', 'Scribner', 490, 9);


--INNER JOINS

SELECT a.Author_Name, a.Author_Publication, b.Book_Name 
FROM Tbl_Author as a
INNER JOIN Tbl_Books as b
ON a.Author_ID = b.Author_Id;
