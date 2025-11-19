Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

------------------------------------------------------------------------------

**12 | Lanjutan State Management dengan Streams**

----

**PRAKTIKUM 1: Dart Streams**

Langkah 1: Buat Project Baru dengan nama stream_nama

Langkah 2: Buka file main.dart

Langkah 3: Buat file baru stream.dart

Langkah 4: Tambah variabel colors

Langkah 5: Tambah method getColors()

Langkah 6: Tambah perintah yield*

Langkah 7: Buka main.dart

Langkah 8: Tambah variabel

Langkah 9: Tambah method changeColor()

Langkah 10: Lakukan override initState()

Langkah 11: Ubah isi Scaffold()

Langkah 12: Run

Langkah 13: Ganti isi method changeColor()


Soal:

1. 
   - Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
   - Gantilah warna tema aplikasi sesuai kesukaan Anda.
   - Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

2. 
   - Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
   - Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

3. 
   - Jelaskan fungsi keyword yield* pada kode tersebut!

     yield* digunakan untuk mengalirkan (forwarding) seluruh nilai dari stream lain ke dalam stream yang sedang dibuat. Dengan kata lain, alih-alih mengembalikan satu nilai saja seperti yield, keyword yield* akan meneruskan seluruh event yang dihasilkan oleh stream lain secara otomatis.

      Pada kasus ini, yield* meneruskan semua event warna yang dihasilkan oleh Stream.periodic() sehingga stream getColorStream() akan memancarkan event yang sama dengan stream periodik tersebut.
     
   - Apa maksud isi perintah kode tersebut?

     Penjelasan langkah demi langkah:

     a. Method getColorStream() adalah stream asynchronous yang menghasilkan data secara berkala.

     b. Stream.periodic() membuat stream yang memancarkan event setiap 1 detik.

     c. Parameter (int t) adalah hitungan event ke-t (dimulai dari 0).

     d. index = t % colors.length memastikan index selalu berputar mengikuti panjang daftar warna.

      e. return colors[index]; artinya setiap detik stream akan mengeluarkan satu warna dari daftar, secara bergantian.

      f. yield* meneruskan seluruh aliran warna tersebut sebagai output stream getColorStream().

      Hasil akhirnya:

     Stream akan memancarkan warna berurutan setiap 1 detik, lalu kembali ke warna pertama setelah sampai di warna terakhir.
     
   - Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

4. 
   - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
     
   - Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

     <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P1.gif?raw=true" width="400" alt="Demo Soal 4">

5. 
   - Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

     a. await for

      Digunakan ketika kita ingin menunggu setiap event stream secara berurutan di dalam fungsi async.

     Ciri–cirinya:
      
      - Bersifat blocking secara lokal dalam method (method menunggu hingga stream selesai).
      
      - Kode berikutnya tidak akan dieksekusi sampai stream selesai mengirim semua event.
      
      - Sangat cocok jika kita ingin mengonsumsi seluruh isi stream dari awal hingga akhir secara berurutan.

      b. listen()

      Digunakan untuk mendaftarkan callback yang akan dipanggil setiap kali stream mengirim event.

     Ciri–cirinya:
      
      - Tidak menunggu stream selesai (non-blocking).
      
      - Kita dapat melakukan hal lain sembari stream berjalan.
      
      - Lebih fleksibel karena menyediakan fitur seperti: onData, onError, onDone, cancel()
        
   - Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"


-----

**PRAKTIKUM 2: Stream controllers dan sinks**

-----

Langkah 1: Buka file stream.dart

Langkah 2: Tambah class NumberStream

Langkah 3: Tambah StreamController

Langkah 4: Tambah method addNumberToSink

Langkah 5: Tambah method close()

Langkah 6: Buka main.dart

Langkah 7: Tambah variabel

Langkah 8: Edit initState()

Langkah 9: Edit dispose()

Langkah 10: Tambah method addRandomNumber()

Langkah 11: Edit method build()

Langkah 12: Run

Langkah 13: Buka stream.dart

Langkah 14: Buka main.dart

Langkah 15: Edit method addRandomNumber()


soal:

