-- create new database
CREATE DATABASE bookstore_db;


-- create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) CHECK (price >= 0),
    stock INT CHECK (stock >= 0),
    published_year INT CHECK (published_year > 0)
);

-- create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- create orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id) ON DELETE CASCADE,
    book_id INT REFERENCES books(id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert sample data into books table
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 0, 1925),
('To Kill a Mockingbird', 'Harper Lee', 7.99, 10, 1960),
('1984', 'George Orwell', 8.99, 15, 1949),
('Pride and Prejudice', 'Jane Austen', 6.99, 0, 1813),
('The Catcher in the Rye', 'J.D. Salinger', 9.99, 12, 1951);



-- insert sample data into customers table
INSERT INTO customers (name, email, joined_date)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com', '2025-03-15'),
    ('Bob Smith', 'bob.smith@example.com', '2025-03-20'),
    ('Charlie Brown', 'charlie.brown@example.com', '2025-03-18'),
    ('Diana Prince', 'diana.prince@example.com', '2025-03-25'),
    ('Eve White', 'eve.white@example.com', '2025-03-22');

-- insert sample data into orders table
INSERT INTO orders (customer_id, book_id, quantity, order_date)
VALUES
    (1, 2, 1, '2025-03-16 10:30:00'),
    (2, 1, 3, '2025-03-21 14:00:00'),
    (3, 4, 2, '2025-03-19 09:45:00'),
    (4, 3, 1, '2025-03-26 16:00:00'),
    (5, 5, 4, '2025-03-23 11:15:00');



-- problem 1: Find books that are out of stock.
SELECT title FROM books WHERE stock = 0;

-- problem 2: Retrieve the most expensive book in the store.
SELECT * FROM books ORDER BY price DESC LIMIT 1;

-- problem 3: Find the total number of orders placed by each customer.
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY total_orders DESC;

-- problem 4: Calculate the total revenue generated from book sales.
SELECT SUM(b.price * o.quantity) AS total_revenue
FROM orders o
JOIN books b ON o.book_id = b.id;

-- problem 5: List all customers who have placed more than one order.
SELECT c.name, COUNT(o.id) AS order_count
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
HAVING COUNT(o.id) > 1
ORDER BY order_count DESC;

-- problem 6: Find the average price of books in the store.
SELECT AVG(price) AS avg_book_price FROM books;

-- problem 7: Increase the price of all books published before 2000 by 10%.
UPDATE books SET price = price * 1.10 WHERE published_year < 2000;

-- problem 8: Delete customers who haven't placed any orders.
DELETE FROM customers WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);