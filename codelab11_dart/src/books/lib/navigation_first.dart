import 'package:flutter/material.dart';
import 'navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.purple.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen - Ninis'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateAndGetColor(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  // method Future Navigation
  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => const NavigationSecond()
      ),
    ) ?? Colors.purple.shade300;
   setState(() {});
  }
}
