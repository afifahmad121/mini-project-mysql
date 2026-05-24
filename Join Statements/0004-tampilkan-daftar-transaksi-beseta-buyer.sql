-- Tampilkan daftar transaksi beserta nama buyer. 


SELECT 
    l.id AS id_transaksi,
    p.nama AS nama_buyer,
    l.id_produk,
    l.status_langganan
FROM 
    langanan l
INNER JOIN 
    pengguna p ON l.id_pengguna = p.id;