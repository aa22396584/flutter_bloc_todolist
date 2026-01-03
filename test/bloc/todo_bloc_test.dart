import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_todolist/bloc/todo_bloc.dart';
import 'package:flutter_bloc_todolist/bloc/todo_event.dart';
import 'package:flutter_bloc_todolist/bloc/todo_state.dart';
import 'package:flutter_bloc_todolist/model/todo.dart';
import 'package:flutter_bloc_todolist/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'todo_bloc_test.mocks.dart';

@GenerateMocks([ITodoRepository])
void main() {
  late MockITodoRepository mockTodoRepository;
  late TodoBloc todoBloc;

  setUp(() {
    mockTodoRepository = MockITodoRepository();
    todoBloc = TodoBloc(mockTodoRepository);
  });

  tearDown(() {
    todoBloc.close();
  });

  group('TodoBloc', () {
    const todo1 = Todo(id: 1, description: 'Task 1');
    const todo2 = Todo(id: 2, description: 'Task 2');
    const todos = [todo1, todo2];

    test('initial state is correct', () {
      expect(todoBloc.state, const TodoState.initial());
    });

    blocTest<TodoBloc, TodoState>(
      'emits [loading, loaded] when LoadTodos is added',
      build: () {
        when(mockTodoRepository.getAllTodos(query: anyNamed('query')))
            .thenAnswer((_) async => todos);
        return todoBloc;
      },
      act: (bloc) => bloc.add(const TodoEvent.loadTodos()),
      expect: () => [
        const TodoState.loading(),
        const TodoState.loaded(todos),
      ],
      verify: (_) {
        verify(mockTodoRepository.getAllTodos(query: null)).called(1);
      },
    );

    blocTest<TodoBloc, TodoState>(
      'emits [loading, error] when LoadTodos fails',
      build: () {
        when(mockTodoRepository.getAllTodos(query: anyNamed('query')))
            .thenThrow(Exception('Failed to load'));
        return todoBloc;
      },
      act: (bloc) => bloc.add(const TodoEvent.loadTodos()),
      expect: () => [
        const TodoState.loading(),
        const TodoState.error('Exception: Failed to load'),
      ],
    );

    blocTest<TodoBloc, TodoState>(
      'adds todo and reloads',
      build: () {
        when(mockTodoRepository.insertTodo(any))
            .thenAnswer((_) async {});
        when(mockTodoRepository.getAllTodos(query: anyNamed('query')))
            .thenAnswer((_) async => [todo1]);
        return todoBloc;
      },
      act: (bloc) => bloc.add(const TodoEvent.addTodo(todo1)),
      // Note: The bloc emits states for LoadTodos internally after add.
      // So we expect loading -> loaded from the LoadTodos event triggered inside _onAddTodo
      expect: () => [
        const TodoState.loading(),
        const TodoState.loaded([todo1]),
      ],
      verify: (_) {
        verify(mockTodoRepository.insertTodo(todo1)).called(1);
        verify(mockTodoRepository.getAllTodos()).called(1);
      },
    );
  });
}
