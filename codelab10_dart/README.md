Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

-------------------------------------------------------

**#10 | Dasar State Management**

**PRAKTIKUM 1** : Dasar State dengan Model-View

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


**TUGAS PRAKTIKUM 1** : Dasar State dengan Model-View

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


3. Lakukan capture hasil dari Langkah 9, kemudian jelaskan apa yang telah Anda buat!

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


**PRAKTIKUM 2** : Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

Langkah 1: Buat file plan_provider.dart

Langkah 2: Edit main.dart

Langkah 3: Tambah method pada model plan.dart

Langkah 4: Pindah ke PlanScreen

Langkah 5: Edit method _buildAddTaskButton

Langkah 6: Edit method _buildTaskTile

Langkah 7: Edit _buildList

Langkah 8: Tetap di class PlanScreen

Langkah 9: Tambah widget SafeArea

<img width="1919" height="1023" alt="image" src="https://github.com/user-attachments/assets/92803991-1597-4a79-8472-da00d8fc0de0" />


**TUGAS PRAKTIKUM 2** : InheritedWidget

1. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

   Pada Langkah 1, InheritedWidget yang dimaksud adalah PlanProvider, yaitu kelas yang dibuat dengan cara mewarisi (extends) InheritedNotifier<ValueNotifier<Plan>>.

   InheritedWidget adalah mekanisme Flutter untuk mendistribusikan data atau state ke seluruh subtree widget tanpa harus meneruskan data melalui konstruktor antar widget satu per satu.
Artinya, data dapat diakses langsung oleh widget turunan di bawahnya melalui BuildContext. Dalam kasus ini, PlanProvider berfungsi sebagai “jembatan” antara data layer (model Plan) dan UI (widget tampilan).

   InheritedNotifier adalah turunan dari InheritedWidget yang mendukung notifikasi perubahan data secara otomatis. Dengan menggunakan ValueNotifier<Plan>, maka setiap kali nilai Plan berubah, widget yang berlangganan (dependOnInheritedWidgetOfExactType) akan rebuild secara otomatis.

   Singkatnya:

   - InheritedWidget → hanya menyebarkan data, tidak otomatis update.

   - InheritedNotifier → menyebarkan data dan memberi tahu widget lain untuk rebuild ketika data berubah.

2. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

   Langkah 3 menambahkan dua method baru di model Plan:

   int get completedCount => tasks.where((task) => task.complete).length;

   String get completenessMessage => '$completedCount out of ${tasks.length} tasks';

   - completedCount → menghitung berapa banyak task yang sudah selesai (complete == true).

   - completenessMessage → membuat teks ringkasan yang menampilkan perbandingan antara jumlah task yang selesai dan total task.

   Tujuannya untuk memisahkan logika perhitungan dari tampilan (UI).
Dengan membuat getter di dalam model, maka perhitungan progres tidak perlu dilakukan di dalam PlanScreen. View cukup memanggil plan.completenessMessage, sehingga kode lebih bersih, modular, dan mengikuti prinsip MVVM (Model-View-ViewModel).

3. Lakukan capture hasil dari Langkah 9, kemudian jelaskan apa yang telah Anda buat!

   <img width="1919" height="1023" alt="image" src="https://github.com/user-attachments/assets/cbc805b3-9baf-4af6-bd92-02794de16c76" />


   Pada Langkah 9, tampilan PlanScreen sudah dimodifikasi agar menampilkan progress dari todo list menggunakan widget SafeArea di bagian bawah layar.

   Penjelasan fungsional:

   - ValueListenableBuilder → mendengarkan perubahan pada ValueNotifier<Plan> dari PlanProvider.

   - Expanded → menampilkan daftar tugas (ListView) yang bisa discroll.

   - SafeArea → menampilkan pesan progres (plan.completenessMessage) di bagian bawah layar, memastikan tidak tertutup oleh area sistem (misalnya navigation bar).

   Hasilnya:

   - Saat pengguna menambah atau menyelesaikan task, teks progress otomatis berubah.

   Dengan demikian, aplikasi kini sudah memisahkan data model (Plan) dari tampilan (PlanScreen), serta mengelola state dengan baik menggunakan InheritedNotifier.


**PRAKTIKUM 3** : Membuat State di Multiple Screens

Langkah 1: Edit PlanProvider

Langkah 2: Edit main.dart

Langkah 3: Edit plan_screen.dart

Langkah 4: Error

Langkah 5: Tambah getter Plan

