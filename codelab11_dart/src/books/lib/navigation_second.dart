import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen - Ninis'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 231, 174, 18);
                Navigator.pop(context, color);
              },
              child: const Text('Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 208, 0, 94);
                Navigator.pop(context, color);
              },
              child: const Text('Dark Pink'),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 148, 212, 255);
                Navigator.pop(context, color);
              },
              child: const Text('Sky Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 40, 255, 226);
                Navigator.pop(context, color);
              },
              child: const Text('Cyan'),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 251, 184, 239);
                Navigator.pop(context, color);
              },
              child: const Text('Lilac'),
            ),
          ],
          // children: [
          //   ElevatedButton(
          //     onPressed: () {
          //       color = const Color.fromARGB(255, 193, 0, 0);
          //       Navigator.pop(context, color);
          //     },
          //     child: const Text('Red'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () {
          //       color = const Color.fromARGB(255, 0, 208, 28);
          //       Navigator.pop(context, color);
          //     },
          //     child: const Text('Green'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () {
          //       color = const Color.fromARGB(255, 40, 105, 255);
          //       Navigator.pop(context, color);
          //     },
          //     child: const Text('Blue'),
          //   ),
          // ],
        ),
      ),
    );
  }
}
