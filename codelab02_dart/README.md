Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131




**Tugas Praktikum Pertemuan 2**


**Soal 1**

output:

<img width="794" height="629" alt="image" src="https://github.com/user-attachments/assets/2b713b2f-7d6a-498a-965f-bb3dea0f1e50" />

**Soal 2**

Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

**Jawab:**

Flutter dibangun dengan bahasa Dart sebagai pondasi utamanya. Semua logika aplikasi, pengelolaan state, pemanggilan API, hingga tampilan UI yang ada di Flutter ditulis dalam Dart.
- Jika kita tidak memahami Dart, maka:
- Akan sulit memahami cara kerja widget di Flutter.
- Tidak bisa menulis logika bisnis aplikasi dengan baik.
- Bingung dengan konsep seperti asynchronous programming (async dan await) yang sangat sering digunakan di Flutter.
- Akan kesulitan melakukan debugging saat aplikasi error.


**Soal 3**

Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

**Jawab:**

Rangkuman Dart dalam 100 Detik

a. Dart adalah bahasa pemrograman general-purpose yang type-safe, dikembangkan oleh Google pada tahun 2011.

b. Awalnya ditujukan sebagai alternatif JavaScript, tapi tidak populer di komunitas web.

c. Bangkit kembali setelah diadopsi oleh Flutter, kini menjadi salah satu bahasa paling disukai di industri.

d. Keunggulan utama:
  - Bisa dikompilasi ke ARM/x64 machine code, JavaScript, dan self-contained executables.
  - Mendukung JIT (Just-in-Time) → produktif dengan hot reload.
  - Mendukung AOT (Ahead-of-Time) → performa tinggi di produksi.
  - Semua kode berjalan di dalam isolate → mendukung async dan parallel execution.
    
e. Fitur bahasa:
  - Type-safe: variabel sesuai tipe, minim runtime error.
  - Flexible typing: mendukung dynamic bila dibutuhkan.
  - Null safety: nilai hanya bisa null jika diizinkan eksplisit.
  - Sintaks mirip Java + JavaScript.
  - Semua data adalah objek (kecuali null).
  - Mendukung paradigma functional programming & OOP dengan mixin-based inheritance.
    
f. Ekosistem:
  - Paket dikelola dengan Pub, tersedia ribuan paket open source.


**Soal 4**

Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel!

**Jawab:**

- Null Safety
  
  Definisi: Fitur yang mencegah variabel memiliki nilai null secara tidak sengaja.

  Dengan null safety, variabel harus diinisialisasi sebelum digunakan, kecuali diberi tanda ?.

  Membantu mencegah error umum seperti NullPointerException.
  
  Contoh:
  
  <img width="727" height="503" alt="image" src="https://github.com/user-attachments/assets/2d448d7a-0ee5-4f0d-8890-95c2cb22de36" />


- Late Variable
  
  Definisi: Variabel yang dideklarasikan tanpa nilai awal, tetapi kita berjanji akan menginisialisasinya sebelum dipakai.
  
  Berguna saat nilai tidak bisa langsung ditentukan pada saat deklarasi, misalnya data dari API.
  
  Contoh:
  
  <img width="950" height="455" alt="image" src="https://github.com/user-attachments/assets/207d451a-9db8-4902-a7bd-49080c9ca34d" />