6. 
   - Jelaskan maksud kode langkah 8 dan 10 tersebut!

     Pada langkah ini, aplikasi menyiapkan stream dan mulai mendengarkan event yang masuk.

      Penjelasan alurnya:
      
      a. Membuat objek NumberStream : Ini adalah class yang mengelola aliran data (stream) angka.
      
      b. Mengambil StreamController dari NumberStream : Controller digunakan untuk mengirim data ke stream.
      
      c. Mengambil stream dari controller : Stream inilah yang akan berisi event angka.
      
      d. Mendengarkan stream dengan listen() : listen() akan dijalankan setiap kali stream mengirim angka baru.
      
      e. Mengubah nilai UI ketika event diterima : Saat event masuk:
      
        _lastNumber = event;_
     
        _setState(() {});_
      
        sehingga angka terbaru langsung ditampilkan pada layar.

   - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P2.gif?raw=true" width="400" alt="Demo Soal 4">

   - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

6. 
   - Jelaskan maksud kode langkah 13 sampai 15 tersebut!

     a. Langkah 13 — Menambahkan method addError() dalam NumberStream

        Penjelasan:

        - Method ini digunakan untuk mengirim error ke stream, bukan mengirim data biasa.
      
        - addError() akan membuat stream mengeluarkan event error.
      
        - Listener yang memiliki callback .onError() akan menangkap error tersebut.

      b. Langkah 14 — Menangkap Error dari Stream dengan onError()

        Penjelasan:

        - Listener pertama untuk menerima event normal tetap ada (listen()).
      
        - Tambahan .onError() digunakan untuk menangani error yang dikirim dari stream.
      
        - Ketika error terjadi:
      
        lastNumber = -1;

        sehingga UI menampilkan nilai –1 sebagai tanda bahwa error muncul.

     c. Langkah 15 — Mengirim Error ke Stream
     
        Penjelasan:

        - Kode untuk mengirim angka random sengaja di-comment.
      
        - Diganti dengan:
      
        numberStream.addError();
      
      
        - Saat tombol ditekan, aplikasi tidak mengirim angka, tetapi mengirimkan event error ke stream.
      
        - Event error itu kemudian ditangkap oleh .onError() pada Langkah 14.

          
   - Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
     
   - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".

-------------------

**PRAKTIKUM 3: Injeksi data ke streams**

------

Langkah 1: Buka main.dart

Langkah 2: Tambahkan kode ini di initState

Langkah 3: Tetap di initState

Langkah 4: Run


<img width="1919" height="1022" alt="image" src="https://github.com/user-attachments/assets/061d668b-89dc-4acc-8af3-13effa1a2b0a" />


soal: 

8. 
   - Jelaskan maksud kode langkah 1-3 tersebut!

      a. Langkah 1 — Membuat StreamTransformer

        - handleData: setiap angka yang datang → dikalikan 10 → dikirimkan ke sink.

        - handleError: jika terjadi error → kirim nilai -1.

        - handleDone: jika stream selesai → ditutup.

      b. Langkah 2 — Menyiapkan Stream + Transformer

        mengambil stream angka (stream), mengalirkannya melalui transformer, lalu mendengarkan hasilnya.

        - Bila angka masuk → transformer mengalikan ×10 → listener menerima angka baru → ditampilkan (lastNumber).

        - Bila error terjadi → listener mengubah lastNumber = -1.

      c. Langkah 3 — Mendengarkan stream normal

        menerima angka asli dari stream tanpa transformasi.

        Intinya mendengarkan stream dua kali:
      
        - Sekali untuk angka asli (tanpa transformasi)
      
        - Sekali untuk angka yang sudah diubah oleh transformer (×10)

   - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P3.gif?raw=true" width="400" alt="Demo Soal 4">


   - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 8".


----------------------

**PRAKTIKUM 4: Subscribe ke stream events**

---------------

Langkah 1: Tambah variabel

Langkah 2: Edit initState()

Langkah 3: Tetap di initState()

Langkah 4: Tambah properti onDone()

Langkah 5: Tambah method baru

Langkah 6: Pindah ke method dispose()

Langkah 7: Pindah ke method build()

Langkah 8: Edit method addRandomNumber()

Langkah 9: Run


<img width="1919" height="1020" alt="image" src="https://github.com/user-attachments/assets/b3412666-23d4-4fd7-83b6-cc1d7e01cefb" />


Langkah 10: Tekan button ‘Stop Subscription'


