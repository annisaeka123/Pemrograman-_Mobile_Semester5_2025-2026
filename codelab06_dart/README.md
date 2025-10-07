Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131

---------------------------------------------------------------------------

**06 | Layout dan Navigasi**

PRAKTIKUM 1 (Membangun Layout di Flutter)

Pertama, membuat kolom bagian kiri pada judul.

/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel.


<img width="1919" height="1023" alt="image" src="https://github.com/user-attachments/assets/53ab8fe2-5c8c-4b21-aeaf-36bb71a8d8d2" />



PRAKTIKUM 2 (Implementasi button row)

Langkah 1: Buat method Column _buildButtonColumn

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Langkah 2: Buat widget buttonSection

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Langkah 3: Tambah button section ke body

Tambahkan variabel buttonSection ke dalam body

<img width="1919" height="1022" alt="image" src="https://github.com/user-attachments/assets/44bf3758-b2d3-41b0-a2bc-32cb6941741f" />


PRAKTIKUM 3 (Implementasi text section)

Langkah 1: Buat widget textSection

Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. 

Langkah 2: Tambhakan variabel text section ke body

Tambahkan widget variabel textSection ke dalam body

<img width="1919" height="1020" alt="image" src="https://github.com/user-attachments/assets/26e7f4f9-73cc-40a8-9ae4-b3991cb9ef47" />


PRAKTIKUM 4 (Implementasi image section)

Langkah 1: Siapkan aset gambar

Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml

Langkah 2: Tambahkan gambar ke body

Tambahkan aset gambar ke dalam body.

Langkah 3: Ubah menjadi ListView

Atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

<img width="442" height="257" alt="image" src="https://github.com/user-attachments/assets/4c21e098-335a-4533-98b4-11b9f83729d7" />

<img width="1919" height="1021" alt="image" src="https://github.com/user-attachments/assets/4e9a9daa-45c3-476b-b277-c99e887b2306" />


TUGAS PRAKTIKUM 1

- Lay out a widget

  1. Standard Apps

     <img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/c1aec51c-5406-4c0e-a5e9-d86fb4a036e6" />

  2. Material Apps

     <img width="1919" height="1024" alt="image" src="https://github.com/user-attachments/assets/d7a3ee8c-5bdc-4805-a34c-5090cfae1cab" />


- Lay out multiple widgets vertically and horizontally

  <img width="1919" height="1021" alt="image" src="https://github.com/user-attachments/assets/2c188e6f-42ef-4c75-992e-e65161d18975" />


- Common layout widgets

  <img width="1919" height="1024" alt="image" src="https://github.com/user-attachments/assets/75516919-821d-4573-80c0-ee63d5261a0f" />

  <img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/7955f9a3-b55f-483f-8dcd-9ba7914e961f" />

