import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/auth/bloc/bloc_page_auth.dart';
import 'package:my_app/auth/widgets/backgroud_login.dart';
import 'package:my_app/auth/widgets/login_form.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundLogin(),
            BlocConsumer<BlocPageAuth, BlocPageAuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  authenticated: () =>
                      context.router.replaceNamed('/page-home'),
                  authError: (error) {
                    Fluttertoast.showToast(
                      msg: error.toString(),
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16,
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  unAuthenticated: () => LoginForm(),
                  orElse: Container.new,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
