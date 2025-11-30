Nama : Annisa Eka Puspita

Kelas : TI-3H

Absen : 02

NIM : 2341720131

-----------

**14 | RESTful API**

---------

**Praktikum 1: Membuat layanan Mock API**

1. Daftar untuk layanan Mock Lab dihttps://app.wiremock.cloud/ dan daftar ke situs tersebut, buat nama pengguna dan kata sandi Anda.

2. Masuk ke layanan tersebut, buka "Example Mock API", dan klik pada bagian Stubs dari API contoh. Kemudian, klik pada entri pertama—yaitu, Get a JSON resource. 

3. Klik pada tombol New. Untuk Namanya, ketik Pizza List, biarkan GET sebagai verb, dan di kotak teks di dekat verb GET, ketik /pizzalist. Kemudian, di bagian Response, untuk status 200, pilih JSON sebagai format dan tempel konten JSON yang tersedia dihttps://bit.ly/pizzalist.

4. Tekan tombol Save di bagian bawah halaman untuk menyimpan stub. Ini menyelesaikan pengaturan untuk layanan mock backend.

5. Kembali ke proyek Flutter Anda, tambahkan dependensi http dengan mengetik di Terminal Anda:

    _flutter pub add http_

6. Di folder lib dalam proyek Anda, tambahkan file baru bernama httphelper.dart.
   
7. Di file httphelper.dart, tambahkan kode

    <img width="500" height="493" alt="image" src="https://github.com/user-attachments/assets/2514d001-2329-4bd8-8504-9b5fc79d1622" />


8. Di file main.dart, di kelas _MyHomePageState, tambahkan metode bernama callPizzas. Ini mengembalikan Future dari List objek Pizza dengan memanggil metode getPizzaList dari kelas HttpHelper.

9. Di metode build dari kelas _MyHomePageState, di body Scaffold, tambahkan FutureBuilder yang membangun ListView dari widget ListTile yang berisi objek Pizza.

    <img width="500" height="717" alt="image" src="https://github.com/user-attachments/assets/e6d1cbac-2de7-4f6e-ac9b-44e4fd70ced4" />


10. Jalankan aplikasi.

    <img width="900" height="1019" alt="image" src="https://github.com/user-attachments/assets/6c0c3eb1-5532-41ca-ae2e-ad91c6a8fdb9" />


Gambar tersebut merupakan tangkapan layar dari daftar item yang diambil melalui HTTP, menampilkan ListView dengan nama pizza dan deskripsinya.


11. Kita sekarang hanya memiliki satu metode yang menggunakan kelas HttpHelper. Seiring bertumbuhnya aplikasi, kita mungkin perlu memanggil HttpHelper beberapa kali di bagian berbeda dari aplikasi, dan akan menjadi pemborosan sumber daya untuk membuat banyak instance kelas setiap kali perlu menggunakan metode dari kelas tersebut.

    Salah satu cara untuk menghindari ini adalah dengan menggunakan konstruktor factory dan pola singleton: ini memastikan Anda hanya menginstansiasi kelas sekali. Ini berguna setiap kali hanya satu objek yang diperlukan di aplikasi Anda dan ketika Anda perlu mengakses sumber daya yang ingin Anda bagikan di seluruh aplikasi.

    Di file httphelper.dart, tambahkan kode ke kelas HttpHelper.

    <img width="500" height="126" alt="image" src="https://github.com/user-attachments/assets/fcc1d838-40db-4070-9a80-4577ffdc0ea0" />



**Soal**

Soal 1

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

- Gantilah warna tema aplikasi sesuai kesukaan Anda.

- Capture hasil aplikasi Anda, lalu masukkan ke laporan di README dan lakukan commit hasil jawaban Soal 1 dengan pesan "W14: Jawaban Soal 1"


-----------------

**Praktikum 2: Mengirim Data ke Web Service (POST)**

Untuk melakukan aksi POST pada layanan web, ikuti langkah-langkah berikut:

1. Masuk ke layanan Mock Lab dihttps://app.wiremock.cloud/ dan klik pada bagian Stubs dari API contoh. Kemudian, buat stub baru.

2. Lengkapi permintaan sebagai berikut:
- Nama: Post Pizza
- Verb: POST
- Alamat: /pizza
- Status: 201
- Tipe Body: json
- Body: {"message": "The pizza was posted"}

3. Tekan tombol Save.

4. Di proyek Flutter, di file httphelper.dart, di kelas HttpHelper, buat metode baru bernama postPizza

5. Di proyek, buat file baru bernama pizza_detail.dart.

6. Di bagian atas file baru, tambahkan impor yang diperlukan.

7. Buat StatefulWidget bernama PizzaDetailScreen

8. Di bagian atas kelas _PizzaDetailScreenState, tambahkan lima TextEditingController. Ini akan berisi data untuk objek Pizza yang akan diposting nanti. Juga, tambahkan String yang akan berisi hasil dari permintaan POST

9. Override metode dispose() untuk membuang controller

10. Di metode build() dari kelas, kembalikan Scaffold, yang AppBar-nya berisi Text "Pizza Detail" dan body-nya berisi Padding dan SingleChildScrollView yang berisi Column

