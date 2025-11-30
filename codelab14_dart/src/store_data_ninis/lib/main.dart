import 'package:flutter/material.dart';
import 'dart:convert';
import '../model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../httphelper.dart';
import 'pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo - Ninis',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Variables
  late File myFile;
  String fileText = '';
  String documentsPath = '';
  String tempPath = '';
  int appCounter = 0;

  final storage = const FlutterSecureStorage();
  final pwdController = TextEditingController();
  final myKey = 'myPass';

  @override
  void initState() {
    super.initState();
    getPaths().then((_) {
      myFile = File('$documentsPath/pizzas.txt');
      writeFile();
    });
  }

  /// UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 176, 234),
        title: const Text('JSON - Ninis'),
      ),
      body: FutureBuilder(
        future: callPizzas(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return const Text('Something went wrong');
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

          final pizzas = snapshot.data!;

          return ListView.builder(
            itemCount: pizzas.length,
            itemBuilder: (context, index) {
              final pizza = pizzas[index];
              return ListTile(
                title: Text(pizza.pizzaName),
                subtitle: Text("${pizza.description} - € ${pizza.price}"),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PizzaDetailScreen(pizza: pizza, isNew: false),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PizzaDetailScreen(
              pizza: Pizza(
                id: 0,
                pizzaName: '',
                description: '',
                price: 0,
                imageUrl: '',
                rating: 0,
              ),
              isNew: true,
            ),
          ),
        ),
      ),
    );
  }

  /// API call
  Future<List<Pizza>> callPizzas() async {
    final helper = HttpHelper();
    return await helper.getPizzaList();
  }

  /// JSON Utils
  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((p) => p.toJson()).toList());
  }

  /// SharedPreference Counter
  Future readAndWritePreference() async {
    final prefs = await SharedPreferences.getInstance();
    appCounter = (prefs.getInt('appCounter') ?? 0) + 1;
    await prefs.setInt('appCounter', appCounter);
    setState(() {});
  }

  Future deletePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() => appCounter = 0);
  }

  /// File Management
  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();

    setState(() {
      documentsPath = docDir.path;
      tempPath = tempDir.path;
    });
  }

  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Annisa Eka Puspita, 2341720131');
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> readFile() async {
    try {
      fileText = await myFile.readAsString();
      setState(() {});
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Secure Storage
  Future writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future<String> readFromSecureStorage() async {
    return await storage.read(key: myKey) ?? '';
  }
}
