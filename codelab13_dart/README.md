Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

------------------------------------------------------------------------------


**13 | Persistensi Data**

-------

**Praktikum 1: Konversi Dart model ke JSON**

Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama store_data_namapanggilan (store_data_ninis).

Langkah 2: Edit file main.dart

Langkah 3: Buat folder baru assets

Buat folder baru assets di root project Anda

Langkah 4: Buat file baru pizzalist.json

Letakkan file ini di dalam folder assets, lalu salin data JSON berikut ke file tersebut.


Langkah 5: Edit pubspec.yaml

Tambahkan referensi folder assets ke file pubspec.yaml.

Langkah 6: Edit maint.dart

Buatlah variabel di class _MyHomePageState.


Langkah 7: Tetap di main.dart

Untuk membaca isi dari file pizzalist.json di dalam class _MyHomePageState, tambahkan method readJsonFile untuk membaca file json.

Langkah 8: Panggil method readJsonFile

Panggil method readJsonFile di initState

Langkah 9: Tampilkan hasil JSON

Kemudian tampilkan hasil JSON di body scaffold.


Langkah 10: Run

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P1_L10.png" />

Langkah 11: Buat file baru pizza.dart

Kita ingin mengubah data json tersebut dari String menjadi objek List. Maka perlu membuat file class baru di folder lib/model dengan nama file pizza.dart.

Langkah 12: Model pizza.dart


Langkah 13: Buat constructor()

Di dalam class Pizza definisikan constructor fromJson, yang mana akan mengambil data berupa Map sebagai parameter dan mengubah Map ke objek Pizza.

Langkah 14: Pindah ke class _MyHomePageState

Tambahkan kode jsonDecode.

Langkah 15: Pastikan impor class

Perhatikan pada bagian atas file bahwa telah berhasil impor kedua file.

Langkah 16: Konversi List Map ke List Objek Dart

Di dalam method readJsonFile(), setelah baris List pizzaMapList = jsonDecode(myString);, tambahkan kode berikut untuk mengonversi setiap Map di pizzaMapList menjadi objek Pizza dan menyimpannya ke myPizzas.

Langkah 17: return myPizzas

Hapus atau komentari setState yang menampilkan pizzaString dari Langkah 7. Kemudian, kembalikan myPizzas.

Langkah 18: Perbarui Signature Method

Perbarui signature method readJsonFile() untuk secara eksplisit menunjukkan bahwa ia mengembalikan Future yang berisi List.

Langkah 19: Deklarasikan Variabel State

Di dalam class _MyHomePageState, deklarasikan variabel state baru untuk menampung List objek Pizza.

Langkah 20: Panggil di initState dan Perbarui State

Perbarui method initState() di _MyHomePageState untuk memanggil readJsonFile(). Karena readJsonFile() mengembalikan Future, gunakan .then() untuk mendapatkan hasilnya, dan perbarui state myPizzas.

Langkah 21: Tampilkan Data di ListView

Perbarui body dari Scaffold untuk menggunakan ListView.builder yang menampilkan pizzaName sebagai judul dan description sebagai subjudul dari setiap objek Pizza.

Langkah 22: Run

Jalankan aplikasi. Sekarang, Anda akan melihat data pizza ditampilkan dalam daftar yang lebih terstruktur sebagai objek List Dart.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P1_L22.png" />

Langkah 23: Tambahkan Method toJson() (Serialization)

Di file pizza.dart, tambahkan method toJson() ke class Pizza. Method ini berfungsi untuk mengonversi objek Dart kembali menjadi Map (langkah pertama menuju JSON String).

Langkah 24: Buat Fungsi Konversi JSON String

Di main.dart, tambahkan fungsi convertToJSON di dalam _MyHomePageState untuk menggunakan jsonEncode (dari dart:convert) yang mengubah List objek Dart menjadi JSON String.


Langkah 25: Tampilkan Output JSON di Konsol

Di method readJsonFile(), tambahkan kode untuk memanggil convertToJSON dan mencetak hasilnya ke Debug Console sebelum mengembalikan myPizzas.

Langkah 26: Cek Output Konsol

Jalankan aplikasi. Periksa Debug Console untuk melihat List objek Pizza telah berhasil dikonversi kembali menjadi JSON String.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P1_L26.png" />


**Soal**

Soal 1

Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Gantilah warna tema aplikasi sesuai kesukaan Anda.

Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"


Soal 2

Masukkan hasil capture layar ke laporan praktikum Anda.

<img width="700" height="1000" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P1_soal2.png" />

Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

Soal 3

