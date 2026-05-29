SELECT id_kategori, AVG(harga_produk) AS rata_rata_harga 
FROM produk
GROUP BY id_kategori;

-- SELECT * FROM produk;