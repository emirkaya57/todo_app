import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/todo_list_manager.dart';
import 'package:uuid/uuid.dart';

import '../model/todoModel.dart';

final todoListProvider =
    StateNotifierProvider<TodoListManager, List<TodoModel>>((ref) {
  return TodoListManager([
    TodoModel(id: const  Uuid().v4(), description: 'Spora git'),
    TodoModel(id: const  Uuid().v4(), description: 'Spora git'),
    TodoModel(id: const  Uuid().v4(), description: 'Spora git')  ]);
});