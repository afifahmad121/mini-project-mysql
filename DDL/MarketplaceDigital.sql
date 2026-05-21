CREATE DATABASE MarketplaceDigital;

USE MarketplaceDigital;

SHOW TABLES;

-- TABLE PENGGUNA ATAU USER 
CREATE TABLE pengguna(
 id INT AUTO_INCREMENT PRIMARY KEY,
 email VARCHAR(30) UNIQUE NOT NULL,
 nama VARCHAR(20) NOT NULL,
 nomor_telepon VARCHAR(15) UNIQUE NOT NULL
);

SELECT * FROM  pengguna;

-- ISI TABLE PENGGUNA ATAU USER
INSERT INTO pengguna (email, nama, nomor_telepon) VALUES 
('ar@gmail.com', 'anton', '0888881'), ('aril@gmail.com', 'aji', '0888882'), 
('agung@gmail.com', 'agung', '0888883'), ('ednin@gmail.com', 'ednin', '0888884'),
('zenin@gmail.com', 'zenin', '0888885'), ('bilal@gmail.com', 'bilal', '0888886'),
('hasan@gmail.com', 'hasan', '0888887'), ('siti@gmail.com', 'siti', '0888888'),
('zull@gmail.com', 'zull', '0888889'), ('bagas@gmail.com', 'bagas', '0888810');


-- TABLE produk 
CREATE TABLE produk(
 id INT AUTO_INCREMENT PRIMARY KEY,
 nama_produk VARCHAR(70) NOT NULL,
 id_kategori INT NOT NULL, 
 harga_produk DECIMAL, 
 stok	INT NOT NULL
);

-- ALTER TABLE produk DROP COLUMN nama_produk;
ALTER TABLE produk ADD COLUMN nama_produk VARCHAR(70) NOT NULL AFTER id;

SELECT * FROM produk;

-- ISI TABLE produk 
INSERT INTO produk(nama_produk, id_kategori, harga_produk, stok) VALUES
('Paket Template Desain Feed Sosial Media', 1, 20000, 5 ),('E-Book Premium', 2, 10000, 0 ),
('Preset Lightroom & Filter Foto', 3, 150000, 6 ), ('Digital Planner / Jurnal Siap Cetak', 4, 50000, 2),
('Font dan Aset Grafis Premium', 5, 300000, 7 ), ('Template Notion / Spreadsheet Akuntansi', 6, 350000, 10 ),
('Video Stock Footage & Sound Effect', 7, 400000, 4 ), ('Plugin atau Tema Website (WordPress/CMS)', 8, 200000, 0 ),
('Kursus Online / Video Tutorial Eksklusif', 9, 600000, 4 ), ('Akses ke Private Community / Membership Bulanan', 10, 2000000, 8 );


-- TABLE produk-kategori 
CREATE TABLE produk_kategori(
 id INT AUTO_INCREMENT PRIMARY KEY,
 nama VARCHAR(70) NOT NULL
);

SELECT * FROM produk_kategori;
-- ISI TABLE produk_kategori 
INSERT INTO produk_kategori(nama) VALUES
('Template Media Sosial'), ('E-Book Edukasi'), ('Filter Fotografi'), ('Alat Produktivitas'), ('Aset Desain'),
('Format Spreadsheet'), ('Bahan Kreator'), ('Komponen Website'), ('E-Learning'), ('Keanggotaan');

-- TABLE langganan
CREATE TABLE langanan(
 id INT AUTO_INCREMENT PRIMARY KEY,
 id_pengguna INT NOT NULL,
 id_produk INT NOT NULL,
 status_langganan VARCHAR(70) NOT NULL
);

SELECT * FROM langanan;

-- ISI TABLE langganan 
INSERT INTO langanan( id_pengguna, id_produk, status_langganan) VALUES
(1, 1, 'Masih Aktif Berlangganan'), (2, 2, 'Sudah Tidak Aktif Berlanganan'), (3, 3, 'Masih Aktif Berlangganan'),
(4, 4, 'Masih Aktif Berlangganan'), (5, 5, 'Sudah Tidak Aktif Berlangganan'), (6, 6, 'Sudah Tidak Aktif Berlangganan'),
(8, 8, 'Masih Aktif Berlangganan'), (9, 9, 'Sudah Tidak Aktif Berlanganan'), (10, 10, 'Masih Aktif Berlangganan');


ALTER TABLE langanan ADD CONSTRAINT langanan_fk_id_pengguna
FOREIGN KEY (id_pengguna) REFERENCES pengguna(id);

ALTER TABLE langanan ADD CONSTRAINT langanan_fk_id_produk
FOREIGN KEY (id_produk) REFERENCES produk(id);

ALTER TABLE produk 
ADD CONSTRAINT produk_fk_id_produk_kategori
FOREIGN KEY (id_kategori) REFERENCES produk_kategori(id);



-- ALTER TABLE produk ADD COLUMN harga_produk DECIMAL AFTER id_kategori;
-- ALTER TABLE produk DROP COLUMN id_pengguna;

