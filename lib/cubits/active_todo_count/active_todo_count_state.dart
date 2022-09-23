part of 'active_todo_count_cubit.dart';

//완결이 되지않은 숫자 컨트롤
class ActiveTodoCountState extends Equatable{
  final int activeTodoCount;
  ActiveTodoCountState({
    required this.activeTodoCount,
});

  factory ActiveTodoCountState.initial(){
    return ActiveTodoCountState(activeTodoCount: 0);
  }

  @override
  List<Object> get props => [activeTodoCount];

  @override
  String toString() =>
      'ActiveTodoCountSttae(activeTodoCount: $activeTodoCount)';

  ActiveTodoCountState copyWith({
  int? activeTodoCount,
}) {
    return ActiveTodoCountState(
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }
}