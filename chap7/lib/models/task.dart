/// Modèle : représente une tâche (données uniquement, aucune logique d'état).
class Task {
  final int id;
  final String title;
  bool isDone;

  Task({required this.id, required this.title, this.isDone = false});
}