Masukkan hasil capture layar ke laporan praktikum Anda.

<img width="700" height="1000" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P1_soal3.png" />

Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 3"


------

**Praktikum 2: Handle kompatibilitas data JSON**


Langkah 1: Simulasikan Error

Langkah 2: Lihat Error Tipe Data String ke Int

Jika ID pizza di JSON dikirim sebagai String (misalnya "id": "1" di JSON) sementara model Dart mengharapkan int, Anda akan melihat runtime error.

Langkah 3: Terapkan tryParse dan Null Coalescing pada ID

Di Pizza.fromJson (file pizza.dart), ganti cara mendapatkan nilai id menggunakan int.tryParse dan null coalescing operator (??) untuk memberikan nilai default 0 jika parsing gagal atau nilainya null. Tujuannya adalah memastikan nilai id selalu integer.


Langkah 4: Simulasikan Error Null pada String

Jika Anda menjalankan ulang dan ada bidang yang hilang (misalnya imageUrl hilang), Anda mungkin mendapatkan error Null.

Langkah 5: Terapkan Null Coalescing pada String

Tambahkan null coalescing operator (??) pada imageUrl untuk memberikan string kosong ('') jika nilai yang diterima adalah null. Lakukan hal yang sama untuk bidang String lainnya seperti pizzaName dan description jika perlu.


Langkah 6: Gunakan toString() untuk Field String

Untuk memastikan semua nilai yang digunakan sebagai String benar-benar String (bahkan jika mereka mungkin dikirim sebagai int atau tipe lain), gunakan toString().


Langkah 7: Simulasikan Error Tipe Data String ke Double

Jika Anda menjalankan ulang, Anda mungkin menemukan error saat mengonversi String ke Double untuk bidang price.

Langkah 8: Terapkan double.tryParse

Terapkan double.tryParse dengan null coalescing (?? 0) untuk bidang price, sama seperti yang Anda lakukan pada id.

Langkah 9: Run dan Perhatikan Output Null

Setelah mengimplementasikan semua perbaikan tipe data, aplikasi akan berjalan, tetapi mungkin menampilkan "null" di UI jika ada bidang yang hilang atau gagal diparsing (seperti pizzaName atau description).

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P2_L9.png" />

Langkah 10: Tambahkan Operator Ternary untuk Output User-Friendly

Perbaiki masalah tampilan "null" dengan menambahkan operator ternary yang memeriksa apakah nilai null sebelum mengubahnya menjadi String. Jika null, berikan nilai pengganti yang ramah pengguna seperti 'No name' atau string kosong ('').


Langkah 11: Run
Jalankan aplikasi. Sekarang data yang tidak konsisten telah ditangani dengan baik, dan UI tidak menampilkan nilai null.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P2_L11.png" />

**Soal**

Soal 4

Capture hasil running aplikasi Anda, kemudian impor ke laporan praktikum Anda!

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P2_soal4.png" />

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 4".



--------

**Praktikum 3: Menangani error JSON**


Langkah 1: Buka pizza.dart dan Buat Konstanta

Di bagian atas file pizza.dart, di luar class Pizza, deklarasikan konstanta untuk setiap kunci JSON.

Langkah 2: Perbarui fromJson() menggunakan Konstanta

Di constructor Pizza.fromJson, ganti semua string literal kunci JSON (misalnya 'id') dengan konstanta yang sesuai (keyId).


Catatan: Konstruktor ini menggunakan sintaks inisialisasi, tetapi untuk kesederhanaan, kita menggunakan sintaks body.

Langkah 3: Perbarui toJson() menggunakan Konstanta

Perbarui juga method toJson() agar menggunakan konstanta yang sama.

Langkah 4: Run

Jalankan aplikasi. Tidak akan ada perubahan visual, tetapi kode Anda kini lebih safe dan maintainable.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P3_L4.png" />

**Soal**

Soal 5

Jelaskan maksud kode lebih safe dan maintainable!

  Kode tersebut disebut lebih safe dan maintainable karena seluruh proses pengambilan data dari JSON dilakukan dengan cara yang aman dari error dan mudah dirawat di masa depan. Penggunaan konstanta sebagai key JSON mencegah typo dan memusatkan perubahan hanya pada satu tempat jika struktur JSON berubah. Selain itu, pemakaian tryParse() membuat aplikasi tetap berjalan meskipun tipe data dari JSON tidak sesuai harapan, sementara pengecekan null memastikan setiap field tetap memiliki nilai default sehingga tidak menyebabkan crash. Struktur ini menjadikan kode lebih mudah dibaca, lebih aman terhadap data yang tidak lengkap, dan lebih sederhana untuk dikembangkan oleh developer lain.

