import 'package:firebase_auth/firebase_auth.dart';

///Clase para manejar la autenticacion con firebase
class RAuth {
  final _firebaseAuth = FirebaseAuth.instance;

  ///Login con contraseña y email
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception(
          'Ningun usuario encontrado para el correo electrónico ingresado.',
        );
      } else if (e.code == 'wrong-password') {
        throw Exception(
          'Se proporcionó una contraseña incorrecta para el usuario ingresado.',
        );
      }
    }
  }

  ///cerrar sesion
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  ///Verifica si se inicio sesion con google,facebook o apple
  Future<bool> isSingInFirebase() async {
    try {
      if (_firebaseAuth.currentUser != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
