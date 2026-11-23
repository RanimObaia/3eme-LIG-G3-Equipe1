import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/task_controller.dart';
import 'task_column.dart';

/// Vue principale : champ d'ajout + deux colonnes (À faire / Terminées).
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();

  void _addTask() {
    // listen: false → on appelle seulement une méthode, pas besoin de rebuild
    Provider.of<TaskController>(context, listen: false)
        .addTask(_textController.text);
    _textController.clear();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // listen: true (par défaut) → la vue se reconstruit à chaque changement
    final controller = Provider.of<TaskController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestionnaire de Tâches'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Zone d'ajout
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Nouvelle tâche...',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    onSubmitted: (_) => _addTask(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addTask,
                  child: const Text('Ajouter'),
                ),
              ],
            ),
          ),
          // Les deux listes côte à côte
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TaskColumn(
                    title: 'À faire (${controller.todoCount})',
                    color: Colors.orange.shade100,
                    tasks: controller.todoTasks,
                    onClearAll: controller.clearTodo,
                    actionIcon: Icons.check,
                    actionColor: Colors.green,
                    onAction: controller.completeTask,
                  ),
                ),
                Expanded(
                  child: TaskColumn(
                    title: 'Terminées (${controller.doneCount})',
                    color: Colors.green.shade100,
                    tasks: controller.doneTasks,
                    onClearAll: controller.clearDone, // Bonus "Tout effacer"
                    actionIcon: Icons.delete,
                    actionColor: Colors.red,
                    onAction: controller.deleteTask,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}