11. Untuk properti children dari Column, tambahkan beberapa Text yang akan berisi hasil dari post, lima TextField, masing-masing terikat ke TextEditingController mereka sendiri, dan ElevatedButton untuk menyelesaikan aksi POST (metode postPizza akan dibuat selanjutnya). Juga, tambahkan SizedBox untuk menjauhkan widget di layar

12. Di bagian bawah kelas _PizzaDetailScreenState, tambahkan metode postPizza

13. Di file main.dart, impor file pizza_detail.dart

14. Di Scaffold dari metode build() kelas _MyHomePageState, tambahkan FloatingActionButton yang akan navigasi ke rute PizzaDetail

15. alankan aplikasi. Di layar utama, tekan FloatingActionButton untuk navigasi ke rute PizzaDetail.

16. Tambahkan detail pizza di field teks dan tekan tombol Send Post. Anda seharusnya melihat hasil yang sukses

    <img width="1919" height="965" alt="image" src="https://github.com/user-attachments/assets/8fe349d0-ccd7-434f-813c-61bca0ffc455" />


**Soal**

Soal 2

- Tambahkan field baru dalam JSON maupun POST ke Wiremock!

  <img width="350" height="578" alt="image" src="https://github.com/user-attachments/assets/f2bda265-4ff2-41d9-a43a-ecf896a54d75" />

  <img width="570" height="506" alt="image" src="https://github.com/user-attachments/assets/fde0a57d-7ea5-40a5-9378-1621dc7fb54c" />


- Capture hasil aplikasi Anda berupa GIF di README dan lakukan commit hasil jawaban Soal 2 dengan pesan "W14: Jawaban Soal 2"

  <img src="https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab14_dart/gif/P2_soal2.gif?raw=true" width="400" alt="Soal 2">


---------

**Praktikum 3: Memperbarui Data di Web Service (PUT)**

Untuk melakukan aksi PUT pada layanan web, ikuti langkah-langkah berikut:

1. Masuk ke layanan Wiremock dihttps://app.wiremock.cloud dan klik pada bagian Stubs dari API contoh. Kemudian, buat stub baru.

2. Lengkapi permintaan sebagai berikut:
   
- Nama: Put Pizza
- Verb: PUT
- Alamat: /pizza
- Status: 200
- Tipe Body: json
- Body: {"message": "Pizza was updated"}


3. Klik tombol Save.

4. Di proyek Flutter, tambahkan metode putPizza ke kelas HttpHelper di file http_helper.dart

5. Di kelas PizzaDetailScreen di file pizza_detail.dart, tambahkan dua properti, sebuah Pizza dan sebuah boolean, dan di konstruktor, atur kedua properti tersebut

6. Di kelas PizzaDetailScreenState, override metode initState. Ketika properti isNew dari kelas PizzaDetail bukan baru, itu mengatur konten TextField dengan nilai-nilai objek Pizza yang diteruskan.

7. Edit metode savePizza sehingga memanggil metode helper.postPizza ketika isNew benar, dan helper.putPizza ketika salah.

8. Di file main.dart, di metode build dari _MyHomePageState, tambahkan properti onTap ke ListTile sehingga ketika pengguna mengetuknya, aplikasi akan mengubah rute dan menampilkan layar PizzaDetail, meneruskan pizza saat ini dan false untuk parameter isNew.

9. Di floatingActionButton, teruskan Pizza baru dan true untuk parameter isNew ke rute PizzaDetail.

10. Jalankan aplikasi. Di layar utama, ketuk Pizza apa pun untuk navigasi ke rute PizzaDetail.

11. Edit detail pizza di field teks dan tekan tombol Save. Anda seharusnya melihat pesan yang menunjukkan bahwa detail pizza telah diperbarui.


**Soal**

Soal 3

- Ubah salah satu data dengan Nama dan NIM Anda, lalu perhatikan hasilnya di Wiremock.

- Capture hasil aplikasi Anda berupa GIF di README dan lakukan commit hasil jawaban Soal 3 dengan pesan "W14: Jawaban Soal 3"


--------

**Praktikum 4: Menghapus Data dari Web Service (DELETE)**

Untuk melakukan aksi DELETE pada layanan web, ikuti langkah-langkah berikut:

1. Masuk ke layanan Wiremock dihttps://app.wiremock.cloud dan klik pada bagian Stubs dari API contoh. Kemudian, buat stub baru.

2. Lengkapi permintaan dengan data berikut:

- Nama: Delete Pizza
- Verb: DELETE
- Alamat: /pizza
- Status: 200
- Tipe Body: json
- Body: {"message": "Pizza was deleted"}

3. Simpan stub baru.

4. Di proyek Flutter, tambahkan metode deletePizza ke kelas HttpHelper di file http_helper.dart

5. Di file main.dart, di metode build dari kelas _MyHomePageState, refactor itemBuilder dari ListView.builder sehingga ListTile terkandung dalam widget Dismissible.

6. Jalankan aplikasi. Ketika Anda swipe elemen apa pun dari daftar pizza, ListTile akan menghilang.


**Soal**

Soal 4

Capture hasil aplikasi Anda berupa GIF di README dan lakukan commit hasil jawaban Soal 4 dengan pesan "W14: Jawaban Soal 4"



