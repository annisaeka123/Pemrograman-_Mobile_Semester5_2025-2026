// import 'package:flutter/material.dart';
// import '../models/item.dart';

// class ItemPage extends StatelessWidget {
//   const ItemPage({super.key});

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('Item Page'),
//   //     ),
//   //     body: const Center(
//   //       child: Text('Halaman Item (belum digunakan)'),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // Ambil data dari arguments
//     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Item Detail'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Card(
//           margin: const EdgeInsets.all(24),
//           elevation: 6,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(24),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Icon(
//                   Icons.shopping_bag,
//                   size: 64,
//                   color: Colors.blue,
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   itemArgs.name,
//                   style: const TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Price: Rp ${itemArgs.price}',
//                   style: const TextStyle(
//                     fontSize: 20,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Detail'),
        backgroundColor: Colors.blue,
      ),

      // Body utama
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gambar item
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    itemArgs.photo,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),

                // Nama item
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                // Harga item
                Text(
                  'Price: Rp ${itemArgs.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 16),

                // Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      itemArgs.rating.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
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
