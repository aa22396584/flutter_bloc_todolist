import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_todolist/bloc/todo_event.dart';
import 'package:flutter_bloc_todolist/bloc/todo_state.dart';
import 'package:flutter_bloc_todolist/repository/todo_repository.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITodoRepository _todoRepository;

  TodoBloc(this._todoRepository) : super(const TodoState.initial()) {
    on<TodoEvent>(_onEvent);
  }

  Future<void> _onEvent(TodoEvent event, Emitter<TodoState> emit) async {
    await event.map(
      loadTodos: (e) => _onLoadTodos(e, emit),
      addTodo: (e) => _onAddTodo(e, emit),
      updateTodo: (e) => _onUpdateTodo(e, emit),
      deleteTodo: (e) => _onDeleteTodo(e, emit),
    );
  }

  Future<void> _onLoadTodos(dynamic event, Emitter<TodoState> emit) async {
    // Note: 'event' here is the specific freezed class, access properties if needed
    // event.query is available if we cast or let type inference work, 
    // but map gives us the specific type.
    final query = event.query as String?;
    
    emit(const TodoState.loading());
    try {
      final todos = await _todoRepository.getAllTodos(query: query);
      emit(TodoState.loaded(todos));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onAddTodo(dynamic event, Emitter<TodoState> emit) async {
    try {
      await _todoRepository.insertTodo(event.todo);
      add(const TodoEvent.loadTodos());
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTodo(dynamic event, Emitter<TodoState> emit) async {
    try {
      await _todoRepository.updateTodo(event.todo);
      add(const TodoEvent.loadTodos());
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTodo(dynamic event, Emitter<TodoState> emit) async {
    try {
      await _todoRepository.deleteTodoById(event.id);
      add(const TodoEvent.loadTodos());
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }
}