<img width="378" height="25" alt="image" src="https://github.com/user-attachments/assets/c99a3644-89a1-4071-bff4-aba4599951d6" />


soal:

9. 
   - Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

     a. Langkah 2 membuat listener utama untuk menerima data dari stream dan menampilkan angka terbaru di layar.
     
        Maksudnya:

        1. Menghubungkan (mensubscribe) widget ke stream numberStreamController.
      
        2. Setiap kali ada data baru yang dikirim ke stream:
      
           - Listener akan menerima event
      
           - Fungsi setState() dijalankan
      
           - Nilai lastNumber di-update ke angka terbaru
      
        3. Listener ini disimpan ke variabel subscription supaya bisa:
      
           - di-pause,
      
           - di-resume,
      
           - atau di-cancel nanti (dipakai pada langkah 6)
             
     b. Langkah 6 menghentikan listener stream ketika widget dihancurkan agar aplikasi tetap aman dan efisien.
     
        Maksudnya:

        1. Saat widget dihapus atau aplikasi berpindah halaman, listener stream harus dihentikan.
      
        2. subscription.cancel() memastikan:
      
           - stream tidak mengirim data lagi ke widget
      
           - tidak terjadi memory leak
      
           - tidak ada update ke widget setelah widget sudah tidak aktif
             
     c. Langkah 8 mengirim angka random ke stream, tetapi juga mencegah error ketika stream sudah ditutup.
     
        Maksudnya:

        1. Membuat angka random antara 0–9.
      
        2. Mengecek apakah stream masih terbuka:
      
           - Jika BELUM ditutup → angka dikirim ke stream (addNumberToSink()).
      
           - Jika SUDAH ditutup → tidak bisa kirim data lagi.
      
        3. Jika stream sudah ditutup, nilai di UI diubah menjadi -1 sebagai tanda error.
           
   - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P4.gif?raw=true" width="400" alt="Demo Soal 4">

   - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 9".


------

PRAKTIKUM 5: Multiple stream subscriptions

-----

Langkah 1: Buka file main.dart

Langkah 2: Edit initState()

Langkah 3: Run


<img width="1919" height="974" alt="image" src="https://github.com/user-attachments/assets/3735b5e7-122b-45eb-8d5b-aedcbd4f3e6e" />


Langkah 4: Set broadcast stream

Langkah 5: Edit method build()

Langkah 6: Run


<img width="1919" height="968" alt="image" src="https://github.com/user-attachments/assets/90a33de4-8842-442e-b060-44feda31188f" />


soal:

10. Jelaskan mengapa error itu bisa terjadi ?

    Error tersebut terjadi karena stream yang digunakan adalah single-subscription stream, yaitu stream yang hanya boleh memiliki satu pendengar (listener). Pada kode, terdapat dua pemanggilan listen() pada stream yang sama (subscription dan subscription2). Karena stream hanya boleh didengarkan sekali, pemanggilan listen() kedua menyebabkan error Bad state: Stream has already been listened to.

11. 
    - Jelaskan mengapa hal itu bisa terjadi ?

      Angka muncul dua kali karena ada dua listener (subscription) yang sama-sama mendengarkan stream, dan setiap event baru dikirim ke kedua listener tersebut secara bersamaan.

      _subscription = stream.listen(...);
      subscription2 = stream.listen(...);_
      
    - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P5.gif?raw=true" width="400" alt="Demo Soal 4">
      
    - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 10,11".


------

**PRAKTIKUM 6: StreamBuilder**

-----


Langkah 1: Buat Project Baru

Langkah 2: Buat file baru stream.dart

Langkah 3: Tetap di file stream.dart

Langkah 4: Edit main.dart

Langkah 5: Tambah variabel

Langkah 6: Edit initState()

Langkah 7: Edit method build()

Langkah 8: Run


<img width="1919" height="974" alt="image" src="https://github.com/user-attachments/assets/940159d0-6a8d-4d80-a0bb-03991e238c22" />


soal:

