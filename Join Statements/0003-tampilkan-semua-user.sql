--Tampilkan semua user meskipun belum pernah membeli produk. 


SELECT 
    p.id AS id_pengguna,
    p.nama AS nama_pengguna,
    p.email,
    l.id_produk,
    l.status_langganan
FROM 
    pengguna p
LEFT JOIN 
    langanan l ON p.id = l.id_pengguna;