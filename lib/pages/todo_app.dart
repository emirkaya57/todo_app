import 'package:flutter/material.dart';
import 'package:todo_app/model/todoModel.dart';
import 'package:todo_app/widgets/tooltip_widget.dart';
import 'package:uuid/uuid.dart';

import '../widgets/title.dart';
import '../widgets/todo_list_item_widget.dart';

class TodoApp extends StatelessWidget {
  TodoApp({Key? key}) : super(key: key);
  final _todocontroller = TextEditingController();
  List<TodoModel> todoList = [
    TodoModel(id: const Uuid().v4(), description: 'spora git'),
    TodoModel(id: const Uuid().v4(), description: 'amvye git'),
    TodoModel(id: const Uuid().v4(), description: 'okula git')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          const TitleWidget(),
          TextField(
            controller: _todocontroller,
            decoration: const InputDecoration(
              labelText: 'Neler yapacaksın',
            ),
            onSubmitted: (deger) {
              debugPrint('kaydedildi $deger');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const ToolTipWidget(),
          for (int i = 0; i < todoList.length; i++)
            Dismissible(
                key: ValueKey(todoList[i].id),
                child: TodoItems(item: todoList[i]))
        ]),
      ),
    );
  }
}
