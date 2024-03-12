# TP1PROVIS2024C2

## Deskripsi Program
Program file downloader menggunakan bahasa Dart yang mengimplementasikan OOP (Object-Oriented Programming) dan asynchronous dengan penggunaan Future dan async/await untuk melakukan beberapa tugas secara parallel.

## Desain Program
![TP1Provis drawio](https://github.com/Osaraku/TP1PROVIS2024C2/assets/117560099/c0d80f6f-1520-4546-a7c9-c0cfdb21e470)

## Penjelasan Desain Program
Berikut penjelasan kelas-kelas pada desain diatas:
1. Kelas File:
   - Kelas `File` merupakan parent dari kelas `Image` dan `Document`
   - Kelas ini memiliki atribut `_url` dan `_size` yang merupakan URL file dan ukuran file.
   - Terdapat konstruktor untuk inisialisasi atribut `_url` dan `_size`.
   - Getter dan setter digunakan untuk mengakses dan memodifikasi atribut `_url` dan `_size`.
2. Kelas Image:
   - Kelasi ini adalah kelas turunan dari kelas `File` yang menambahkan atribut `_resolution` dan `_format`.
   - Terdapat konstruktor yang memanggil konstruktor kelas induk (`super`) untuk inisialisasi atribut `_url` dan `_size`, serta inisialisasi atribut tambahan.
   - Getter dan setter digunakan untuk mengakses dan memodifikasi atribut `_resolution` dan `_format`.
3. Kelas Document:
   - Seperti kelas `Image`, kelas ini juga adalah kelas turunan dari `File` yang menambahkan atribut `_format` dan `_author`.
   - Konstruktor kelas `Document` juga memanggil konstruktor kelas induk (`super`) untuk inisialisasi atribut `_url` dan `_size`, serta inisialisasi atribut tambahan.
   - Getter dan setter digunakan untuk mengakses dan memodifikasi atribut `_format` dan `_author`.
4. Kelas DownloadImage:
   - Kelas ini adalah kelas yang bertanggung jawab untuk mengelola unduhan gambar.
   - Mempunyai atribut `images[]` berupa daftar gambar yang akan diunduh.
   - Memiliki metode `addImage()` untuk menambahkan gambar ke dalam daftar unduhan.
   - Memiliki metode `downloading()` untuk melakukan unduhan secara asinkron. Metode ini mencetak detail unduhan dan menghitung total ukuran gambar yang diunduh.
5. Kelas DownloadDocument:
   - Kelas ini mirip dengan kelas `ImageDownloader`, kelas `DocumentDownloader` ini adalah kelas yang mengelola unduhan dokumen.
   - Mempunyai atribut `documents[]` berupa daftar dokumen yang akan diunduh.
   - Memiliki metode `addDocument()` untuk menambahkan dokumen ke dalam daftar unduhan.
   - Memiliki metode `downloading()` untuk melakukan unduhan secara asinkron. Metode ini mencetak detail unduhan dan menghitung total ukuran dokumen yang diunduh.

## Dokumentasi
![screenshot](https://github.com/Osaraku/TP1PROVIS2024C2/assets/117560099/806755cb-9d2a-4dc5-898c-4cf9d38c3a20)
