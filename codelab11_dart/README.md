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
    

**PRAKTIKUM 6**: Menggunakan Future dengan StatefulWidget

Langkah 1: install plugin geolocator

_flutter pub add geolocator_

Langkah 2: Tambah permission GPS

Langkah 3: Buat file geolocation.dart

Langkah 4: Buat StatefulWidget. Buat class LocationScreen di dalam file geolocation.dart

Langkah 5: Isi kode geolocation.dart

Langkah 6: Edit main.dart

_home: LocationScreen(),_

Langkah 7: Run

<img width="1919" height="1016" alt="image" src="https://github.com/user-attachments/assets/6ea47766-5d7e-49d0-aecb-c236fc29da2b" />


Langkah 8: Tambahkan animasi loading


Soal:

11. Tambahkan nama panggilan pada tiap properti title sebagai identitas pekerjaan.

    <img width="639" height="140" alt="image" src="https://github.com/user-attachments/assets/c9b08e53-f5ba-44cc-bb4b-4caf1939e7db" />


12.
    - Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

      <img width="721" height="217" alt="image" src="https://github.com/user-attachments/assets/6d7dac31-bc79-4324-b00d-2e8ab877d95a" />


  - Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

    Tidak, koordinat GPS tidak akan muncul jika dijalankan di browser (Flutter Web).
    Alasannya karena:

    a. Plugin geolocator tidak mendukung browser secara penuh.
      Browser tidak dapat mengakses sensor GPS internal perangkat.

    b. Flutter Web berjalan di sandbox browser, yang membatasi akses ke hardware seperti GPS, kamera, atau sensor.

    c. Jika dijalankan di emulator/HP Android, maka plugin dapat memanfaatkan service FusedLocationProvider dari sistem Android untuk mendapatkan koordinat asli.

    Jadi, untuk mendapatkan hasil (latitude & longitude), jalankan di:

    a. Emulator Android (bisa atur lokasi manual di setting emulator)

    b. HP Android asli (pastikan GPS aktif dan izin diberikan)

  - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.



**PRAKTIKUM 7** : Manajemen Future dengan FutureBuilder

Langkah 1: Modifikasi method getPosition()

Langkah 2: Tambah variabel di class _LocationScreenState

Langkah 3: Tambah initState() dan set variabel position

Langkah 4: Edit method build()

Langkah 5: Tambah handling error


Soal:

13. Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.

    Secara tampilan akhir, UI terlihat hampir sama dengan praktikum sebelumnya. Pada kedua praktikum, aplikasi menampilkan animasi loading (CircularProgressIndicator) ketika data lokasi sedang diambil, lalu menampilkan koordinat lokasi (latitude dan longitude) setelah proses selesai.
    
    Namun, perbedaan utama terletak pada cara kerja di balik layar. Pada praktikum sebelumnya, proses pengambilan data dan pembaruan tampilan dilakukan secara manual menggunakan setState(). Artinya, developer harus memanggil setState() setiap kali data berubah agar UI diperbarui.
    
    Sedangkan pada praktikum ini digunakan FutureBuilder, yang secara otomatis mengelola state Future dan memperbarui tampilan berdasarkan statusnya (waiting, done, atau error). Dengan begitu, UI menjadi lebih efisien, reaktif, dan bersih, karena tidak perlu lagi memanggil setState() secara manual.
    
    Jika dilihat sekilas hasil tampilannya memang sama, tetapi FutureBuilder memberikan manajemen asynchronous yang lebih baik dan terstruktur.

    

14. Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.

    Secara tampilan, tidak terdapat perbedaan yang signifikan dibandingkan langkah sebelumnya. UI tetap menampilkan animasi loading (CircularProgressIndicator) saat proses pengambilan lokasi berlangsung, dan menampilkan koordinat lokasi (latitude dan longitude) setelah proses selesai.

    Perbedaannya baru terlihat jika terjadi error pada proses pengambilan data lokasi.
    Pada langkah ini, karena telah ditambahkan error handling (snapshot.hasError), maka ketika terjadi kesalahan (misalnya GPS dimatikan atau izin lokasi ditolak), aplikasi akan menampilkan pesan “Something terrible happened!” di layar.
    
    Dengan demikian, meskipun tampilan normalnya sama seperti sebelumnya, aplikasi kini menjadi lebih tangguh dan informatif karena mampu memberikan umpan balik visual kepada pengguna saat terjadi error.



