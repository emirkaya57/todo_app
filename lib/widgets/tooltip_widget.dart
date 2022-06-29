import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Text('4 Todos')),
        Tooltip(
          message: 'All Todos',
          child: TextButton(onPressed: () {}, child: const Text('All')),
        ),
        Tooltip(
          message: 'Only UnCompleted Todos',
          child: TextButton(onPressed: () {}, child: const Text('Active')),
        ),
        Tooltip(
          message: 'Only Completed Todos',
          child: TextButton(onPressed: () {}, child: const Text('Completed')),
        ),
      ],
    );
  }
}
