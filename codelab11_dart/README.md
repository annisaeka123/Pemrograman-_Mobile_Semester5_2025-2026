Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

--------------------------------------------------------------------------------

**11 | Pemrograman Asynchronous**

**PRAKTIKUM 1**

Langkah 1: Buat Project Baru dengan nama books

  Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.
  
  
  flutter pub add http

Langkah 2: Cek file pubspec.yaml

  Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini.

Langkah 3: Buka file main.dart, masukkan kode.

Langkah 4: Tambah method getData()

Langkah 5: Tambah kode di ElevatedButton

Hasil Run:


Soal

1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

  <img width="581" height="194" alt="image" src="https://github.com/user-attachments/assets/3f1635ae-d559-4fb8-9119-afaf9305d1f8" />


2. Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

  <img width="843" height="155" alt="image" src="https://github.com/user-attachments/assets/9d980dac-11e5-44f7-a166-7cc6e42036d7" />

  <img width="959" height="1021" alt="image" src="https://github.com/user-attachments/assets/55c47904-5255-4107-9751-64c84ebe7c30" />



3. Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.

  a. Fungsi substring(0, 450)
  
  Bagian value.body.toString().substring(0, 450) digunakan untuk memotong isi data (string) hasil dari getData() agar tidak terlalu panjang saat ditampilkan di layar. 
  
  - value.body berisi respons HTTP dari pemanggilan API atau sumber data.
  - toString() mengubahnya menjadi teks biasa.
  - substring(0, 450) mengambil 450 karakter pertama dari teks tersebut, mulai dari indeks ke-0 sampai ke-449.
  
  Tujuannya adalah agar hasil yang ditampilkan hanya sebagian (preview), bukan seluruh isi data, sehingga tampilan UI tetap rapi dan tidak penuh.

  b. Fungsi catchError

  Bagian .catchError((_) { ... }) berfungsi untuk menangani error yang mungkin terjadi selama proses asynchronous getData(). Jika terjadi kesalahan (misalnya koneksi internet terputus atau URL tidak ditemukan), blok catchError akan dijalankan.
  
  Di dalamnya terdapat kode:

  result = 'An error occurred';
  setState(() {});

  Artinya, jika terjadi error, variabel result akan diisi dengan pesan “An error occurred” dan setState() dipanggil untuk memperbarui tampilan agar pesan kesalahan tersebut langsung muncul di UI.

**PRAKTIKUM 2** : Menggunakan await/async untuk menghindari callbacks

Langkah 1: Buka file main.dart

  Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.

Langkah 2: Tambah method count()

Langkah 3: Panggil count()

Langkah 4: Run



Soal

4. Jelaskan maksud kode langkah 1 dan 2 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README.



**PARKTIKUM 3** : Menggunakan Completer di Future

Langkah 1: Buka main.dart, Pastikan telah impor package async.

Langkah 2: Tambahkan variabel dan method

Tambahkan variabel late dan method di class _FuturePageState

Langkah 3: Ganti isi kode onPressed()

Langkah 4: Terakhir, run atau tekan F5 untuk melihat hasilnya. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

<img width="387" height="821" alt="image" src="https://github.com/user-attachments/assets/5fccc924-3cef-4bb0-802a-e0140a5b0597" />

Langkah 5: Ganti method calculate(), atau membuat calculate2()

Langkah 6: Ganti kode onPressed()


Soal

5. Jelaskan maksud kode langkah 2 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.

  Langkah ini memperlihatkan cara manual membuat Future menggunakan Completer, di mana kamu:
  
  - Membuat Future kosong (Completer<int>())
  
  - Menjalankan proses async (calculate())
  
  - Menyelesaikannya secara eksplisit (completer.complete(42))
  
  Dengan pendekatan ini, developer punya kontrol penuh kapan dan bagaimana Future diselesaikan, bukan bergantung pada return async/await otomatis.



6. Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.

  - Langkah 2: fokus pada how to complete Future successfully → complete(value), menunjukkan penggunaan Completer untuk menyelesaikan Future dengan hasil sukses.

  - Langkah 5–6: memperkenalkan error handling dalam Future manual → completeError(error), memperluas konsep dengan menambahkan penanganan error, menunjukkan bagaimana Completer juga bisa menyelesaikan Future dengan error, serta bagaimana cara menangkapnya menggunakan .then() dan .catchError().



**PRAKTIKUM 4** : Memanggil Future secara paralel

Langkah 1: Buka file main.dart, Tambahkan method ini ke dalam class _FuturePageState

Langkah 2: Edit onPressed()

hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

Langkah 3: Run

Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

Langkah 4: Ganti variabel futureGroup, dapat menggunakan FutureGroup dengan Future.wait


Soal

7. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.



8. Jelaskan maksud perbedaan kode langkah 1 dan 4!
   
  Pada langkah 1, kode menggunakan FutureGroup dari package async, sedangkan pada langkah 4, kode menggunakan Future.wait dari library bawaan Dart (dart:async).
Keduanya sama-sama berfungsi untuk menjalankan beberapa Future secara paralel, tetapi memiliki perbedaan mekanisme dan tujuan penggunaan.

  FutureGroup digunakan ketika Future yang dijalankan perlu ditambahkan secara dinamis sebelum dijalankan, sedangkan Future.wait digunakan untuk menjalankan beberapa Future yang sudah diketahui sejak awal dalam satu baris kode yang lebih sederhana.
Keduanya menghasilkan keluaran berupa List nilai hasil eksekusi Future setelah semua proses selesai.

**PRAKTIKUM 5**: Menangani Respon Error pada Async Code

Langkah 1: Buka file main.dart, Tambahkan method returnError() ke dalam class _FuturePageState

Langkah 2: Ganti kode ElevatedButton

Langkah 3: Run



Pada bagian terminal akan melihat teks Complete seperti berikut.

<img width="880" height="147" alt="image" src="https://github.com/user-attachments/assets/86efae34-b7cf-4168-8230-4bc47bef2a6c" />


Langkah 4: Tambah method handleError()



Soal

9. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.



10. Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

    a. Ketika tombol GO! ditekan:

    - Program akan menunggu selama 2 detik (karena await Future.delayed(...))
    
    - Kemudian fungsi returnError() melempar Exception
    
      Exception: Something terrible happened!
    
    
    - Bagian catch di handleError() akan menangkap error tersebut dan menampilkan teks itu ke variabel result
    
    - Widget akan menampilkan:
    
      Exception: Something terrible happened!
    
    
    - Di terminal, akan muncul teks:
    
      Complete

    b. Perbedaannya:

    - Pada langkah 2, error ditangani menggunakan callback (.catchError() dan .whenComplete()).
    
    - Pada langkah 4, error ditangani menggunakan try-catch-finally dengan gaya async/await yang lebih terstruktur dan mudah dibaca.
    
    - Keduanya menghasilkan keluaran yang sama, tetapi pendekatan async/await (langkah 4) lebih direkomendasikan untuk proyek besar karena lebih rapi dan mudah dikelola.
    

**PRAKTIKUM 6**: 


