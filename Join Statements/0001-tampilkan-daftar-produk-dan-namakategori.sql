-- Tampilkan daftar produk beserta nama kategorinya.


SELECT c.nama AS produk_kategori, cc.nama_produk FROM  produk_kategori c 
JOIN produk cc ON cc.id = c.id;
  

