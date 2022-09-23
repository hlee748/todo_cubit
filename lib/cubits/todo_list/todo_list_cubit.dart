import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:todo_cubit/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial());

  void addTodo(String todoDesc){
    final newTodo = Todo(desc: todoDesc);
    final newTodos = [...state.todos, newTodo]; // 새로운 데이터 추가

    emit(state.copyWith(todos: newTodos));
  }

  void editTodo(String id, String todoDesc){ //desc를 변경하는 함수
    final newTodos = state.todos.map((Todo todo){
      if (todo.id == id) {
        return Todo(
            id: id,
            desc : todoDesc,
            completed: todo.completed,
        );
      }
      return todo;
    }).toList();

    emit(state.copyWith(todos: newTodos));
    print(state);
  }

  void toggleTodo(String id){ //completed 상태 변화시키는 함수
    final newTodos = state.todos.map((Todo todo){
      if(todo.id == id){
        return Todo(
            id: id,
            desc: todo.desc,
            completed: !todo.completed,
        );
      }
      return todo;
    }).toList();

    emit(state.copyWith(todos: newTodos));
  }

  void removeTodo(Todo todo){ //필요없는 투드리스트를 삭제
    final newTodos = state.todos.where((Todo t) => t.id != todo.id).toList();

    emit(state.copyWith(todos:newTodos));
  }
}
