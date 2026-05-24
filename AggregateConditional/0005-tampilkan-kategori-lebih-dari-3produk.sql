
SELECT id_kategori, COUNT(nama_produk) AS jumlah_produk 
FROM produk
GROUP BY id_kategori
HAVING COUNT(nama_produk) > 3 ;

