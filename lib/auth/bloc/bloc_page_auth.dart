import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:repo_auth/repo_auth.dart';

part 'bloc_page_auth_event.dart';
part 'bloc_page_auth_state.dart';

part 'bloc_page_auth.freezed.dart';

/// Bloc que manega la autenticacion
class BlocPageAuth extends Bloc<BlocPageAuthEvent, BlocPageAuthState> {
  /// {@macro BlocPageAuth}
  BlocPageAuth({required this.repoAuth}) : super(const _UnAuthenticated()) {
    on<BlocPageAuthEvent>(_onAuthEvent);
  }

  Future<void> _onAuthEvent(
    BlocPageAuthEvent event,
    Emitter<BlocPageAuthState> emit,
  ) {
    return event.when(
      ///Login
      signIn: (email, password) async {
        emit(const _Loading());
        try {
          await repoAuth.signIn(email: email, password: password);
          await isLoggued.put('logged', true);
          emit(const _Authenticated());
        } catch (e) {
          emit(_AuthError(error: e.toString()));
          emit(const _UnAuthenticated());
        }
      },

      ///Cerrar sesión
      signOut: () async {
        emit(const _Loading());
        await repoAuth.signOut();
        await isLoggued.put('logged', false);
        emit(const _UnAuthenticated());
      },
    );
  }

  final isLoggued = Hive.box<bool>('Login');
  final RAuth repoAuth;
}
