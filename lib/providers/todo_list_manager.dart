import 'package:todo_app/model/todoModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final todoListProvider =
    StateNotifierProvider<TodoListManager, List<TodoModel>>((ref) {
  return TodoListManager([
    TodoModel(id: const  Uuid().v4(), description: 'Spora git'),
    TodoModel(id: const  Uuid().v4(), description: 'Spora git'),
    TodoModel(id: const  Uuid().v4(), description: 'Spora git')  ]);
});

class TodoListManager extends StateNotifier<List<TodoModel>> {
  TodoListManager([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);

  void addTodo(String description) {
    state = [
      ...state,
      TodoModel(id: const Uuid().v4(), description: description)
    ];
  }

  void toogle(String id) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: todo.id,
              description: todo.description,
              completed: !todo.completed)
        else
          todo,
    ];
  }

  void edit({required String id, required String newDescription}) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: todo.id,
              completed: todo.completed,
              description: newDescription)
        else
          todo
    ];
  }

  void remove(TodoModel silinecekTodo) {}
}
