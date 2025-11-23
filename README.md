<h1 align="center">🏋️‍♂️ HMIN-SPORT</h1>
<p align="center">
  <b>SAS Pemrograman Website Lanjutan</b><br>
  🚀 Proyek pengembangan aplikasi web bertema olahraga dengan fitur modern, responsif, dan interaktif.
</p>

---

<p align="center">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Build-Responsive-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Collaboration-Teamwork-orange?style=for-the-badge"/>
</p>

---

## 📖 Pengertian  
**HMIN-SPORT** adalah aplikasi web berbasis e-commerce yang menyediakan berbagai perlengkapan olahraga dari brand-brand ternama. Website ini dirancang sebagai bagian dari proyek *SAS Pemrograman Website Lanjutan* dan dibuat dengan pendekatan nyata seperti pengembangan website profesional.

Dalam proses pengembangannya, HMIN-SPORT menerapkan konsep:

- **Desain UI/UX modern** yang nyaman digunakan  
- **Responsivitas** yang menyesuaikan tampilan di berbagai perangkat  
- **Manajemen data produk** berbasis database MySQL  
- **Autentikasi pengguna** menggunakan enkripsi password  
- **Interaksi pengguna real-time** melalui JavaScript  
- **Struktur sistem belanja lengkap**, seperti brand filtering hingga keranjang belanja  

HMIN-SPORT tidak hanya berfungsi sebagai toko online, namun juga sebagai sarana pembelajaran untuk memahami bagaimana aplikasi web bekerja secara menyeluruh. Mulai dari pembuatan tampilan, pemisahan halaman, penyimpanan data, relasi database, hingga proses login dan pengolahan keranjang belanja oleh pengguna.

Selain itu, website ini berupaya memberikan pengalaman berbelanja digital dengan alur yang mudah dipahami:

1. Pengguna membuka halaman utama  
2. Pengguna melihat produk berdasarkan brand  
3. Pengguna dapat menelusuri detail produk  
4. Produk dapat dimasukkan ke keranjang  
5. Sistem akan menyimpan keranjang berdasarkan user yang login  
6. Pengguna dapat checkout atau mengelola kembali keranjang  

Melalui struktur dan fitur tersebut, HMIN-SPORT menjadi miniatur dari aplikasi e-commerce modern.

---

## 🎯 Tujuan Pengembangan
Proyek ini dikembangkan dengan beberapa tujuan pembelajaran, antara lain:

- 💡 Mengimplementasikan teori pemrograman web ke proyek nyata  
- 🔧 Mempelajari integrasi frontend dan backend secara langsung  
- 🗄️ Mengelola data dalam database menggunakan SQL  
- 🧠 Mengerti cara kerja sistem autentikasi  
- 🤝 Melatih kerja tim dalam membuat proyek yang terstruktur  
- 📦 Menghasilkan aplikasi web fungsional sesuai standar industri  

---

## 🛍️ Kategori Produk yang Tersedia  
Website menyediakan berbagai kategori seperti:

- 👕 **Pakaian olahraga** (jersey, kaos olahraga, training set, hoodie, dll)  
- 🏐 **Perlengkapan olahraga** (sepatu, tas gym, bola, dll)  
- 🏋️ **Peralatan fitness** (dumbbell, handgrip, matras olahraga)  
- 🏸 **Raket badminton & perlengkapannya**  

Semua produk dilengkapi gambar, deskripsi, stok, harga, dan brand.

---

## 🧩 Alur Pengguna di Website
Agar pengguna dapat memaksimalkan fitur website, berikut alurnya:

1. **Melihat beranda** → tampil produk dan brand rekomendasi  
2. **Memilih brand** → filter produk berdasarkan merk tertentu  
3. **Melihat detail produk** → menampilkan deskripsi, rating, stok  
4. **Login / Daftar akun** → agar keranjang dapat tersimpan  
5. **Menambahkan produk ke keranjang**  
6. **Melihat keranjang** → pengguna dapat mengatur jumlah atau menghapus item  
7. **Checkout (simulasi)**  

---

## 🎨 Link Desain  
🔗 Figma Project:  
https://www.figma.com/design/kWbiiIv4rhLkQV8MC2EWHR/Untitled?node-id=0-1&t=42KpWn2v4UPbNkJn-1  

Desain dibuat terlebih dahulu di Figma untuk memastikan tampilan konsisten, rapi, dan modern sebelum dikembangkan ke dalam kode.

---

## 👨‍💻 Contributors  
✨ Terima kasih kepada tim hebat:  
- 🧑‍💻 **Yansen-loav**  
- 🧑‍💻 **Fernandez-oss**  
- 🧑‍💻 **kepin28**  

---

## ✨ Fitur Utama  
HMIN-SPORT memiliki fitur-fitur berikut:

### 🎨 **1. Desain Modern & Responsif**
UI yang nyaman dan bisa menyesuaikan ukuran layar.

### 🛒 **2. Sistem Keranjang Belanja**
Produk ditambahkan ke keranjang dan disimpan per-user.

### 🔍 **3. Filter Berdasarkan Brand**
Produk dapat dicari berdasarkan brand olahraga terkenal.

### 👤 **4. Autentikasi Pengguna**
- Login  
- Register  
- Password di-hash menggunakan bcrypt  

### ⭐ **5. Detail Produk Lengkap**
Terdapat:
- Nama produk  
- Harga  
- Brand  
- Rating  
- Jumlah terjual  
- Stok  
- Gambar  
- Deskripsi  

### ⚡ **6. Optimized Performance**
Loading cepat dan struktur file rapi.

---

## 📁 Struktur Folder (Contoh)
```txt
/
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
├── brand/
├── produk/
├── users/
├── keranjang/
├── koneksi.php
├── index.php
└── README.md
-- Database: `pwlmengenaskan`

CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `brand` (`id`, `brand`, `logo`) VALUES
(1, 'Puma', 'puma.png'),
(2, 'Nike', 'nike 2.png'),
(3, 'Adidas', 'adidas1.png'),
(4, 'New Balance', 'nb 1.png'),
(8, 'Yonex', '748a464251fd4dc7f96be4a2fdc6c617.png'),
(10, 'Lining', 'Li-Ning_logo_black.svg.png'),
(11, 'Aero Street', 'aerostreet.png');

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL UNIQUE,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `produk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `terjual` int DEFAULT NULL,
  `orang` int DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `kondisi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `keranjang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `produk_id` int NOT NULL,
  `jumlah` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE
);