**PRAKTIKUM 8** : Navigation route dengan Future Function

Langkah 1: Buat file baru navigation_first.dart

Langkah 2: Isi kode navigation_first.dart

Langkah 3: Tambah method di class _NavigationFirstState

Langkah 4: Buat file baru navigation_second.dart

Langkah 5: Buat class NavigationSecond dengan StatefulWidget

Langkah 6: Edit main.dart

_home: const NavigationFirst(),_

Langkah 7: Run

<img width="1919" height="1023" alt="image" src="https://github.com/user-attachments/assets/5c8ded9e-ed53-4b3f-a2cc-939b36792d5d" />

<img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/bd1744a2-8ce7-40e4-9e58-a599040b4985" />

<img width="1919" height="1024" alt="image" src="https://github.com/user-attachments/assets/55851d33-767a-46f3-b2d3-5907018e7ddd" />



Soal:

15. Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
Silakan ganti dengan warna tema favorit Anda.

    <img width="596" height="143" alt="image" src="https://github.com/user-attachments/assets/4cc85b0e-bf11-4998-b388-e78824babc80" />


16.
    - Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

      Ketika salah satu tombol warna diklik pada halaman kedua, aplikasi akan:

      a. Menutup halaman kedua (Navigator.pop)
      
      b. Mengirimkan warna yang dipilih kembali ke halaman pertama.
      
      c. Warna background halaman pertama berubah sesuai warna yang dikembalikan.
      
      Hal ini terjadi karena fungsi Navigator.push() di halaman pertama bersifat asynchronous dan menunggu hasil dari halaman kedua menggunakan await.
      Setelah Navigator.pop() dipanggil dengan nilai warna, nilai tersebut dikembalikan ke halaman pertama, lalu diproses dalam setState() untuk memperbarui tampilan.

    - Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

      <img width="1917" height="1022" alt="image" src="https://github.com/user-attachments/assets/8aa26e99-5878-493b-9089-8014e9ee6ca6" />

    - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit



**PRAKTIKUM 9** : Memanfaatkan async/await dengan Widget Dialog

Langkah 1: Buat file baru navigation_dialog.dart

Langkah 2: Isi kode navigation_dialog.dart

Langkah 3: Tambah method async

Langkah 4: Panggil method di ElevatedButton

Langkah 5: Edit main.dart, Ubah properti home

Langkah 6: Run

<img width="1919" height="1020" alt="image" src="https://github.com/user-attachments/assets/d1e27593-c755-47b0-b719-a47d83da8cb7" />


Soal:

17. 
    - Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian?
      Warna background halaman utama berubah sesuai warna yang dipilih. Hal ini terjadi karena:

      a. Fungsi _showColorDialog() adalah fungsi asynchronous (async) yang memanggil showDialog<Color>().

      b. showDialog mengembalikan nilai warna (Color) melalui Navigator.pop(context, warna).

      c. Setelah dialog ditutup, nilai warna tersebut dikembalikan ke variabel selectedColor.

      d. setState() kemudian dipanggil untuk memperbarui state widget, sehingga warna latar belakang (backgroundColor) berubah sesuai dengan warna yang baru.

      Dengan kata lain, await menunggu hasil dari dialog sebelum melanjutkan eksekusi — inilah manfaat async/await di Flutter, membuat alur eksekusi tampak sinkron, padahal tetap berjalan asynchronous.
      
    - Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!
      
      <img width="1919" height="1020" alt="image" src="https://github.com/user-attachments/assets/f580cdec-0df9-4739-80c8-91a296822134" />

    - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit.




