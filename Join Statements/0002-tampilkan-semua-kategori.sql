--Tampilkan semua kategori meskipun belum memiliki produk. 

SELECT 
    c.nama AS nama_kategori,
    cc.nama_produk
FROM produk_kategori c
LEFT JOIN produk cc ON c.id = cc.id_kategori;