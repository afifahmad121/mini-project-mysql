
SELECT id_kategori, COUNT(stok) AS jumlah_produk 
FROM produk
GROUP BY id_kategori;



-- SELECT id_kategori, SUM(stok) AS jumlah_produk
-- FROM produk
-- GROUP BY id_kategori;SELECT * FROM produk;


