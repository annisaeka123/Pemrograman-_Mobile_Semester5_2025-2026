Nama: Annisa Eka Puspita

Kelas: TI-3H

Absen: 02

NIM: 2341720131


**PRAKTIKUM 1: MENERAPKAN CONTROL FLOWS ("IF/ELSE)**


**LANGKAH 1**

<img width="658" height="268" alt="image" src="https://github.com/user-attachments/assets/9a468405-a7e5-4740-aacf-9c13c26c936d" />


**LANGKAH 2**

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

<img width="788" height="662" alt="image" src="https://github.com/user-attachments/assets/023dfc23-a46d-42d7-a71e-80c58869a506" />


Error karena penggunaan kata kunci yang salah dalam Dart.
1. Penulisan kata kunci if dan else dalam Dart adalah huruf kecil semua.
   Dart bersifat case-sensitive, jadi If ≠ if, dan Else ≠ else.
   - else If salah: seharusnya else if (huruf kecil semua).
   - Else salah: seharusnya else (huruf kecil semua).

2. Compiler Dart membaca Else sebagai identifier/variabel, bukan sebagai keyword.
   Makanya muncul error:
   - Error: Expected ';' after this.
   - Error: Undefined name 'Else'.

Perbaikannya:

<img width="678" height="576" alt="image" src="https://github.com/user-attachments/assets/e4a463de-6953-4e4e-a59a-ffdbccb01e15" />



**LANGKAH 3**

<img width="358" height="139" alt="image" src="https://github.com/user-attachments/assets/32d48b73-3d6c-4d88-b547-ff3fa6c641f1" />


Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.


<img width="1277" height="335" alt="image" src="https://github.com/user-attachments/assets/f987d0e3-0db1-4b9e-a090-65cc0a91b126" />

Error muncul karena di Dart kondisi if harus berupa bool (true/false), bukan String.
- Variabel test bertipe String, nilainya "true".
- Dart tidak otomatis mengkonversi "true" (String) menjadi true (boolean).

Perbaikan:

<img width="622" height="427" alt="image" src="https://github.com/user-attachments/assets/273be6eb-1487-48be-ae51-d3546e730690" />