Capture hasil praktikum Anda dan lampirkan di README.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P3_soal5.png" />

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 5".


--------

**Praktikum 4: SharedPreferences**

Langkah 1: Tambahkan Dependensi

Di Terminal, tambahkan package shared_preferences.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P4_L1.png" />

Langkah 2: Install Dependensi

Jalankan flutter pub get jika editor Anda tidak melakukannya secara otomatis.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P4_L12.png" />

Langkah 3: Lakukan Import

Di file main.dart, tambahkan import untuk shared_preferences.

Langkah 4: Tambahkan Variabel appCounter

Di dalam class _MyHomePageState (atau State class yang Anda gunakan), deklarasikan variabel appCounter.

Langkah 5: Buat Method readAndWritePreference

Buat method asinkron readAndWritePreference().

Langkah 6: Dapatkan Instance SharedPreferences

Di dalam method tersebut, dapatkan instance SharedPreferences. Perlu diingat bahwa ini adalah operasi asinkron, jadi gunakan await.

Langkah 7: Baca, Cek Null, dan Increment Counter

Baca nilai appCounter dari storage. Gunakan null coalescing (?? 0) untuk memastikan nilai default 0 jika data belum ada. Kemudian increment nilai tersebut.

Langkah 8: Simpan Nilai Baru

Simpan nilai appCounter yang sudah di-increment kembali ke storage menggunakan prefs.setInt().

Langkah 9: Perbarui State

Panggil setState() untuk memperbarui UI dengan nilai baru appCounter.

Langkah 10: Panggil di initState()

Panggil readAndWritePreference() di initState() agar penghitung dibaca saat aplikasi pertama kali dibuka.

Langkah 11: Perbarui Tampilan (body)

Ganti body Scaffold Anda dengan tata letak yang menampilkan hitungan dan tombol 'Reset counter'.

Langkah 12: Run

Aplikasi sekarang akan menampilkan "You have opened the app 1 times" (jika ini pembukaan pertama).

Langkah 13: Buat Method deletePreference()

Tambahkan method asinkron deletePreference() yang berfungsi untuk menghapus data menggunakan prefs.clear().

Langkah 14: Panggil deletePreference()

Hubungkan deletePreference() ke tombol 'Reset counter'.

Langkah 15: Run

Jalankan aplikasi. Tombol reset sekarang akan berfungsi, menghapus semua pasangan kunci-nilai dan mereset hitungan.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P4_L15.png" />

**Soal**

Soal 6

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

<img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/gif/P4_soal6.gif?raw=true" width="400" alt="Soal 6">

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".


-------

**Praktikum 5: Akses filesystem dengan path_provider**

Langkah 1: Tambahkan Dependensi

Tambahkan package path_provider melalui Terminal.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P5_L1.png" />

Langkah 2: Lakukan Import

Di file main.dart, tambahkan import untuk path_provider.


Langkah 3: Tambahkan Variabel Path State

Di State class Anda, tambahkan variabel untuk menyimpan jalur direktori dokumen dan temporer.


Langkah 4: Buat Method getPaths()

Buat method asinkron getPaths() yang menggunakan getApplicationDocumentsDirectory() dan getTemporaryDirectory() untuk mengambil jalur sistem file yang tepat, lalu perbarui state.


Langkah 5: Panggil getPaths() di initState()

Panggil getPaths() di initState().


Langkah 6: Perbarui Tampilan

Perbarui body Scaffold untuk menampilkan kedua jalur yang telah diambil.


Langkah 7: Run

Jalankan aplikasi. Anda akan melihat path absolut ke direktori dokumen dan cache aplikasi di perangkat Anda.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P5_L7.png" />

**Soal**

Soal 7

Capture hasil praktikum Anda dan lampirkan di README.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P5_soal7.png" />

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".


---------

**Praktikum 6: Akses filesystem dengan direktori**


Langkah 1: Lakukan Import dart:io

Di file main.dart, tambahkan import untuk pustaka dart:io.

Langkah 2: Tambahkan Variabel File dan Text

Di State class, tambahkan variabel myFile (dengan modifier late) dan fileText untuk menyimpan konten yang akan dibaca.

Langkah 3: Buat Method writeFile()

Buat method asinkron writeFile() yang menggunakan myFile.writeAsString() untuk menulis konten ke file. Kata ‘Margherita, Capricciosa, Napoli' silakan Anda ganti dengan Nama Lengkap dan NIM Anda.


