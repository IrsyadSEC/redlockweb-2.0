-- Membuat database
CREATE DATABASE Redlock;
--Menggunakan database yang sudah dibuat
USE Redlock;

-- Membuat table users
CREATE TABLE users (
    ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    --yang berarti kolom tersebut adalah primary key dan nilainya akan 
    -- otomatis bertambah secara otomatis setiap kali record baru ditambahkan.
    Nama VARCHAR(30) NOT NULL,
    Alamat VARCHAR(30) NOT NULL,
    Jabatan VARCHAR(30) NOT NULL
    -- Sedangkan kolom "Nama", "Alamat", dan "Jabatan" memiliki tipe data VARCHAR(30) 
    -- dan tidak boleh kosong (NOT NULL).
);

-- Kemudian dilakukan pengisian data ke dalam tabel "users" menggunakan 
-- perintah INSERT INTO. Terdapat tiga baris data yang diisikan, 
-- yaitu nama, alamat, dan jabatan dari tiga orang yang berbeda.
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Irsyad', 'Jakarta', 'Manager');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('muhammad', 'bandung', 'Junior');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('fawwaz', 'bekasi', 'Staff');