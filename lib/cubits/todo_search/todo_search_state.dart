part of 'todo_search_cubit.dart';

class TodoSearchState {
  final String searchTerm;

  TodoSearchState({
    required this.searchTerm,
  });

  factory TodoSearchState.initial(){
    return TodoSearchState(searchTerm: "");
  }

  //모든 state를 바꾸는데 일관성을 지키는 것, 예측이 가능 한 코드
  //타입의 충돌을 막을 수 있다
  @override
  List<Object> get props => [searchTerm];

  @override
  String toString() => 'TodoSearchState(searchTerm: $searchTerm)';

  TodoSearchState copyWith({
    String? searchTerm,
  }) {
    return TodoSearchState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }
}
