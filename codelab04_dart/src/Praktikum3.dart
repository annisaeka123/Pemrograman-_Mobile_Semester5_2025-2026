void main(List<String> args) {
  // ===LANGKAH 1===
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  // ===LANGKAH 3===
  // var mhs1 = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';

  // var mhs2 = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';

  // ===PERBAIKAN LANGKAH 3===
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Annisa Eka';
  mhs1['nim'] = '1234567891';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Eka Puspita';
  mhs2[2] = '1987654321';

  print(mhs1);
  print(mhs2);

}
