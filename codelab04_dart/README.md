Nama : Annisa Eka Puspita

Kelas : TI-3H

Absen : 02

NIM : 2341720131


**04 | Pengantar Bahasa Pemrograman Dart - Bagian 3**


**PRAKTIKUM 1: EKSPERIMEN TIPE DATA LIST**

Langkah 1

Ketik atau salin kode program berikut ke dalam void main().

<img width="346" height="217" alt="image" src="https://github.com/user-attachments/assets/5240f45d-5074-4ba2-a93a-ca4376bc56cd" />

Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

<img width="495" height="558" alt="image" src="https://github.com/user-attachments/assets/d17055a2-e066-4fc9-b106-7857fec5558e" />

Program berhasil dijalankan tanpa error.
Penjelasan:

1. List [1, 2, 3] memiliki panjang 3, sesuai dengan assert.
2. Elemen indeks 1 awalnya 2, sesuai dengan assert.
3. Elemen indeks 1 diganti menjadi 1, maka saat diprint hasilnya 1.


Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.


<img width="765" height="375" alt="image" src="https://github.com/user-attachments/assets/021b6730-eda1-4412-a613-5a4de6b32b74" />


Jika langsung List.filled(5, null), Dart bisa menganggap tipenya List<Null>, sehingga tidak bisa diisi string.

Dengan List<String?>, berarti list bisa berisi string atau null.


**PRAKTIKUM 2: EKSPERIMEN TIPE DATA SET**

Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

<img width="729" height="57" alt="image" src="https://github.com/user-attachments/assets/161d6ed0-ae80-468e-b17c-d8eca9a0d727" />


Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

<img width="808" height="353" alt="image" src="https://github.com/user-attachments/assets/fa1acd83-3fd0-492d-a2ae-952697646a78" />

Penjelasan:

- Variabel halogens otomatis bertipe Set<String>.

- print() akan menampilkan semua elemen set.

- Tidak ada error, karena Set di Dart bisa dideklarasikan dengan {...}.


Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

<img width="476" height="182" alt="image" src="https://github.com/user-attachments/assets/7118a509-ea0f-4e4b-b20a-d32d5a0380ac" />

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll().

Hasil:

<img width="795" height="548" alt="image" src="https://github.com/user-attachments/assets/9383c01f-ffc3-410e-b3bc-ccd08ca2d426" />

names3 akan dianggap sebagai Map<dynamic, dynamic> kosong, bukan Set.

Perbaikan dengan fungsi .add() dan .addAll(). 

<img width="647" height="514" alt="image" src="https://github.com/user-attachments/assets/f4ff2edf-3e26-48ad-8048-3f6e37db37fa" />


**PRAKTIKUM 3: EEKSPERIMEN TIPE DATA MAPS**

Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

<img width="373" height="360" alt="image" src="https://github.com/user-attachments/assets/5494076f-717e-455d-9292-0ffd1f6fb7aa" />

Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

<img width="553" height="659" alt="image" src="https://github.com/user-attachments/assets/f49f5ead-e9ac-4079-8960-185b1f07948b" />

Penjelasan:

- Tidak error.

- gifts otomatis bertipe Map<String, Object?> karena ada String dan int di dalam value.

- nobleGases otomatis bertipe Map<int, Object?> karena ada String dan int di value.


Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.


<img width="389" height="232" alt="image" src="https://github.com/user-attachments/assets/76a24f08-b447-444f-a2a2-8c2d721a8902" />


Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).

<img width="522" height="824" alt="image" src="https://github.com/user-attachments/assets/13b81fb7-b4a9-4175-8d88-f16c71ef1db7" />

Penjelasan:

- Tidak error saat kompilasi, tapi gifts['fifth'] awalnya int, lalu diganti String. Dart masih mengizinkan karena tipenya Object?.

- nobleGases[18] awalnya int, lalu diganti String. Sama, Dart izinkan karena tipenya Object?.

- Tapi: mhs1 dan mhs2 masih kosong


Perbaikan:

<img width="559" height="670" alt="image" src="https://github.com/user-attachments/assets/9b7e0291-af2e-4711-af7a-eb84075f970d" />


**PRAKTIKUM 4: EKSPERIKMEN TIPE DATA LIST (SPREAD DAN CONTROL-FLOW OPERATORS)**

Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

<img width="346" height="117" alt="image" src="https://github.com/user-attachments/assets/3dcb8b43-706b-47e1-8411-3e006c7a540b" />

Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

<img width="894" height="480" alt="image" src="https://github.com/user-attachments/assets/99118fbc-d4aa-4f39-97f9-07a9f51a6797" />

