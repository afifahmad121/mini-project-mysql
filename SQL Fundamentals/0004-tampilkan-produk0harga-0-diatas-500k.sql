-- Tampilkan produk yang memiliki stok 0 ATAU harga di atas 
-- 500.000. 

SELECT * FROM produk 
 c WHERE c.stok = 0 OR c.harga_produk > 500000;