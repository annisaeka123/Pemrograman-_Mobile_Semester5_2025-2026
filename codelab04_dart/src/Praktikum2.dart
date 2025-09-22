void main(List<String> args) {
  // ===LANGKAH 1===
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // ===LANGKAH 3===
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  // ===PERBAIKAN LANGKAH 3===
  var names1 = <String>{};
  Set<String> names2 = {};

  // Tambah elemen dengan .add()
  names1.add("Annisa Eka Puspita");
  names1.add("2341760010");

  // Tambah elemen dengan .addAll()
  names2.addAll({"Annisa Eka Puspita", "2341760010"});

  print(names1);
  print(names2);
}