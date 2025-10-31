import 'package:flutter/material.dart';
import 'models/data_layer.dart';
import 'provider/plan_provider.dart';
import 'views/plan_creator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management App',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
