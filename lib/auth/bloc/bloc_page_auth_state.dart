part of 'bloc_page_auth.dart';

///Estados de la Autenticacion
@freezed
class BlocPageAuthState with _$BlocPageAuthState {
  const factory BlocPageAuthState.loading() = _Loading;
  const factory BlocPageAuthState.authenticated() = _Authenticated;
  const factory BlocPageAuthState.unAuthenticated() = _UnAuthenticated;
  const factory BlocPageAuthState.authError({String? error}) = _AuthError;
}
