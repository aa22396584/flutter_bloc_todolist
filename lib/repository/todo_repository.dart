import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_todolist/database/todo_dao.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getAllTodos({String? query});
  Future<void> insertTodo(Todo todo);
  Future<void> updateTodo(Todo todo);
  Future<void> deleteTodoById(int id);
}

@LazySingleton(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  final TodoDao _todoDao;

  TodoRepository(this._todoDao);

  @override
  Future<List<Todo>> getAllTodos({String? query}) => _todoDao.getTodos(query: query);

  @override
  Future<void> insertTodo(Todo todo) => _todoDao.insertTodo(todo);

  @override
  Future<void> updateTodo(Todo todo) => _todoDao.updateTodo(todo);

  @override
  Future<void> deleteTodoById(int id) => _todoDao.deleteTodoById(id);
}