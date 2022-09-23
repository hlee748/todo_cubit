part of 'todo_filter_cubit.dart';

//동일한 state가 연속으로 generate 될 경 rebuild 가 되지 않음 -> equatable 사용 이유
class TodoFilterState extends Equatable {
  final Filter filter;

  TodoFilterState({
    required this.filter,
  });

  factory TodoFilterState.initial() {
    return TodoFilterState(filter: Filter.all); //처음에 filter 하지 않는다는 의미
  }

  @override
  List<Object> get props => [filter];

  @override
  String toString() => 'TodoFiltersState(filter: $filter)';

  TodoFilterState copyWith({
    Filter? filter,
  }) {
    return TodoFilterState(
      filter: filter ?? this.filter,
    );
  }
}
