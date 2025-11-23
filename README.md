<h1 align="center">🏋️‍♂️ HMIN-SPORT</h1>
<p align="center">
  <b>SAS Pemrograman Website Lanjutan</b><br>
  🚀 Proyek pengembangan aplikasi web bertema olahraga dengan fitur modern & interaktif.
</p>

---

<p align="center">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Build-Responsive-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Collaboration-Teamwork-orange?style=for-the-badge"/>
</p>

---

## 📖 Pengertian  
**HMIN-SPORT** merupakan sebuah aplikasi web berbasis e-commerce yang dirancang khusus untuk menyediakan berbagai kebutuhan olahraga dalam satu platform.  
Website ini dibangun sebagai bagian dari proyek *SAS Pemrograman Website Lanjutan*, dengan fokus pada penerapan langsung teori-teori pengembangan web modern seperti:

- Desain antarmuka pengguna (UI/UX) yang efektif  
- Responsivitas pada berbagai ukuran layar  
- Struktur data yang terorganisir  
- Interaksi pengguna yang intuitif  
- Integrasi database untuk sistem belanja  

HMIN-SPORT tidak hanya menjadi tugas akademik, tetapi juga simulasi nyata bagaimana sebuah website komersial bekerja — mulai dari menampilkan produk, menampilkan brand terkenal, mengelola keranjang belanja, hingga sistem autentikasi pengguna.

🛍️ Website ini menyediakan berbagai kategori produk olahraga, antara lain:
- 👕 **Pakaian Olahraga** seperti jersey, training set, hoodie, dll  
- 🏐 **Perlengkapan Olahraga** seperti sepatu, tas, bola, aksesoris  
- 🏋️ **Alat-alat Fitness** seperti dumbbell, matras, handgrip, dll  

Tujuan pengembangan HMIN-SPORT:
- 💡 Mengaplikasikan teori pemrograman web ke real project  
- 🤝 Melatih kolaborasi tim dalam workflow pengembangan  
- 🚀 Menghasilkan aplikasi web yang modern, interaktif, dan stabil  
- 🧩 Memahami proses end-to-end pembuatan website — dari desain, frontend, backend, hingga database  

---

## 🎨 Link Desain  
🔗 Figma Project:  
https://www.figma.com/design/kWbiiIv4rhLkQV8MC2EWHR/Untitled?node-id=0-1&t=42KpWn2v4UPbNkJn-1  

---

## 👨‍💻 Contributors  
✨ Terima kasih kepada tim hebat:  
- 🧑‍💻 **Yansen-loav**  
- 🧑‍💻 **Fernandez-oss**  
- 🧑‍💻 **kepin28**  

---

## ✨ Fitur Utama  
- ✅ **Responsive Design** — Optimal di HP & desktop  
- 🎨 **UI/UX Modern** — Mengikuti konsep Figma  
- ⚡ **Optimized Performance** — Loading cepat  
- 🛒 **Sistem Keranjang Belanja**  
- 🔍 **Filter Berdasarkan Brand**  
- 👤 **User Authentication (login & register)**  
- 🔐 **Password terenkripsi (bcrypt)**  

---

## 🧱 Entitas Database  

### **1. users**  
Data akun pengguna  
Kolom: id, nama, email, password  

### **2. brand**  
Daftar brand olahraga  
Kolom: id, brand, logo  

### **3. produk**  
Data seluruh produk yang tersedia  
Kolom: id, nama_produk, harga, brand, rating, terjual, orang, gambar, stock, deskripsi, kondisi  

### **4. keranjang**  
Relasi user ↔ produk  
Kolom: id, user_id, produk_id, jumlah  
Dengan foreign key ke `users` & `produk`  

---

## 🛠 Tech Stack  
- 🌐 HTML  
- 🎨 CSS  
- ⚙️ JavaScript  
- 🛢️ MySQL (phpMyAdmin)  
- ✏️ Figma  

---

## 🗄️ Setup Database  
Gunakan SQL berikut (diambil dari file `.sql` asli) untuk membuat database:

```sql
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

