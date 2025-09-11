Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131


**PRAKTIKUM 3: MENERAPKAN PERULANGAN "FOR" DAN "BREAK-CONTINUE"**


**LANGKAH 1**

<img width="477" height="121" alt="image" src="https://github.com/user-attachments/assets/70eeab8c-d15a-48dd-a42e-3631c5295b1c" />


**LANGKAH 2**

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

<img width="912" height="608" alt="image" src="https://github.com/user-attachments/assets/b9e4511f-f684-4ae2-9499-ad2b4155a29d" />

Terjadi error karena:

- Variabel index / Index tidak pernah dideklarasikan.
- Penulisan Index dan index tidak konsisten (Dart itu case-sensitive → huruf besar/kecil dianggap berbeda).
- Di bagian for, ekspresi terakhir (index) seharusnya index++ untuk menambah nilai, bukan hanya index.

Perbaikannya:

<img width="726" height="884" alt="image" src="https://github.com/user-attachments/assets/c8d18e01-18c9-4bf5-93a4-569c47b63028" />




**LANGKAH 3**

<img width="558" height="179" alt="image" src="https://github.com/user-attachments/assets/1fcf5268-20b9-452a-b63f-4ad3b4e0e59b" />


Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.


<img width="1657" height="880" alt="image" src="https://github.com/user-attachments/assets/36b193e7-3550-41fc-8889-ea70c587cb6b" />


Hasilnya, terjadi error karena:
- Keyword if dan else harus huruf kecil, bukan If atau Else If.
- Kondisi logika (index > 1 || index < 7) salah, karena dengan || (OR), kondisi selalu bernilai true. Harusnya pakai && (AND) untuk memeriksa apakah index ada di antara 1 dan 7.
- print() harus huruf kecil juga.

Perbaikannya:

<img width="674" height="676" alt="image" src="https://github.com/user-attachments/assets/32379f13-7ebd-4166-b256-4e7ac1cebc19" />


