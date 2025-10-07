import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Stndard apps
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(color: Colors.white),
//       child: const Center(
//         child: Text(
//           'Hello World',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(fontSize: 32, color: Colors.black87),
//         ),
//       ),
//     );
//   }
// }

// Material apps
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const String appTitle = 'Annisa Eka Puspita - 2341720131';
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Flutter layout demo')),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Annisa Eka Puspita - 2341720131';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: const SingleChildScrollView(
//           child: PavlovaLayout(),
//         ),
//       ),
//     );
//   }
// }

// class PavlovaLayout extends StatelessWidget {
//   const PavlovaLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Title
//     const titleText = Padding(
//       padding: EdgeInsets.all(20),
//       child: Text(
//         'Strawberry Pavlova',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontFamily: 'Roboto',
//           letterSpacing: 0.5,
//           fontSize: 28,
//         ),
//       ),
//     );

//     // Subtitle
//     const subTitle = Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Text(
//         'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
//         'Pavlova features a crisp crust and soft, light inside, usually topped with fruit and whipped cream.',
//         softWrap: true,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 16, height: 1.5),
//       ),
//     );

//     // Row of stars
//     final stars = Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         const Icon(Icons.star, color: Colors.black),
//         const Icon(Icons.star, color: Colors.black),
//       ],
//     );

//     // Ratings row
//     final ratings = Container(
//       padding: const EdgeInsets.all(20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           stars,
//           const Text(
//             '170 Reviews',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),
//     );

//     // Icon description row
//     const descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 0.5,
//       fontSize: 18,
//       height: 2,
//     );

//     final iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.kitchen, color: Colors.green[500]),
//                 const Text('PREP:'),
//                 const Text('25 min'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.timer, color: Colors.green[500]),
//                 const Text('COOK:'),
//                 const Text('1 hr'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.restaurant, color: Colors.green[500]),
//                 const Text('FEEDS:'),
//                 const Text('4-6'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );

//     // Left column (title, subtitle, ratings, icons)
//     final leftColumn = Container(
//       padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
//       child: Column(
//         children: [
//           titleText,
//           subTitle,
//           ratings,
//           iconList,
//         ],
//       ),
//     );

//     // Image
//     final mainImage = Image.asset(
//       'assets/images/pavlova.jpg',
//       fit: BoxFit.cover,
//       width: 300,
//       height: 600,
//     );

//     // Full layout using Row
//     return Center(
//       child: Container(
//         margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
//         height: 600,
//         child: Card(
//           elevation: 4,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(width: 440, child: leftColumn),
//               Expanded(child: mainImage),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Annisa Eka Puspita - 2341720131',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const LayoutHomePage(),
    );
  }
}

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Layout Widgets Demo'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionTitle(title: 'Container Example'),
          ContainerExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'GridView Example'),
          GridViewExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'Stack Example'),
          StackExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'Card & ListTile Example'),
          CardExample(),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

// 1. Container Example
class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  Widget _buildDecoratedImage(String imageName) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset('assets/images/$imageName', fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildImageRow(List<String> imageList) {
    return Row(
      children: imageList.map((img) => _buildDecoratedImage(img)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFEEEEEE)),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          _buildImageRow(['pic1.jpg', 'pic2.jpg']),
          _buildImageRow(['pic3.jpg', 'pic4.jpg']),
        ],
      ),
    );
  }
}

// 2. GridView Example
class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.extent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(
          6,
          (i) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/pic${i + 1}.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 3️. Stack Example
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pic5.jpg'),
            radius: 80,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black54),
            padding: const EdgeInsets.all(6),
            child: const Text(
              'Pavlova',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// 4️. Card + ListTile Example
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/images/pic6.jpg', width: 50),
              title: const Text('1625 Main Street'),
              subtitle: const Text('My City, CA 99984'),
              trailing: const Icon(Icons.map),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('(408) 555-1212'),
            ),
            const ListTile(
              leading: Icon(Icons.mail, color: Colors.blue),
              title: Text('example@email.com'),
            ),
          ],
        ),
      ),
    );
  }
}
