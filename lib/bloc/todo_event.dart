import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.loadTodos({String? query}) = _LoadTodos;
  const factory TodoEvent.addTodo(Todo todo) = _AddTodo;
  const factory TodoEvent.updateTodo(Todo todo) = _UpdateTodo;
  const factory TodoEvent.deleteTodo(int id) = _DeleteTodo;
}