Error awal: list1 tidak ada, harusnya list.

Perbaikan:

<img width="668" height="500" alt="image" src="https://github.com/user-attachments/assets/7d9d92ac-3b3d-4e24-a858-07dbeb2b6055" />

Penjelasan:

- ...list = spread operator, menyebarkan isi list ke dalam list lain.

- list2 = [0, 1, 2, 3].

- list2.length = 4.

Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

<img width="316" height="106" alt="image" src="https://github.com/user-attachments/assets/24c33178-d736-402a-a881-18b7ae3c909e" />

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.

<img width="678" height="842" alt="image" src="https://github.com/user-attachments/assets/0c59426f-8e09-4230-9d42-ed3a0f5a903d" />


Error.

- Undefined name 'list1'. Karena menulis list1 = [1, 2, null]; tanpa deklarasi var atau tipe data. Dart tidak mengenali list1 sebelumnya.

- Unexpected type 'invalid-type' of a spread. Karena ...?list1 gagal dibaca, akibat list1 belum terdefinisi dengan benar.

Perbaikan:

<img width="763" height="872" alt="image" src="https://github.com/user-attachments/assets/f5c41683-df6a-4496-bdea-1d86e234b019" />

Langkah 4

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

<img width="690" height="51" alt="image" src="https://github.com/user-attachments/assets/0ecc709e-515c-497e-89d6-6f8d80ff9ec7" />


Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

Error. promoActive belum pernah didefinisikan

Perbaikan:

<img width="804" height="503" alt="image" src="https://github.com/user-attachments/assets/3cef60af-c927-43e3-9098-63a406673cfb" />

Langkah 5

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.


<img width="924" height="371" alt="image" src="https://github.com/user-attachments/assets/0a687e5f-db93-4ed8-8900-da96fa499606" />

Error. variabel login belum pernah kamu definisikan

Perbaikan:

<img width="937" height="395" alt="image" src="https://github.com/user-attachments/assets/90e852da-4fca-4565-aa97-ec4a49bb9d98" />


Langkah 6

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For.


<img width="692" height="307" alt="image" src="https://github.com/user-attachments/assets/3a640d5f-ec27-4db8-bf3c-83e90bed407f" />

Penjelasan:

- for (var i in listOfInts): digunakan dalam list literal, disebut Collection For.

- Fungsinya untuk membentuk list baru berdasarkan iterasi dari list lain.

- assert(listOfStrings[1] == '#1') memastikan elemen kedua adalah '#1'.

Manfaat Collection For:

- Membuat list baru dengan cepat dari iterasi.

- Lebih ringkas dibanding manual for loop.

- Bisa digabung dengan if untuk kondisi tertentu.


**PRAKTIKUM 5: EKSPERIMEN TIPE DATA RECORDS**

Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

<img width="556" height="100" alt="image" src="https://github.com/user-attachments/assets/822340a5-d98d-47f8-822f-3f86dff6134c" />

Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.



Error. Di Dart, setiap statement harus diakhiri dengan titik koma (;).

Perbaikan:

<img width="629" height="472" alt="image" src="https://github.com/user-attachments/assets/fdf1bfbb-80ba-490c-ad67-3c7e1b74b9ca" />


Langkah 3

Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

<img width="392" height="121" alt="image" src="https://github.com/user-attachments/assets/2e5510d4-929e-4a90-8db1-7085c201f652" />


Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

Program berhasil dikompilasi (tidak ada error sintaks). Tapi saat dijalankan, tidak ada output (Exited.) karena belum memanggil fungsi tukar() di dalam main() .

Tambahan:

<img width="608" height="626" alt="image" src="https://github.com/user-attachments/assets/7b549830-8a0d-421d-85f6-92638017b52e" />

Penjelasan:

- tukar() menerima record (int, int): misalnya (10, 20).

- Dengan var (a, b) = record; kita melakukan destructuring untuk mengambil nilai 10 ke a dan 20 ke b.

- Return (b, a) akan menukar posisi sehingga hasilnya (20, 10).


Langkah 4

Tambahkan kode program berikut di dalam scope void main().

<img width="529" height="74" alt="image" src="https://github.com/user-attachments/assets/1250c66e-9126-4304-8641-7803c6b946a1" />

Hasil run:

<img width="833" height="446" alt="image" src="https://github.com/user-attachments/assets/3f91dd1a-26b6-41ab-bec3-0e4664e3093b" />


Dart akan error karena variabel mahasiswa bertipe record (String, int) tapi belum diinisialisasi.

