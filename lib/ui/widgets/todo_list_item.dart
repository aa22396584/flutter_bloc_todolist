import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_event.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(todo.id),
      background: Container(
        color: Theme.of(context).colorScheme.errorContainer,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          Icons.delete,
          color: Theme.of(context).colorScheme.onErrorContainer,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (_) {
        context.read<TodoBloc>().add(TodoEvent.deleteTodo(todo.id!));
      },
      child: CheckboxListTile(
        title: Text(
          todo.description,
          style: TextStyle(
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            color: todo.isDone ? Theme.of(context).disabledColor : null,
          ),
        ),
        value: todo.isDone,
        onChanged: (bool? value) {
          if (value != null) {
            context.read<TodoBloc>().add(
                  TodoEvent.updateTodo(
                    todo.copyWith(isDone: value),
                  ),
                );
          }
        },
      ),
    );
  }
}
