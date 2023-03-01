import 'package:flutter/material.dart';

///Fondo para el Login
class BackgroundLogin extends StatelessWidget {
  /// {@macro BackgroundLogin}
  const BackgroundLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 25, 22, 84),
            Color.fromARGB(255, 67, 198, 172),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
    );
  }
}
