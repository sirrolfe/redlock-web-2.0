CREATE DATABASE IF NOT EXISTS Redlock;

USE Redlock;

CREATE TABLE IF NOT EXISTS users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nama VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users (Nama, Alamat, Jabatan)
VALUES ('John Doe', 'Jalan Raya 123', 'Manager'),
       ('Jane Smith', 'Jalan Kenangan 234', 'Developer');
