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
**HMIN-SPORT** merupakan sebuah aplikasi web berbasis e-commerce yang dirancang untuk memenuhi berbagai kebutuhan olahraga.  
Proyek ini dikembangkan sebagai bagian dari *SAS Pemrograman Website Lanjutan*, yang menekankan pengaplikasian konsep modern seperti:

- Desain UI/UX responsif  
- Pengelolaan data dinamis  
- Interaksi pengguna yang ramah  
- Manajemen produk & keranjang  
- Sistem login dengan autentikasi aman  

Aplikasi ini mensimulasikan proses nyata e-commerce, mulai dari tampilan katalog produk, filter berdasarkan brand, detail produk, hingga pengelolaan keranjang belanja.

---

## 🎨 Link Desain  
Figma Project:  
https://www.figma.com/design/kWbiiIv4rhLkQV8MC2EWHR/Untitled?node-id=0-1

---

## 👨‍💻 Contributors  
- 🧑‍💻 **Yansen-loav**  
- 🧑‍💻 **Fernandez-oss**  
- 🧑‍💻 **kepin28**  

---

## ✨ Fitur Utama  
- Responsive Design  
- UI/UX Modern  
- Optimized Performance  
- Filter Berdasarkan Brand  
- Sistem Keranjang Belanja  
- Login & Register User  
- Penyimpanan password terenkripsi  

---

# 🚀 Fitur Utama Aplikasi

HMIN-SPORT hadir dengan fitur lengkap untuk mendukung pengalaman belanja pengguna:

### 1️⃣ **User Authentication**
- Register & login akun  
- Email unik  
- Password disimpan dengan hash aman  
- Session untuk menjaga status login  

### 2️⃣ **Manajemen Produk**
- List produk lengkap dengan harga, rating, stok, deskripsi  
- Gambar produk  
- Tampilan katalog modern & responsif  

### 3️⃣ **Filter Berdasarkan Brand**
- Pengguna bisa memilih produk berdasarkan brand tertentu  
- Mempermudah pencarian barang  

### 4️⃣ **Keranjang Belanja**
- Tambah produk ke keranjang  
- Jumlah produk bisa disesuaikan  
- Data tersimpan dalam database (bukan sesi lokal)  
- Sistem relasi user ↔ produk  

### 5️⃣ **UI/UX Modern**
- Responsive design untuk HP & desktop  
- Layout elegan sesuai desain Figma  

### 6️⃣ **Keamanan Aplikasi**
- Password pengguna terenkripsi  
- Query database stabil  

---

# 🧱 Entitas & Struktur Database

Aplikasi menggunakan **4 entitas utama**:

---

## **1️⃣ users**
Akun pengguna aplikasi.

| Kolom | Tipe | Keterangan |
|-------|-------|------------|
| id | INT | Primary key |
| nama | VARCHAR(100) | Nama pengguna |
| email | VARCHAR(100) | Email unik |
| password | VARCHAR(255) | Password terenkripsi |

---

## **2️⃣ brand**
Brand olahraga terkenal.

| Kolom | Tipe | Keterangan |
|-------|-------|------------|
| id | INT | Primary key |
| brand | VARCHAR(100) | Nama brand |
| logo | VARCHAR(255) | File logo |

---

## **3️⃣ produk**
Produk yang dijual.

| Kolom | Tipe | Keterangan |
|-------|-------|------------|
| id | INT | Primary key |
| nama_produk | VARCHAR(255) | Nama produk |
| harga | INT | Harga |
| brand | VARCHAR(50) | Brand |
| rating | DECIMAL | Rating |
| terjual | INT | Jumlah terjual |
| orang | INT | Jumlah reviewer |
| gambar | VARCHAR(255) | Foto produk |
| stock | VARCHAR(255) | Ketersediaan |
| deskripsi | TEXT | Detail produk |
| kondisi | VARCHAR(255) | Kondisi barang |

---

## **4️⃣ keranjang**
Relasi user dan produk.

| Kolom | Tipe | Keterangan |
|-------|-------|------------|
| id | INT | Primary key |
| user_id | INT | Pengguna |
| produk_id | INT | Produk |
| jumlah | INT | Jumlah barang |

---

# 🛢 Tech Stack  
- HTML  
- CSS  
- JavaScript  
- MySQL  
- XAMPP  
- Figma  

---

# 🗄️ Setup Database  

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
