void main(List<String> args) {
  // ===LANGAKAH 1===
  // var record = ('first', a: 2, b: true, 'last');
  // print(record)

  // ===PERBAIKAN LANGKAH 1===
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // ===LANGKAH 3 - PANGGIL FUNGSI===
  var angka = (10, 20);
  print("Record awal: $angka");

  var hasil = tukar(angka);
  print("Record setelah ditukar: $hasil");

  // ===LANGKAH 4===
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // print(mahasiswa);

  // ===PERBAIKAN LANGKAH 4===
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Annisa Eka Puspita', 2341720131);

  print(mahasiswa);
  print("Nama: ${mahasiswa.$1}");
  print("NIM: ${mahasiswa.$2}");

  // ===LANGKAH 5===
  // var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  // ===LANGKAH 5 - TAMBAHAN===
  var mahasiswa2 = ('Annisa Eka Puspita', a: 2341720123, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Annisa Eka Puspita'
  print(mahasiswa2.a);  // Prints 2341720123
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}

  // ===LANGKAH 3===
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }


