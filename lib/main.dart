import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_event.dart';
import 'package:flutter_bloc_todolist/injection.dart';
import 'package:flutter_bloc_todolist/ui/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodoBloc>()..add(const TodoEvent.loadTodos()),
      child: MaterialApp(
        title: 'Flutter Bloc Todo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}