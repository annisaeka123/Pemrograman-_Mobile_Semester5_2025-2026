Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

-------------------------------------------------------

**#10 | Dasar State Management**

PRAKTIKUM 1 : Dasar State dengan Model-View

Langkah 1: Buat Project Baru dengan master_plan

Langkah 2: Membuat model task.dart

Langkah 3: Buat file plan.dart

Langkah 4: Buat file data_layer.dart

Langkah 5: Pindah ke file main.dart

Langkah 6: buat plan_screen.dart

Langkah 7: buat method _buildAddTaskButton()

Langkah 8: buat widget _buildList()

Langkah 9: buat widget _buildTaskTile

Langkah 10: Tambah Scroll Controller

Langkah 11: Tambah Scroll Listener

Langkah 12: Tambah controller dan keyboard behavior

Langkah 13: Terakhir, tambah method dispose()

Langkah 14: Hasil

<img width="1919" height="1018" alt="image" src="https://github.com/user-attachments/assets/3f9db4f5-ad23-490f-a9b2-dc9e2a28de91" />


TUGAS PRAKTIKUM 1 : Dasar State dengan Model-View

1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

   Pada langkah 4, kita membuat file data_layer.dart yang berisi:

   export 'plan.dart';
   
   export 'task.dart';

   Tujuannya adalah untuk menyederhanakan proses impor model ke file lain. Dengan cara ini, saat file lain membutuhkan class Plan atau Task, kita cukup menuliskan:

   import '../models/data_layer.dart';

   tanpa harus mengimpor masing-masing file satu per satu. Pendekatan ini juga merupakan praktik modularisasi yang baik, karena menjaga struktur proyek tetap rapi, terutama ketika jumlah model bertambah banyak.
   

2. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta?

   Variabel plan digunakan untuk menyimpan data state aplikasi, yaitu data rencana (plan) beserta daftar tugas (tasks) yang dimilikinya.
   Variabel ini dibuat di dalam State karena nilainya dapat berubah saat pengguna menambah atau mengedit tugas.

   Kode:

   Plan plan = const Plan();

   menggunakan konstanta (const) untuk membuat objek awal Plan yang nilainya masih kosong (name = '', tasks = []).
   Penggunaan const di sini bertujuan agar objek awal tersebut bersifat immutable dan efisien secara memori, karena pada saat awal belum ada data dinamis yang diubah oleh pengguna.


3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

  <img width="1919" height="1018" alt="image" src="https://github.com/user-attachments/assets/4e9f6ef7-9fe8-49c1-8446-c62ab9119859" />


   Pada Langkah 9, dibuat widget:

   Widget _buildTaskTile(Task task, int index)

   yang berfungsi untuk menampilkan setiap tugas (task) dalam bentuk ListTile.

  Komponen ini memiliki dua bagian utama:

  - Checkbox → menandai apakah tugas sudah selesai (complete = true) atau belum.

  - TextFormField → memungkinkan pengguna mengetik atau mengubah deskripsi tugas secara langsung.

  Selain itu, setiap kali pengguna mengetik atau mencentang checkbox, setState() akan dipanggil agar UI diperbarui secara real-time sesuai data terbaru.
  Jadi, pada GIF hasilnya akan terlihat bahwa pengguna bisa:

  - Menambahkan tugas baru dengan tombol +

  - Mengedit teks deskripsi tugas

  - Menandai tugas selesai dengan checkbox

4. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

  a. initState() (Langkah 11)

  initState() dipanggil satu kali saat StatefulWidget pertama kali dibuat.

  Dalam praktikum ini, method tersebut digunakan untuk:

  - Membuat ScrollController

  - Menambahkan listener untuk menghapus fokus (FocusScope.of(context).requestFocus(FocusNode())) saat pengguna melakukan scroll

  Tujuannya agar keyboard tertutup otomatis ketika pengguna menggulir layar, terutama di iOS, sehingga pengalaman input menjadi lebih nyaman.
  
  b. dispose() (Langkah 13)

  dispose() dipanggil ketika widget dihapus dari widget tree (sudah tidak digunakan lagi).

  Pada praktikum ini, method ini digunakan untuk:

  scrollController.dispose();

  Tujuannya adalah membersihkan resource agar tidak terjadi kebocoran memori (memory leak) setelah ScrollController tidak lagi dipakai.
  Ini termasuk bagian dari lifecycle management yang penting dalam widget berbasis state di Flutter.


TUGAS 

