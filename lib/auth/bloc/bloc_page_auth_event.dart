part of 'bloc_page_auth.dart';

@freezed
class BlocPageAuthEvent with _$BlocPageAuthEvent {
  const factory BlocPageAuthEvent.signIn({
    required String email,
    required String password,
  }) = signIn;

  const factory BlocPageAuthEvent.signOut() = signOut;
}
