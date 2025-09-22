void main(List<String> args) {
  // ===LANGKAH 1===
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // ===LANGKAH 3===
  final List<String?> list = List.filled(5, null, growable: false);

  list[1] = "Annisa Eka Puspita"; 
  list[2] = "2341720131";

  print(list);
}

