<h1 align="center">🏋️‍♂️ HMIN-SPORT</h1>
<p align="center">
  <b>SAS Pemrograman Website Lanjutan</b><br>
  🚀 Proyek untuk tugas lanjutan pengembangan website dengan fitur modern & interaktif.
</p>

---

<p align="center">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Build-Responsive-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Collaboration-Teamwork-orange?style=for-the-badge"/>
</p>

---

## 📖 Pengertian  
**HMIN-SPORT** adalah proyek pengembangan website bertema olahraga yang dirancang untuk menarik para pelanggan/pengguna agar berbelanja pada layanan kami.  
Website ini dibuat dengan memperhatikan aspek **desain modern, responsivitas, dan performa** agar dapat memberikan pengalaman terbaik kepada pengguna.

🛍️ Website ini menyediakan berbagai kebutuhan olahraga, di antaranya:  
- 👕 **Pakaian Olahraga** (jersey, training set, dll)  
- 🏐 **Perlengkapan Olahraga** (sepatu, tas, aksesoris, dll)  
- 🏋️ **Alat-alat Olahraga** (dumbbell, matras, bola, dll)  

Tujuan utama proyek ini:
- 💡 Menerapkan teori pemrograman web ke dalam praktik nyata  
- 🤝 Melatih kerja sama tim dalam pengembangan website  
- 🚀 Menghasilkan produk digital yang optimal dan usable  

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
- ✅ **Responsive Design** — Tampil optimal di HP & desktop  
- 🎨 **UI/UX Modern** — Mengikuti rancangan Figma  
- ⚡ **Optimized Performance** — Loading cepat & stabil  
- 🛒 **Shopping System** — Produk, keranjang, dan manajemen user  
- 🔍 **Brand Filtering** — Memilih produk berdasarkan brand  
- 👤 **User Authentication** — Login, register, password encrypted  

---

## 🧱 Entitas Database yang Digunakan  
Berikut tabel utama dalam sistem:

### **1. users**  
Menyimpan data akun pengguna.  
Kolom: id, nama, email, password

### **2. brand**  
Data merk olahraga.  
Kolom: id, brand, logo

### **3. produk**  
Data seluruh produk yang dijual.  
Kolom: id, nama_produk, harga, brand, rating, terjual, orang, gambar, stock, deskripsi, kondisi

### **4. keranjang**  
Relasi user → produk.  
Kolom: id, user_id, produk_id, jumlah  
Memiliki **foreign key** ke tabel users & produk.

---

## 🛠 Tech Stack  
- 🌐 HTML  
- 🎨 CSS  
- ⚙️ JavaScript  
- 🛢️ MySQL (phpMyAdmin)  
- ✏️ Figma  

---

## 🗄️ Setup Database  
Gunakan SQL berikut untuk setup database **pwlmengenaskan** sesuai file yang diupload:

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
