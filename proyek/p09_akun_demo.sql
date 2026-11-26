-- Praktikum 9: akun demo aplikasi (hanya untuk database latihan lokal)
-- Jalankan di phpMyAdmin: pilih database db_inventori_lab -> tab SQL -> Go.
-- Aman dijalankan ulang: akun demo dikembalikan ke kondisi awal,
-- akun lain (admin, petugas1, dan akun buatan Anda) tidak diubah.
INSERT INTO pengguna (username, password_hash, nama_lengkap, peran, aktif) VALUES
('p09_admin', 'pbkdf2-sha256:600000:gIDSj56tnhPft99YxAhpGw==:Vq2imMOYUchLzP7X0jSQX7LjcpMK4JJIgAoZ/ADDFcc=', 'Admin Demo P09', 'admin', 1),
('p09_petugas', 'pbkdf2-sha256:600000:KZ6ERAvl8i1j7gcGUP6k/w==:Vte08GM6nZvxFpK09bEYEWP8/8bsKX46RFd+SlJD6H0=', 'Petugas Demo P09', 'petugas', 1),
('p09_nonaktif', 'pbkdf2-sha256:600000:ap+ZRhmIXm79MKXxY6PmJA==:44PSR+WkryZ7rhyNEGrDw4a3iPXc+go5PfkgHVYVpho=', 'Akun Nonaktif P09', 'petugas', 0)
ON DUPLICATE KEY UPDATE
    password_hash = VALUES(password_hash),
    nama_lengkap = VALUES(nama_lengkap),
    peran = VALUES(peran),
    aktif = VALUES(aktif);

SELECT username, nama_lengkap, peran, aktif
FROM pengguna
WHERE username IN ('p09_admin', 'p09_petugas', 'p09_nonaktif')
ORDER BY username;