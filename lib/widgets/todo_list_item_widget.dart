import 'package:flutter/material.dart';
import 'package:todo_app/model/todoModel.dart';

class TodoItems extends StatelessWidget {
  TodoModel item;
   TodoItems({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: true,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      ),
      title: Text(item.description),
    );
  }
}
