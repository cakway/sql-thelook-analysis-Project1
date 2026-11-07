# 📊 Learning SQL with Google BigQuery: `thelook_ecommerce`

Dokumen ini berisi sekumpulan kueri SQL dasar yang digunakan untuk mempelajari eksplorasi data (*Data Exploration*) menggunakan dataset publik `thelook_ecommerce` di **Google BigQuery**.

Proyek ini berfokus pada pengenalan dan latihan penggunaan perintah dasar `SELECT`, pemodelan filter kolom, penambahan komentar (*comments*), serta pemanfaatan klausa `LIMIT` untuk mengoptimalkan kinerja kueri.

---

## 🗂️ Dataset Info

- **Source**: `bigquery-public-data.thelook_ecommerce`
- **Platform**: Google BigQuery Public Datasets
- **Tabel yang Digunakan**:
  - `orders`: Menyimpan informasi transaksi pemesanan.
  - `users`: Menyimpan informasi profil pengguna/pelanggan.
  - `products`: Menyimpan katalog produk dan rincian harganya.

---

## 📜 Kueri dan Latihan SQL

Berikut adalah daftar kueri SQL yang terdapat dalam repositori ini beserta penjelasannya:

### 1. Eksplorasi Data Pemesanan (`orders`)

Memilih kolom spesifik (`order_id`, `status`, `created_at`) untuk melihat 10 transaksi pertama.

```sql
SELECT 
  order_id,
  status,
  created_at
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 10;
```

---

### 2. Eksplorasi Profil Pengguna (`users`)

Mengambil 10 baris pertama data profil pengguna secara umum, serta memilih kolom spesifik seperti `id`, `gender`, `country`, dan `created_at`.

```sql
-- Mengambil seluruh kolom pengguna (sampel 10 baris)
SELECT *
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

-- Mengambil kolom spesifik pengguna
SELECT 
  id,
  gender,
  country,
  created_at
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

-- Contoh pengambil data kontak pengguna
SELECT
  first_name, -- kolom 1
  email,      -- kolom 2
  age         -- kolom 3
FROM bigquery-public-data.thelook_ecommerce.users;
```

---

### 3. Eksplorasi Katalog Produk (`products`)

Mengambil rincian data produk dan informasi biaya (*cost*).

> **💡 Best Practice Note:** 
> Penggunaan `SELECT *` disarankan hanya untuk *quick preview* data dengan klausa `LIMIT`. Hindari penggunaan `SELECT *` pada lingkungan produksi/perusahaan untuk menghemat memori, biaya kueri, dan menjaga kinerja database.

```sql
-- Preview sampel data produk (Limit 10)
SELECT
  * 
FROM bigquery-public-data.thelook_ecommerce.products
LIMIT 10;

-- Pengambilan kolom terarah untuk analisis biaya produk
SELECT
  name,
  category,
  department,
  cost
FROM bigquery-public-data.thelook_ecommerce.products;
```

---

## 🛠️ Cara Menggunakan

1. Buka [Google BigQuery Console](https://console.cloud.google.com/bigquery).
2. Buat proyek Google Cloud baru jika belum memiliki.
3. Buka tab Query Editor.
4. Salin salah satu kueri SQL di atas dan jalankan (*Run*).

---

## 📌 Catatan Pembelajaran (Key Takeaways)

- **`SELECT`**: Digunakan untuk menentukan kolom apa saja yang ingin ditampilkan dari tabel.
- **`LIMIT`**: Membatasi jumlah baris yang dikembalikan, sangat berguna saat mengeksplorasi dataset berukuran besar di BigQuery.
- **Komentar (`--`)**: Digunakan untuk memberikan catatan/penjelasan pada kode tanpa mengeksekusinya.