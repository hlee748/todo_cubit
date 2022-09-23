part of 'todo_list_cubit.dart';


class TodoListState extends Equatable {
  final List<Todo> todos;
  TodoListState({
    required this.todos,
});

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(id: '1', desc: 'Clean the room'),
      Todo(id: '2', desc: 'Wash the dish'),
      Todo(id: '3', desc: 'Do homework'),
    ]); //처음에는 초기값이 셋다 default 로 false로 설정됨
  }

    @override
  List<Object> get props => [todos];

    @override
  String toString() => 'TodoListState(todos: $todos)';

    TodoListState copyWith({
  List<Todo>? todos,
}) {
      return TodoListState(todos: todos ?? this.todos,
      );
    }

}
