
-- Tampilkan 5 produk dengan harga tertinggi. 

SELECT id ,nama_produk, harga_produk FROM produk
ORDER BY harga_produk DESC LIMIT 5;