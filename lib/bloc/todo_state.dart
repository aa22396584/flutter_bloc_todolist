import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded(List<Todo> todos) = _Loaded;
  const factory TodoState.error(String message) = _Error;
}