Langkah 6: Method initState()

Langkah 7: Widget build

Langkah 8: Edit _buildTaskTile

Langkah 9: Buat screen baru

Langkah 10: Pindah ke class _PlanCreatorScreenState

Langkah 11: Pindah ke method build

Langkah 12: Buat widget _buildListCreator

Langkah 13: Buat void addPlan()

Langkah 14: Buat widget _buildMasterPlans()

<img width="1919" height="1021" alt="image" src="https://github.com/user-attachments/assets/e2a8e6cd-63a8-428f-ba98-6677dc421648" />


**TUGAS PRAKTIKUM 3** : State di Multiple Screens

1. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

   Diagram tersebut menggambarkan alur data dan navigasi antar dua layar (screen) pada aplikasi Master Plan setelah penerapan konsep state management menggunakan InheritedNotifier.

   A. Diagram Kiri (Biru) — PlanCreatorScreen

   Menunjukkan struktur hierarki widget pada halaman utama tempat pengguna membuat daftar rencana (Plan).

   - MaterialApp → root utama aplikasi Flutter.

   - PlanProvider → menyediakan state global berupa ValueNotifier<List<Plan>> yang dapat diakses di seluruh screen.

   - PlanCreatorScreen → halaman untuk menambahkan plan baru (misalnya “Belajar Flutter”, “Proyek Akhir”, dll).

   - Column → mengatur tata letak vertikal antara dua bagian utama:

     a. TextField → digunakan untuk menambahkan nama plan baru.

     b. Expanded → ListView → menampilkan daftar semua plan yang sudah dibuat.

   Saat pengguna mengetik nama plan dan menekan enter, data tersebut disimpan ke dalam PlanProvider, sehingga state-nya tersinkronisasi ke seluruh aplikasi.

   B. Panah “Navigator Push”

   Menunjukkan proses navigasi dari halaman PlanCreatorScreen ke halaman PlanScreen. Setiap kali pengguna mengetuk salah satu item plan di daftar, aplikasi akan melakukan:

   Navigator.of(context).push(
   
     MaterialPageRoute(builder: (_) => PlanScreen(plan: plan)),
   
   );

   Artinya, aplikasi berpindah ke screen baru sambil mengirimkan objek plan yang dipilih sebagai argumen.

   C. Diagram Kanan (Hijau) — PlanScreen

   Menunjukkan struktur widget di halaman kedua, yaitu tempat pengguna melihat dan mengelola detail dari plan tertentu.

   - MaterialApp → tetap menjadi root dari aplikasi.

   - PlanScreen → halaman detail dari satu Plan tertentu.

   - Scaffold → struktur dasar halaman (AppBar, Body, FloatingActionButton).

   - Column → membagi tampilan menjadi dua bagian:

      a. Expanded → ListView → berisi daftar Task dalam plan tersebut.

      b. SafeArea → Text → menampilkan progres penyelesaian tugas (completenessMessage), misalnya “3 out of 5 tasks”.

   Dengan menggunakan PlanProvider yang sama, kedua screen ini berbagi state yang konsisten, sehingga setiap perubahan task di PlanScreen akan otomatis memperbarui data global dan terlihat di PlanCreatorScreen.

2. Lakukan capture hasil dari Langkah 14, kemudian jelaskan apa yang telah Anda buat!

   <img width="1919" height="1021" alt="image" src="https://github.com/user-attachments/assets/e5a1c3ae-9401-491b-8204-a64b2319937c" />

   Pada Langkah 14, aplikasi berhasil menampilkan daftar seluruh plan menggunakan widget _buildMasterPlans().

   Ketika dijalankan:

   - Pengguna dapat menambahkan nama plan baru melalui TextField di bagian atas.

   - Setiap plan yang ditambahkan akan muncul di daftar bawah (ListView).

   - Jika belum ada plan, aplikasi menampilkan ikon catatan abu-abu dan teks:

      “Anda belum memiliki rencana apapun.”

   Saat pengguna mengetuk salah satu plan:

   - Aplikasi membuka halaman baru (PlanScreen) menggunakan Navigator.push().

   - Di halaman tersebut, pengguna dapat menambah task, menandai task sebagai selesai, dan melihat progres penyelesaian melalui completenessMessage.

   Dengan penerapan ini, state aplikasi kini dikelola di satu tempat (PlanProvider), namun dapat diakses oleh beberapa screen (multi-screen) secara konsisten tanpa kehilangan data.



   
