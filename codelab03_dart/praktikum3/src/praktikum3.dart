void main(List<String> args) {
  // ===LANGKAH1===
  // for (Index = 10; index < 27; index) {
  //   print(Index);
  // }

  // ===PERBAIKAN LANGKAH 1===
    for (int index = 10; index < 27; index++) {
    print(index);
  }

  // ===LANGKAH 3===
  // If (Index == 21) break;
  // Else If (index > 1 || index < 7) continue;
  // print(index);

  // ===PERBAIKAN LANGKAH 3===
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;                // hentikan loop di 21
    else if (index > 1 && index < 7) continue; // skip 2–6
    print(index);
  }

}

