import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';

@lazySingleton
class TodoDao {
  final Database _db;

  TodoDao(this._db);

  Future<List<Todo>> getTodos({String? query}) async {
    List<Map<String, dynamic>> result;
    if (query != null && query.isNotEmpty) {
      result = await _db.query(
        'todos',
        where: 'description LIKE ?',
        whereArgs: ['%$query%'],
      );
    } else {
      result = await _db.query('todos');
    }

    return result.map((e) => Todo.fromJson(e)).toList();
  }

  Future<void> insertTodo(Todo todo) async {
    await _db.insert(
      'todos',
      todo.toJson()..remove('id'), // Let DB handle ID generation
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateTodo(Todo todo) async {
    await _db.update(
      'todos',
      todo.toJson(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  Future<void> deleteTodoById(int id) async {
    await _db.delete(
      'todos',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
