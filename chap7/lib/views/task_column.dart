import 'package:flutter/material.dart';
import '../models/task.dart';

/// Vue réutilisable : une colonne avec un titre, un compteur et une liste de tâches.
class TaskColumn extends StatelessWidget {
  final String title;
  final Color color;
  final List<Task> tasks;
  final VoidCallback onClearAll;
  final IconData actionIcon;
  final Color actionColor;
  final void Function(Task) onAction;

  const TaskColumn({
    super.key,
    required this.title,
    required this.color,
    required this.tasks,
    required this.onClearAll,
    required this.actionIcon,
    required this.actionColor,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // En-tête : titre + nombre de tâches + bouton "Tout effacer"
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 6, 4, 6),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red, size: 20),
                  tooltip: 'Tout effacer',
                  onPressed: tasks.isEmpty ? null : onClearAll,
                ),
              ],
            ),
          ),
          // Liste des tâches
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Card(
                  child: ListTile(
                    dense: true,
                    title: Text(task.title),
                    trailing: IconButton(
                      icon: Icon(actionIcon, color: actionColor, size: 20),
                      onPressed: () => onAction(task),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}