import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_event.dart';
import 'package:flutter_bloc_todolist/bloc/todo_state.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';
import 'package:flutter_bloc_todolist/ui/widgets/todo_list_item.dart';
import 'package:flutter_bloc_todolist/ui/widgets/todo_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('Todo List'),
            floating: true,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(72),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: TodoSearchBar(
                  onChanged: (query) {
                    context.read<TodoBloc>().add(TodoEvent.loadTodos(query: query));
                  },
                ),
              ),
            ),
          ),
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
                loading: () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (message) => SliverFillRemaining(
                  child: Center(child: Text('Error: $message')),
                ),
                loaded: (todos) {
                  if (todos.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.task_alt, size: 64, color: Colors.grey),
                            SizedBox(height: 16),
                            Text('No tasks found',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    );
                  }
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => TodoListItem(todo: todos[index]),
                      childCount: todos.length,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTodoDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showAddTodoDialog(BuildContext context) async {
    final controller = TextEditingController();
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Task'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(hintText: 'What needs to be done?'),
          onSubmitted: (_) {
            _submitAddTodo(context, controller);
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              _submitAddTodo(context, controller);
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _submitAddTodo(BuildContext context, TextEditingController controller) {
    final text = controller.text.trim();
    if (text.isNotEmpty) {
      context.read<TodoBloc>().add(
            TodoEvent.addTodo(Todo(
              id: null,
              description: text,
            )),
          );
    }
  }
}