12. 
    - Jelaskan maksud kode pada langkah 3 dan 7 !

      Pada langkah 3, kode numberStream = NumberStream().getNumbers(); digunakan untuk menginisialisasi sebuah stream yang akan menghasilkan data angka secara berkelanjutan. Method getNumbers() pada kelas NumberStream adalah penghasil stream (stream producer), sehingga ketika widget dibuat pertama kali, stream tersebut sudah siap digunakan oleh widget lain, termasuk StreamBuilder. Inisialisasi di dalam initState() memastikan bahwa stream hanya dibuat sekali ketika widget pertama kali di-render, bukan setiap kali build() dijalankan, sehingga penggunaan stream menjadi efisien dan tidak menimbulkan duplikasi listener atau stream baru yang tidak diperlukan.

      Pada langkah 7, widget StreamBuilder digunakan untuk membangun tampilan UI secara otomatis berdasarkan data terbaru yang dikirimkan oleh numberStream. StreamBuilder akan mendengarkan stream tersebut, kemudian setiap kali ada data baru (event) atau error, widget ini akan memanggil ulang fungsi builder() untuk memperbarui tampilan. Jika stream menghasilkan data (snapshot.hasData), data tersebut ditampilkan dalam teks berukuran besar di tengah layar. Jika terjadi error (snapshot.hasError), pesan error dapat ditangani sesuai kebutuhan. Dengan menggunakan StreamBuilder, UI akan selalu sinkron dengan data stream tanpa perlu memanggil setState() secara manual, sehingga memudahkan pembuatan UI yang reaktif terhadap perubahan data.
      
    - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P6.gif?raw=true" width="400" alt="Demo Soal 4">

    - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 12".


-------

**PRAKTIKUM 7: BLoC Pattern**

------

Langkah 1: Buat Project baru

Langkah 2: Isi kode random_bloc.dart

Langkah 3: Buat class RandomNumberBloc()

Langkah 4: Buat variabel StreamController

Langkah 5: Buat constructor

Langkah 6: Buat method dispose()

Langkah 7: Edit main.dart

Langkah 8: Buat file baru random_screen.dart

Langkah 9: Lakukan impor material dan random_bloc.dart

Langkah 10: Buat StatefulWidget RandomScreen

Langkah 11: Buat variabel

Langkah 12: Buat method dispose()

Langkah 13: Edit method build()

Run aplikasi, maka Anda akan melihat angka acak antara angka 0 sampai 9 setiap kali menekan tombol FloactingActionButton.


<img width="1919" height="967" alt="image" src="https://github.com/user-attachments/assets/1acf5109-27b2-47cd-a747-cf5eddfd7614" />



soal:

13. 
    - Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

      Praktikum ini bertujuan untuk memperkenalkan dan melatih penggunaan pola BLoC (Business Logic Component) dalam pengembangan aplikasi Flutter. Pada pola BLoC, semua proses logika bisnis dipisahkan dari tampilan UI dengan menggunakan Stream, StreamController, serta mekanisme input event dan output state. Dengan pendekatan ini, UI tidak lagi menangani logika perhitungan atau pengolahan data secara langsung, melainkan hanya mendengarkan perubahan data (state) dari BLoC melalui stream. Hal ini membantu membuat kode menjadi lebih bersih, terstruktur, mudah di-maintain, dan mudah di-testing, terutama ketika aplikasi menjadi semakin kompleks.

      Konsep pola BLoC dalam praktikum ini dapat terlihat secara jelas pada file random_bloc.dart, di mana terdapat dua StreamController: satu sebagai input sink (generateRandom) dan satu sebagai output stream (randomNumber). Ketika tombol ditekan, UI mengirim event ke BLoC melalui sink, lalu BLoC memproses logika bisnis (membuat angka acak), kemudian hasilnya dikirim kembali ke UI lewat stream. Pada bagian UI, yaitu di random_screen.dart, digunakan StreamBuilder sebagai subscriber untuk mendengarkan perubahan data dari BLoC. Setiap kali stream mengirim nilai baru, UI akan otomatis diperbarui tanpa perlu logika tambahan. Inilah inti dari pola BLoC: memisahkan proses bisnis dari tampilan, melakukan komunikasi melalui event dan stream, serta menjaga agar UI hanya bertugas menampilkan data.
      
    - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

      <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab12_dart/gif/P7.gif?raw=true" width="400" alt="Demo Soal 4">

    - Lalu lakukan commit dengan pesan "W12: Jawaban Soal 13".









