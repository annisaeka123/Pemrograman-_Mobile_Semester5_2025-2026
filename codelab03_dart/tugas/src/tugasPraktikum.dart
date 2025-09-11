void main() {
  String nama = "Annisa Eka Puspita"; // nama
  String nim = "2341720131";          // nim

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i → $nama ($nim)");
    } else {
      print(i);
    }
  }
}

// Fungsi untuk mengecek bilangan prima
bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

