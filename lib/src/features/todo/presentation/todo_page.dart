import 'package:app_akademie_practice/src/features/todo/presentation/todo_card.dart';
import 'package:app_akademie_practice/src/features/todo/domain/todo.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        backgroundColor: Colors.grey.shade300,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Expanded(
          child: ListView.builder(
            itemCount: myTodo.length,
            itemBuilder: (context, index) {
              final todo = myTodo[index];

              return TodoCard(todo: todo);
            },
          ),
        ),
      ),
    );
  }
}
