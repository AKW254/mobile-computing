import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final ValueChanged<bool?> onChanged;

  const TaskTile({
    super.key,
    required this.title,
    required this.isDone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
    );
  }
}
