void main(List<String> args) {
  // ===LANGKAH 1===
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // ===PERBAIKAN LANGKAH 1===
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  // ===LANGKAH 3===
  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // ===PERBAIKAN LANGKAH 3===
  var list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  var nim = ['2', '3', '4', '1', '7', '2', '0', '1', '3', '1'];
  var listNim = [...?nim];

  print(listNim);

  // ===LANGKAH 4===
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // ===PERBAIKAN LANGKAH 4===
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var promoActive1 = false;
  var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive1) 'Outlet'];
  print(nav1);

  // ===LANGKAH 5===
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);

  // ===PERBAIKAN LANGKAH 5===
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);

  // ===LANGKAH 6===
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

}