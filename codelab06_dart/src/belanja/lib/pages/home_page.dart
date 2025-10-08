// import 'package:flutter/material.dart';
// import '../models/item.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   // Langkah 5: Membuat data model
//   final List<Item> items = [
//     Item(name: 'Sugar', price: 5000),
//     Item(name: 'Salt', price: 2000),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping List'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       // Langkah 6: Membuat ListView dan itemBuilder
//       body: Container(
//         margin: const EdgeInsets.all(8),
//         child: ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             // return Card(
//             //   child: Container(
//             //     margin: const EdgeInsets.all(8),
//             //     child: Row(
//             //       children: [
//             //         Expanded(child: Text(item.name)),
//             //         Expanded(
//             //           child: Text(
//             //             item.price.toString(),
//             //             textAlign: TextAlign.end,
//             //           ),
//             //         ),
//             //       ],
//             //     ),
//             //   ),
//             // );

//             // Langkah 7: Menggunakan ListTile
//             return InkWell(
//               onTap: () {
//                 // Navigasi ke halaman ItemPage
//                 Navigator.pushNamed(context, '/item',
//                     arguments: item); // 🔹 Kirim data item
//               },
//               child: Card(
//                 child: Container(
//                   margin: const EdgeInsets.all(8),
//                   child: Row(
//                     children: [
//                       Expanded(child: Text(item.name)),
//                       Expanded(
//                         child: Text(
//                           item.price.toString(),
//                           textAlign: TextAlign.end,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Data model contoh
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo: 'assets/images/sugar.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'assets/images/salt.jpg',
      stock: 20,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    // Gambar item
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item.photo,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),

                    // Detail item
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Rp ${item.price}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Stok: ${item.stock}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Rating (bintang + angka)
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.rating.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // Footer
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.blue[50],
        child: const Text(
          'Annisa Eka Puspita - 2341720131',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
