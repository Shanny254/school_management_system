-- Create the Contact Book database
CREATE DATABASE IF NOT EXISTS contact_book;
USE contact_book;

-- Create Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    contact_phone VARCHAR(15),
    contact_email VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Sample data for Users
INSERT INTO Users (username, email) VALUES
('john_muchiri', 'john.muchiri@gmail.com'),
('mary_kinya', 'mary.kinya@gmail.com');

-- Sample data for Contacts
INSERT INTO Contacts (user_id, contact_name, contact_phone, contact_email) VALUES
(1, 'Alice Kamau',   '0712345678', 'alice.kamau@gmail.com'),
(1, 'Brian Njeri',   '0723456789', 'brian.njeri@gmail.com'),
(2, 'Charles Otieno','0733456789', 'charles.otieno@gmail.com');
