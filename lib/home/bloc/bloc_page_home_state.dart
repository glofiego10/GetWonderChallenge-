part of 'bloc_page_home.dart';

///Enum que representa los estados de autenticación
enum HomeStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == HomeStatus.initial;
  bool get isLoading => this == HomeStatus.loading;
  bool get isSuccess => this == HomeStatus.success;
  bool get isError => this == HomeStatus.error;
}

@freezed
class BlocPageHomeState with _$BlocPageHomeState {
  const factory BlocPageHomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<Info> listInfo,
    String? error,
  }) = _BlocPageHomeState;

  factory BlocPageHomeState.fromJson(Map<String, dynamic> json) =>
      _$BlocPageHomeStateFromJson(json);
}
