import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final String planName;

  const PlanScreen({super.key, required this.planName});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).unfocus(); // tutup keyboard saat scroll
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.planName),
        backgroundColor: Colors.purple,
      ),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, _) {
          // Coba ambil plan berdasarkan nama
          final planIndex =
              plans.indexWhere((p) => p.name == widget.planName);

          if (planIndex == -1) {
            return const Center(child: Text('Rencana tidak ditemukan.'));
          }

          final currentPlan = plans[planIndex];

          return Column(
            children: [
              Expanded(child: _buildList(currentPlan, planIndex, plansNotifier)),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    currentPlan.completenessMessage,
                    style: const TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(plansNotifier),
    );
  }

  /// Tombol tambah tugas
  Widget _buildAddTaskButton(ValueNotifier<List<Plan>> planNotifier) {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      child: const Icon(Icons.add, color: Colors.white),
      onPressed: () {
        final plans = planNotifier.value;
        final planIndex =
            plans.indexWhere((p) => p.name == widget.planName);

        if (planIndex == -1) return;

        final currentPlan = plans[planIndex];
        final updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task(description: '', complete: false));

        planNotifier.value = List<Plan>.from(plans)
          ..[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
      },
    );
  }

  /// Daftar tugas dalam plan
  Widget _buildList(
      Plan currentPlan, int planIndex, ValueNotifier<List<Plan>> planNotifier) {
    return ListView.builder(
      controller: scrollController,
      itemCount: currentPlan.tasks.length,
      itemBuilder: (context, index) {
        final task = currentPlan.tasks[index];
        return ListTile(
          leading: Checkbox(
            activeColor: Colors.purple,
            value: task.complete,
            onChanged: (selected) {
              final updatedTasks = List<Task>.from(currentPlan.tasks);
              updatedTasks[index] = Task(
                description: task.description,
                complete: selected ?? false,
              );

              planNotifier.value = List<Plan>.from(planNotifier.value)
                ..[planIndex] = Plan(
                  name: currentPlan.name,
                  tasks: updatedTasks,
                );
            },
          ),
          title: TextFormField(
            initialValue: task.description,
            cursorColor: Colors.purple,
            decoration: const InputDecoration(
              hintText: 'Deskripsi tugas...',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple, width: 2),
              ),
            ),
            onChanged: (text) {
              final updatedTasks = List<Task>.from(currentPlan.tasks);
              updatedTasks[index] = Task(
                description: text,
                complete: task.complete,
              );

              planNotifier.value = List<Plan>.from(planNotifier.value)
                ..[planIndex] = Plan(
                  name: currentPlan.name,
                  tasks: updatedTasks,
                );
            },
          ),
        );
      },
    );
  }
}