Langkah 4: Inisialisasi File dan Panggil writeFile() di initState()

Perbarui initState(): setelah getPaths() selesai, inisialisasi myFile dengan jalur lengkap di direktori dokumen, dan panggil writeFile().

Langkah 5: Buat Method readFile()

Buat method asinkron readFile() yang menggunakan myFile.readAsString() untuk membaca konten file dan memperbarui fileText melalui setState().


Langkah 6: Edit build() dan Tambahkan Tombol Baca

Di method build(), tambahkan ElevatedButton yang memanggil readFile() dan Text yang menampilkan fileText di bawahnya.


Langkah 7: Run

Jalankan aplikasi. Setelah menekan tombol 'Read File', konten yang ditulis (Margherita, Capricciosa, Napoli) akan ditampilkan atau sesuai nama dan NIM Anda.

<img width="1919" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P6_L7.png" />


**Soal**

Soal 8

Jelaskan maksud kode pada langkah 3 dan 7 !

  Pada langkah 3, method writeFile() dibuat sebagai fungsi asinkron yang bertugas menulis teks ke dalam sebuah file menggunakan objek myFile. Method ini menggunakan writeAsString() untuk menyimpan sebuah string ke dalam file di direktori aplikasi. Prosesnya dibungkus dalam blok try–catch agar program tetap aman jika terjadi error saat penulisan file, misalnya ketika file belum terbentuk atau tidak memiliki izin. Jika proses penulisan berhasil, method akan mengembalikan true, sedangkan jika terjadi kesalahan maka method akan mengembalikan false. Pada contoh kode, isi file yang ditulis adalah nama lengkap dan NIM—menggantikan teks contoh seperti “Margherita, Capricciosa, Napoli”. Intinya, langkah ini memastikan aplikasi mampu menyimpan data ke dalam penyimpanan lokal perangkat secara aman

  Langkah 7 menjelaskan proses menampilkan hasil pembacaan file pada UI aplikasi. Setelah pengguna menekan tombol “Read File”, method readFile() akan membaca isi file menggunakan readAsString(), kemudian menyimpannya ke variabel fileText. Karena nilai ini ditempatkan dalam setState(), Flutter akan melakukan rebuild sehingga teks yang sudah dibaca akan muncul pada tampilan UI. Hasil akhirnya adalah aplikasi menampilkan path direktori, path temporary, tombol untuk membaca file, dan isi file yang sebelumnya ditulis oleh method writeFile(). Langkah ini membuktikan bahwa mekanisme baca–tulis file sudah berjalan dengan benar dan dapat divisualisasikan langsung ke pengguna.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

<img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/gif/P6_soal8.gif?raw=true" width="400" alt="Soal 8">

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 8".


------

**Praktikum 7: Menyimpan data dengan enkripsi/dekripsi**


Langkah 1: Tambahkan Dependensi

Tambahkan package flutter_secure_storage melalui Terminal.

<img width="700" height="1022" alt="image" src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/img/P7_L1.png" />

Langkah 2: Lakukan Import

Di main.dart, impor package yang diperlukan.

_import 'package:flutter_secure_storage/flutter_secure_storage.dart';_

Langkah 3: Tambahkan Variabel dan Controller

Di State class (_MyHomePageState), tambahkan TextEditingController dan variabel untuk menyimpan kata sandi yang dibaca.

_final pwdController = TextEditingController();
String myPass = '';_

Langkah 4: Inisialisasi Secure Storage

Di State class, inisialisasi FlutterSecureStorage dan tentukan kuncinya.

Langkah 5: Buat Method writeToSecureStorage()

Buat method asinkron untuk menulis data dari pwdController ke secure storage.

Langkah 6: Buat Method readFromSecureStorage()

Buat method asinkron untuk membaca data dari secure storage.


Langkah 7: Edit build() untuk UI dan Logic

Perbarui method build() untuk menyertakan TextField dan dua ElevatedButton (Save Value dan Read Value). Hubungkan method save ke tombol Save Value.

Langkah 8: Hubungkan Read ke Tombol

Hubungkan method read ke tombol Read Value, perbarui myPass dan UI melalui setState().


Langkah 9: Run

Jalankan aplikasi. Masukkan teks, simpan, lalu baca kembali. Teks tersebut seharusnya ditampilkan, menandakan data telah disimpan dan diambil dengan aman.


**Soal**

Soal 9

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

<img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab13_dart/gif/P7_soal9.gif?raw=true" width="400" alt="Demo Soal 4">

Lalu lakukan commit dengan pesan "W13: Jawaban Soal 9".


