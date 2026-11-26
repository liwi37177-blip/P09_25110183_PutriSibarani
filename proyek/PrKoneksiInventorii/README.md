# Inventori Laboratorium — Praktikum 7

Nama: putri sibarani
NIM: 25110183
Kelas: TK - C pagi

## Materi
Koneksi JDBC, GUI Swing, CREATE dan READ.

## Lingkungan
NetBeans IDE 8.2, JDK 8, XAMPP, MySQL Connector/J 26.7.0.

## Menjalankan
1. Nyalakan MySQL pada XAMPP.
2. Siapkan database db_inventori_lab; gunakan SQL pada folder database
   hanya pada lingkungan baru yang sesuai, jangan menimpa data yang sudah ada.
3. Siapkan akun lab_p06 dengan hak SELECT dan INSERT.
4. Buka proyek melalui File > Open Project pada NetBeans.
5. Pastikan JAR pada lib terpasang di Libraries.
6. Salin config/database.example.properties menjadi config/database.properties.
7. Isi password lokal dan sesuaikan port.
8. Run File pada koneksi/UjiKoneksi.java sampai semua tahap berhasil.
9. Run File pada tampilan/FormBarang.java.

## Bukti
Screenshot pada bukti/pertemuan-07.
Laporan pada laporan/Laporan_P07_NIM_Nama.pdf.

## Catatan
Konfigurasi asli tidak disertakan karena berisi password.

## Praktikum 9 - Login dan Hak Akses
- Main class: tampilan.FormLogin
- Akun demo dibuat dengan sql/P09_akun_demo.sql (database latihan lokal)
- Admin: boleh menambah barang. Petugas: hanya melihat dan memuat ulang.
- Hak akses diperiksa di dalam simpanBarang(), termasuk lewat Ctrl+S.
- Bukti: bukti/pertemuan-09, laporan: laporan/Laporan_P09_NIM_Nama.pdf