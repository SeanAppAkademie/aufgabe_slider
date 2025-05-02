import 'package:app_akademie_practice/src/features/todo/domain/todo.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.todo});

  final Task todo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          todo.title,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(todo.difficulty, (index) {
            return Icon(Icons.fire_extinguisher);
          }),
        ),
        tileColor: Colors.grey.shade300,
      ),
    );
  }
}
