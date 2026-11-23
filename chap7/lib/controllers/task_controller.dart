import 'package:flutter/foundation.dart';
import '../models/task.dart';

/// Contrôleur : contient toute la logique de gestion des tâches.
class TaskController extends ChangeNotifier {
  final List<Task> _tasks = [];
  int _nextId = 0;

  TaskController() {
    // Tâches d'exemple (comme sur les captures) — supprimez ces lignes si besoin
    addTask('Faire du sport');
    addTask('Faire les courses');
    addTask('Lire un livre');
  }

  /// Liste des tâches à faire
  List<Task> get todoTasks => _tasks.where((t) => !t.isDone).toList();

  /// Liste des tâches terminées
  List<Task> get doneTasks => _tasks.where((t) => t.isDone).toList();

  int get todoCount => todoTasks.length;
  int get doneCount => doneTasks.length;

  /// Ajouter une nouvelle tâche
  void addTask(String title) {
    final text = title.trim();
    if (text.isEmpty) return;
    _tasks.add(Task(id: _nextId++, title: text));
    notifyListeners();
  }

  /// Marquer une tâche comme terminée (elle passe dans la deuxième liste)
  void completeTask(Task task) {
    task.isDone = true;
    notifyListeners();
  }

  /// Supprimer une tâche
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  /// Bonus : tout effacer dans la liste des tâches terminées
  void clearDone() {
    _tasks.removeWhere((t) => t.isDone);
    notifyListeners();
  }

  /// Tout effacer dans la liste des tâches à faire
  void clearTodo() {
    _tasks.removeWhere((t) => !t.isDone);
    notifyListeners();
  }
}