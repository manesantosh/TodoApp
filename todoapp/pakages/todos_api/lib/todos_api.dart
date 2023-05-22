import 'model/Todo.dart';

abstract class TodosApi{
  const TodosApi();

  /// it provides stream for all Todos
  Stream<List<Todo>> getTodos();

  /// If a [todo] with the same id already exists, it will be replaced.
  Future<void>saveTodo(Todo todo);

  /// Deletes the `todo` with the given id.
  Future<void>deleteTodo(String id);

  /// Sets the `isCompleted` state of all todos to the given value.
  /// Returns the number of updated todos.
  Future<int>completeAll({required bool isCompleted});
}

/// Error thrown when a [Todo] with a given id is not found.
class TodoNotFoundException implements Exception {}

