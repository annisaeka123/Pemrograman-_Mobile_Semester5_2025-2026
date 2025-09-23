// ===SOAL NO.3 - jenis-jenis parameter di Functions beserta contoh sintaksnya===
// Positional Parameter
// Contoh sintaks:
// void greet(String name, int age) {
//   print("Halo $name, umurmu $age tahun");
// }

// void main() {
//   greet("Annisa", 21);
// }

// Optional Positional Parameter
// Contoh sintaks:
// void greet(String name, [String? city]) {
//   print("Halo $name dari ${city ?? 'Kota tidak diketahui'}");
// }

// void main() {
//   greet("Annisa"); 
//   greet("Annisa", "Malang");
// }

// Named Parameter
// Contoh sintaks:
// void greet({required String name, int age = 18}) {
//   print("Halo $name, umurmu $age tahun");
// }

// void main() {
//   greet(name: "Annisa"); // Output: Halo Annisa, umurmu 18 tahun
//   greet(name: "Annisa", age: 21); // Output: Halo Annisa, umurmu 21 tahun
// }

// ===SOAL NO.4 - Functions sebagai first-class objects beserta contoh sintaknya===
// Contoh sintaks: 
// int tambah(int a, int b) => a + b;

// void main() {
//   // Simpan function ke variabel
//   var operasi = tambah;
//   print(operasi(4, 6)); // Output: 10

//   // Function sebagai parameter
//   void hitung(int x, int y, Function operasi) {
//     print(operasi(x, y));
//   }

//   hitung(3, 5, tambah); // Output: 8
// }

// ===SOAL NO.5 - anonymous functions beserta contoh sintaksnya===
// Contoh sintaks:
// void main() {
//   var angka = [1, 2, 3, 4];

//   angka.forEach((n) {
//     print(n * n); // Mencetak kuadrat dari tiap angka
//   });

//   // Anonymous function versi singkat
//   var kaliDua = (int x) => x * 2;
//   print(kaliDua(5)); // Output: 10
// }

// ===SOAL NO.6 - Contoh Lexical scope dan Lexical closures===
// Contoh Lexical Scope
// void main() {
//   var a = 10;

//   void printA() {
//     print(a); // Bisa akses 'a'
//   }

//   printA(); // Output: 10
// }

// Contoh Lexical Closure
// Function buatCounter() {
//   int hitung = 0;

//   return () {
//     hitung++;
//     return hitung;
//   };
// }

// void main() {
//   var counter1 = buatCounter();

//   print(counter1()); // Output: 1
//   print(counter1()); // Output: 2
//   print(counter1()); // Output: 3
// }

// ===SOAL NO.7 - Return Multiple Value di Functions===
// Menggunakan List
// List<int> operasi(int a, int b) {
//   return [a + b, a - b];
// }

// void main() {
//   var hasil = operasi(10, 5);
//   print("Tambah: ${hasil[0]}, Kurang: ${hasil[1]}");
// }

// Menggunakan Map
Map<String, int> operasi(int a, int b) {
  return {
    "tambah": a + b,
    "kurang": a - b,
  };
}

void main() {
  var hasil = operasi(10, 5);
  print("Tambah: ${hasil['tambah']}, Kurang: ${hasil['kurang']}");
}

//  Menggunakan Class
// class HasilOperasi {
//   int tambah;
//   int kurang;
//   HasilOperasi(this.tambah, this.kurang);
// }

// HasilOperasi operasi(int a, int b) {
//   return HasilOperasi(a + b, a - b);
// }

// void main() {
//   var hasil = operasi(10, 5);
//   print("Tambah: ${hasil.tambah}, Kurang: ${hasil.kurang}");
// }







