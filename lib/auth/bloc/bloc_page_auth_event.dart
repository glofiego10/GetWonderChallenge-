part of 'bloc_page_auth.dart';

///Eventos del login bloc
@freezed
class BlocPageAuthEvent with _$BlocPageAuthEvent {
  ///Cuando el usuario se registra con email y contraseña
  ///ocurre este evento y
  ///[FirebaseAuth] es llamado para le inicio de sesion
  const factory BlocPageAuthEvent.signIn({
    required String email,
    required String password,
  }) = signIn;

  ///Este evento es para que [FirebaseAuth]
  ///sea llamado para cerrar la sesion
  const factory BlocPageAuthEvent.signOut() = signOut;
}
