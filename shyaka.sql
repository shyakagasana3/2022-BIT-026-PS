create database library;
use library;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),	
    genre VARCHAR(50),
    publication_date DATE
);
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(255),
    nationality VARCHAR(100),
    birth_date DATE
);
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100)
);

CREATE TABLE Borrowings (
    borrowing_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    review_text TEXT,
    rating INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(255),
    headquarters_location VARCHAR(255)
);
CREATE TABLE Book_Authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Book_Genres (
    book_id INT,
    genre_id INT,
    PRIMARY KEY (book_id, genre_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);
CREATE TABLE Book_Publishers (
    book_id INT,
    publisher_id INT,
    PRIMARY KEY (book_id, publisher_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
);
INSERT INTO Books (book_id, title, author, genre, publication_date) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '1925-04-10'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11'),
(3, '1984', 'George Orwell', 'Fiction', '1949-06-08'),
(4, 'Pride and Prejudice', 'Jane Austen', 'Fiction', '1813-01-28'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16'),
(6, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', '1997-06-26'),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21'),
(8, 'The Da Vinci Code', 'Dan Brown', 'Mystery', '2003-03-18'),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', '1954-07-29'),
(10, 'The Alchemist', 'Paulo Coelho', 'Fiction', '1988-01-01');
INSERT INTO Authors (author_id, author_name, nationality, birth_date) VALUES
(1, 'F. Scott Fitzgerald', 'American', '1896-09-24'),
(2, 'Harper Lee', 'American', '1926-04-28'),
(3, 'George Orwell', 'British', '1903-06-25'),
(4, 'Jane Austen', 'British', '1775-12-16'),
(5, 'J.D. Salinger', 'American', '1919-01-01'),
(6, 'J.K. Rowling', 'British', '1965-07-31'),
(7, 'J.R.R. Tolkien', 'British', '1892-01-03'),
(8, 'Dan Brown', 'American', '1964-06-22'),
(9, 'Paulo Coelho', 'Brazilian', '1947-08-24');
INSERT INTO Genres (genre_id, genre_name) VALUES
(1, 'Fiction'),
(2, 'Fantasy'),
(3, 'Mystery');

INSERT INTO Users (user_id, username, email, phone_number) VALUES
(1, 'user1', 'user1@example.com', '+123456789012'),
(2, 'user2', 'user2@example.com', '+123456789013'),
(3, 'user3', 'user3@example.com', '+123456789014');
INSERT INTO Borrowings (borrowing_id, user_id, book_id, borrow_date, return_date) VALUES
(1, 1, 1, '2024-02-10', '2024-03-10'),
(2, 2, 3, '2024-02-15', '2024-03-15'),
(3, 3, 5, '2024-02-20', '2024-03-20');
INSERT INTO Publishers (publisher_id, publisher_name, headquarters_location) VALUES
(1, 'Penguin Random House', 'New York, USA'),
(2, 'HarperCollins', 'London, UK'),
(3, 'Hachette Livre', 'Paris, France');

INSERT INTO Book_Authors (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 7),
(10, 9);
INSERT INTO Book_Genres (book_id, genre_id) VALUES
(1, 1),
(2, 1),
INSERT INTO Book_Publishers (book_id, publisher_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 2),
(9, 1),
(10, 3);

(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 3),
(9, 2),
(10, 1);




