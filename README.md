<h1 align="center">🏋️‍♂️ HMIN-SPORT</h1>
<p align="center">
  <b>SAS Pemrograman Website Lanjutan</b><br>
  Website e-commerce olahraga dengan fitur modern, responsif, dan mudah digunakan.
</p>

---

<p align="center">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Build-Responsive-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Collaboration-Teamwork-orange?style=for-the-badge"/>
</p>

---

## 📚 Tentang Proyek  
**HMIN-SPORT** adalah aplikasi web bertema olahraga yang dikembangkan sebagai proyek akhir SAS Pemrograman Website Lanjutan.  
Website ini dirancang menyerupai platform e-commerce professional dengan tujuan:

- Menyediakan berbagai kebutuhan olahraga dalam satu website  
- Memberikan pengalaman berbelanja yang cepat, nyaman, dan modern  
- Mengaplikasikan konsep real-world web development  
- Melatih pengembangan antarmuka, database, dan interaktivitas frontend  

Proyek ini juga menjadi simulasi nyata bagaimana website komersial bekerja, mencakup:

- Desain UI/UX  
- Interaksi pengguna  
- Manajemen produk  
- Brand filtering  
- Sistem keranjang (cart)  
- Autentikasi pengguna  
- Pengolahan database produk  

Dengan konsep desain yang dikembangkan dari Figma, HMIN-SPORT menjadi aplikasi lengkap yang tidak hanya fokus pada tampilan, tetapi juga struktur dan alur penggunaan.

---

## 🛍️ Kategori Produk yang Tersedia  
- 👕 **Pakaian olahraga** (jersey, training set, hoodie, dll)  
- 🏐 **Perlengkapan olahraga** (sepatu, tas, bola, aksesoris)  
- 🏋️ **Peralatan fitness** (dumbbell, handgrip, matras)  
- 🎒 **Aksesoris brand olahraga**  
- ⭐ Produk dari brand ternama seperti **Nike, Puma, Adidas, Yonex, New Balance**, dan lainnya  

---

## 🎨 Desain Proyek  
🔗 Figma Project  
https://www.figma.com/design/kWbiiIv4rhLkQV8MC2EWHR/Untitled?node-id=0-1

---

## 👨‍💻 Tim Pengembang  
Terima kasih kepada anggota tim yang berkolaborasi dalam proyek ini:

- 🧑‍💻 **Yansen-loav**  
- 🧑‍💻 **Fernandez-oss**  
- 🧑‍💻 **kepin28**  

---

## ✨ Fitur Unggulan  

### **🎨 1. Desain Modern & Responsif**
- Tampilan clean & elegan  
- Responsive untuk semua device (HP/tablet/laptop)  

### **🛒 2. Sistem Keranjang Belanja**
- Tambah produk ke keranjang  
- Menghitung jumlah item  
- Relasi langsung ke user & produk  

### **⭐ 3. Brand Filtering**
Filter produk berdasarkan brand favorit seperti Nike, Puma, Adidas.

### **👤 4. Sistem Login & Register**
- Register dengan email  
- Login dengan validasi  
- Password terenkripsi (bcrypt)  

### **📦 5. Sistem Manajemen Produk**
- Nama produk  
- Harga  
- Brand  
- Rating  
- Gambar  
- Stok  
- Deskripsi  

### **🚀 6. Optimized Performance**
- Asset ringan  
- Gambar terkompresi  
- Struktur code rapi  

---

## 🗂️ Struktur Folder Project  

```txt
/
├── assets/
│   ├── images/
│   ├── icons/
│   └── css/
├── brand/
├── produk/
├── keranjang/
├── users/
├── index.php
├── koneksi.php
└── README.md

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

