import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Ninis'),
        backgroundColor: const Color.fromARGB(255, 168, 203, 255),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    final selectedColor = await showDialog<Color>(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Purple'),
              onPressed: () {
                Navigator.pop(context, const Color.fromARGB(255, 218, 139, 255));
              },
            ),
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                Navigator.pop(context, const Color.fromARGB(255, 254, 185, 255));
              },
            ),
            TextButton(
              child: const Text('Dark Red'),
              onPressed: () {
                Navigator.pop(context, const Color.fromARGB(255, 97, 0, 0));
              },
            ),
          ],
        );
      },
    );

    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}
