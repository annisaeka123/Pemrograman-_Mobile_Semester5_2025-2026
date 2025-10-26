Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

----------------------------------------------------------------------------

**#09 | Kamera**

PRAKTIKUM 1 (Mengambil Foto dengan Kamera di Flutter)

Langkah 1: Buat Project Baru dengan nama **kamera_flutter**

Langkah 2: Tambah dependensi yang diperlukan

Langkah 3: Ambil Sensor Kamera dari device

Langkah 4: Buat dan inisialisasi CameraController

Langkah 5: Gunakan CameraPreview untuk menampilkan preview foto

Langkah 6: Ambil foto dengan CameraController

Langkah 7: Buat widget baru DisplayPictureScreen

Langkah 8: Edit main.dart

Langkah 9: Menampilkan hasil foto

<img width="1919" height="1022" alt="image" src="https://github.com/user-attachments/assets/ff8fa004-be65-479a-81c9-090e14c8b858" />

<img src="codelab08_dart/img/praktikum1.gif" width="400" alt="Demo GIF"> <br>

 ![Demo GIF](https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab08_dart/img/praktikum1.gif)

 


PRAKTIKUM 2 (Membuat photo filter carousel)

Langkah 1: Buat project baru dengan nama **photo_filter_carousel**

Langkah 2: Buat widget Selector ring dan dark gradient

Langkah 3: Buat widget photo filter carousel

Langkah 4: Membuat filter warna - bagian 1

Langkah 5: Membuat filter warna

Langkah 6: Implementasi filter carousel

<img width="1919" height="1022" alt="image" src="https://github.com/user-attachments/assets/6dc2dd70-0026-470d-beee-d8adab1a8252" /> <br>

 ![Demo GIF](https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab08_dart/img/praktikum2.gif)




TUGAS PRAKTIKUM

1. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!

    Saya membuat project baru dengan nama **kamera_filter**

     <img width="1919" height="1017" alt="image" src="https://github.com/user-attachments/assets/1427cbdf-6720-4e6b-b375-864326a62c03" /> <br>


      ![Demo GIF](https://github.com/annisaeka123/Pemrograman-_Mobile_Semester5_2025-2026/blob/main/codelab08_dart/img/tugas_praktikum.gif)
    

3. Jelaskan maksud void async pada praktikum 1?

   Kata async digunakan agar fungsi dapat menjalankan operasi yang bersifat asynchronous (tidak langsung selesai, butuh waktu), misalnya:

    - Mengambil daftar kamera dari device (availableCameras()),

    - Menunggu hasil proses sebelum melanjutkan ke baris berikutnya.

    Sedangkan await digunakan di dalam fungsi async untuk menunggu hasil proses asynchronous sebelum melanjutkan eksekusi program.

4. Jelaskan fungsi dari anotasi @immutable dan @override ?

   a. @immutable

     @immutable = menandai bahwa class tidak boleh diubah setelah dibuat, membantu mencegah bug dan menjaga konsistensi widget Flutter.

    - Setelah FilterItem dibuat dengan warna tertentu (color), nilainya tidak boleh diubah lagi.

    - Flutter menggunakan @immutable untuk memastikan bahwa widget tree tetap efisien — karena perubahan nilai hanya boleh melalui setState() di StatefulWidget, bukan dengan mengubah properti secara langsung.

   b. @override

     @override = memberi tahu compiler bahwa method ini menggantikan method dari superclass. Jika nama method salah atau tidak cocok, compiler akan memberi peringatan — sehingga menghindari bug.

     - Di Flutter, initState() berasal dari class State.

     - Ketika kita menulis @override, artinya kita mengganti perilaku bawaan method initState() dengan kode kita sendiri.
       
     - Ini membantu compiler mengenali bahwa kita secara sadar ingin menimpa method yang sudah ada.


