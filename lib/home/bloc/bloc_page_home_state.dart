part of 'bloc_page_home.dart';

///Enum que representa los estados de la pagina Home
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
    ///Estados
    @Default(HomeStatus.initial) HomeStatus status,

    ///Lista de informacion
    @Default([]) List<Info> listInfo,

    ///Mensaje de error
    String? error,
  }) = _BlocPageHomeState;

  factory BlocPageHomeState.fromJson(Map<String, dynamic> json) =>
      _$BlocPageHomeStateFromJson(json);
}
