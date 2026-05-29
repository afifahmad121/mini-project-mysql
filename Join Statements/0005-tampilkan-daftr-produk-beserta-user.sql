--  Tampilkan daftar produk beserta nama user yang mengupload produk tersebut.

SELECT 
    p.nama_produk,
    p.harga_produk,
    u.nama AS nama_pengguna
FROM 
    produk p
INNER JOIN 
    langanan l ON p.id = l.id_produk
INNER JOIN 
    pengguna u ON l.id_pengguna = u.id
