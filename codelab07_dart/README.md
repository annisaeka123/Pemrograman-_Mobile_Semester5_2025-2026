Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

-----------------------------------------------------------------------------

**07 | Manajemen Plugin**

**Praktikum Menerapkan Plugin di Project Flutter**

Langkah 1: Buat Project Baru

Langkah 2: Menambahkan Plugin

Langkah 3: Buat file red_text_widget.dart

Langkah 4: Tambah Widget AutoSizeText

Langkah 5: Buat Variabel text dan parameter di constructor

Langkah 6: Tambahkan widget di main.dart

<img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/1811e208-e88a-49dc-a9ee-e21a34fdd299" />

**Tugas Praktikum**

1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

   Perintah:

   flutter pub add auto_size_text

   digunakan untuk menambahkan plugin auto_size_text ke dalam project Flutter.
   Plugin ini memungkinkan teks menyesuaikan ukuran font secara otomatis agar tetap muat di dalam ruang yang terbatas (misalnya pada Container dengan lebar kecil).

   Perintah tersebut akan menambahkan dependensi baru di file pubspec.yaml, lalu secara otomatis mengunduh dan menyiapkan library auto_size_text agar bisa digunakan di dalam kode Dart.
   Tanpa langkah ini, kita tidak bisa menggunakan widget AutoSizeText di dalam aplikasi.
   
2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

   Pada langkah ini, ditambahkan variabel dan constructor seperti berikut:

   final String text;

   const RedTextWidget({Key? key, required this.text}) : super(key: key);

   Tujuannya agar widget RedTextWidget dapat menerima nilai teks dari luar ketika dipanggil.

   Sebelumnya, variabel text belum ada sehingga menyebabkan error saat digunakan di dalam AutoSizeText(text, ...).

3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

   Pada langkah 6, ditambahkan dua widget di dalam children: yaitu RedTextWidget dan Text.

   Keduanya menampilkan teks yang sama, tetapi dengan perilaku berbeda:

  | Widget                                         | Fungsi                                                                                                  | Perbedaan                                                                                               |
  | ---------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
  | **RedTextWidget** (menggunakan `AutoSizeText`) | Menampilkan teks berwarna merah yang otomatis menyesuaikan ukuran huruf agar muat dalam lebar container | Ukuran huruf bisa mengecil secara otomatis bila ruang terlalu sempit, sehingga teks tetap terlihat utuh |
  | **Text** biasa                                 | Menampilkan teks standar tanpa penyesuaian otomatis                                                     | Ukuran huruf tetap. Jika ruangnya sempit, teks bisa terpotong atau overflow                             |

   Perbandingan ini menunjukkan keunggulan plugin auto_size_text dalam membuat teks yang lebih fleksibel dan responsif terhadap ukuran layar atau container.
   
4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

   Plugin auto_size_text memiliki beberapa parameter penting yang mengatur bagaimana teks ditampilkan dan disesuaikan ukurannya.

   Berikut penjelasan parameter yang digunakan dalam praktikum:

  | Parameter     | Fungsi                                                                                                                                |
  | ------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
  | `text`        | Isi teks yang ingin ditampilkan di layar.                                                                                             |
  | `style`       | Mengatur tampilan teks seperti warna, jenis font, dan ukuran huruf awal.                                                              |
  | `maxLines`    | Batas jumlah baris maksimum yang boleh ditampilkan. Jika teks lebih panjang, maka sisanya akan dipotong.                              |
  | `overflow`    | Menentukan apa yang dilakukan saat teks melebihi batas. Contohnya `TextOverflow.ellipsis` akan menambahkan tanda “...” di akhir teks. |
  | `maxFontSize` | Ukuran huruf terbesar yang boleh digunakan. Jika ruang terbatas, ukuran ini bisa diperkecil.                                          |
  | `minFontSize` | Ukuran huruf terkecil yang boleh digunakan saat teks diperkecil agar tetap muat.                                                      |

  AutoSizeText akan menyesuaikan ukuran huruf secara otomatis antara maxFontSize dan minFontSize, agar teks tetap terlihat lengkap dan proporsional meskipun ruang tampilan sempit.