Variabel non-nullable di Dart wajib diberi nilai saat deklarasi, kecuali ditandai nullable (?).

Perbaikan:

<img width="699" height="526" alt="image" src="https://github.com/user-attachments/assets/d9852c82-2e7c-4a3c-bf42-ef74183e5ece" />


Langkah 5

Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM.

<img width="548" height="142" alt="image" src="https://github.com/user-attachments/assets/a364bcfe-c54b-473d-b5d8-5a42b58c7eac" />

Hasil run:

<img width="615" height="433" alt="image" src="https://github.com/user-attachments/assets/9294547e-599c-47a1-88d1-94d4616162bc" />

Kode membuat record dengan field bernama dan tanpa nama (positional + named fields).

Mengganti salah satu isi record dengan nama dan NIM:

<img width="820" height="632" alt="image" src="https://github.com/user-attachments/assets/0f1d385c-c37b-4eef-8c7c-eee750a8633c" />


**TUGAS PRAKTIKUM**

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
    Definisi: Dalam bahasa Dart, function adalah sekumpulan kode yang digunakan untuk menyelesaikan suatu tugas tertentu, dan dapat dipanggil berulang kali.
    Dengan function, kode menjadi lebih modular, mudah dibaca, dan mudah dikelola. Fungsi memiliki nama, parameter (opsional), dan nilai balik (return value).
    
    Tujuan:
    
    - Mengorganisir kode agar lebih rapi dan modular.
    
    - Menghindari duplikasi kode.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

   a. Positional Parameter

   Argumen harus diberikan sesuai urutan.


   <img width="488" height="416" alt="image" src="https://github.com/user-attachments/assets/e531d353-6a4f-4b6c-b656-6157fd45c6f3" />

   
   b. Optional Positional Parameter ([])

   Parameter bisa tidak diisi, dan default-nya null. Bisa juga diberi nilai default.

   <img width="667" height="425" alt="image" src="https://github.com/user-attachments/assets/fc2174bc-f4d4-4ad4-ada8-3b3baab3d2bb" />

   c. Named Parameter ({})

    - Parameter dipanggil dengan nama. Lebih jelas, terutama jika banyak parameter.

    - Bisa dibuat wajib dengan required, atau punya nilai default.
  
      <img width="789" height="440" alt="image" src="https://github.com/user-attachments/assets/204904ff-58e7-4e26-9f6a-8de548f9d64f" />



4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

   Dart memperlakukan function sebagai first-class objects, artinya function dapat diperlakukan seperti data/objek biasa. Misalnya:

    - Disimpan ke variabel

    - Dikirim sebagai parameter ke function lain

    - Dikembalikan sebagai hasil function

      <img width="870" height="614" alt="image" src="https://github.com/user-attachments/assets/30648fe1-298a-4ce6-9890-47fe0c0e44b8" />


5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

   Anonymous function (juga disebut lambda atau closure sederhana) adalah function tanpa nama. Biasanya dipakai ketika function hanya digunakan sekali atau dalam konteks singkat, seperti dalam perulangan atau callback.


   Contoh dengan forEach:

   <img width="782" height="616" alt="image" src="https://github.com/user-attachments/assets/b7364330-5159-426b-b10c-bc422217677c" />


6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

   a. Lexical Scope
   
   Lexical scope berarti variabel hanya bisa diakses di dalam area tempat ia didefinisikan (ruang lingkup).

    <img width="411" height="399" alt="image" src="https://github.com/user-attachments/assets/7a0bad1b-c854-405b-ab01-d26ada54ecce" />

   
   b. Lexical Closure
   
   Closure adalah function yang “membawa” lingkungan di sekitarnya sehingga tetap bisa mengakses variabel meskipun lingkup asalnya sudah selesai dieksekusi.

   <img width="507" height="621" alt="image" src="https://github.com/user-attachments/assets/266e1028-d150-4988-8669-d5f9c143b7d4" />


7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
   
   Dart tidak mendukung return lebih dari satu nilai secara langsung. Namun, ada beberapa cara:

   a. Menggunakan List

   <img width="639" height="399" alt="image" src="https://github.com/user-attachments/assets/e44627cb-3871-4103-9539-bebd26796f53" />
   

   b. Menggunakan Map

   <img width="748" height="464" alt="image" src="https://github.com/user-attachments/assets/0a8b3383-ce01-4e88-8f8f-12e8b690ac44" />


   c. Menggunakan Class

   <img width="699" height="510" alt="image" src="https://github.com/user-attachments/assets/ec11f800-3304-42fe-a9e5-1f339955d821" />
   

    
























