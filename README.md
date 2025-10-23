# 📝 Aplikasi Daftar Tugas Dinamis (Flutter)

Proyek ini merupakan aplikasi Flutter sederhana yang menampilkan **fitur interaktif daftar tugas (To-Do List)**.  
Pengguna dapat menambahkan, mengetik, dan menandai tugas yang sudah selesai secara dinamis.

---

## 👤 Identitas
**Nama:** Fadillah Dani Prawoto  
**NIM:** 2310130004  
**Jurusan:** Ilmu Komputer  

---


---

## 🚀 Fitur Utama

✅ **Menambahkan Item (event onPressed)**  
Pengguna dapat menambah tugas baru dengan menekan tombol **"+"** pada kolom input.

✅ **Mengetik Tugas (event onChanged)**  
Setiap kali pengguna mengetik di kolom input, teks yang dimasukkan akan dideteksi secara real-time.

✅ **Menandai Tugas Selesai (GestureDetector onTap)**  
Pengguna dapat mengetuk item tugas untuk menandainya sebagai selesai (akan muncul tanda centang dan teks tercoret).

✅ **Menampilkan Daftar Tugas Dinamis**  
Daftar tugas diperbarui secara otomatis setiap kali pengguna menambah atau mengubah status tugas.

---

## 🛠️ Cara Menjalankan

1. Pastikan Flutter sudah terinstal di perangkat Anda.  
   Cek versi Flutter:
   ```bash

## Jalankan perintah berikut di terminal:

flutter pub get
flutter run


## Deskripsi Singkat

Aplikasi ini dibuat sebagai latihan untuk memahami interaktivitas Flutter melalui event-event penting seperti:

onPressed → untuk aksi tombol

onChanged → untuk mendeteksi input teks

GestureDetector (onTap) → untuk interaksi sentuh pada elemen daftar

Aplikasi ini juga menampilkan daftar tugas yang diperbarui secara real-time menggunakan konsep StatefulWidget dan setState().


## Tampilan Aplikasi (Deskripsi)

Kolom Input: Ketik tugas baru yang ingin ditambahkan.

Tombol + (Tambah): Untuk menambahkan tugas ke daftar.

Daftar Tugas: Menampilkan semua tugas yang sudah dimasukkan.

Tandai Selesai: Ketuk item untuk menandai tugas sebagai selesai.


## Teknologi yang Digunakan

Flutter SDK

Dart Language

Material Design Components


   flutter --version

