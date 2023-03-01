import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/auth/bloc/bloc_page_auth.dart';
import 'package:my_app/auth/widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

///Form del Login
class LoginForm extends StatefulWidget {
  /// {@macro LoginForm}
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get Wonder Challenge',
                style: TextStyle(
                  fontSize: 35.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    Shadow(
                      offset: Offset(5, 5),
                      blurRadius: 1,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormFieldCustom(
                textInputType: TextInputType.emailAddress,
                textController: _emailController,
                hintText: 'Email',
                validator: (value) {
                  return value != null && !EmailValidator.validate(value)
                      ? 'Ingresa un e-mail valido.'
                      : null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormFieldCustom(
                textInputType: TextInputType.text,
                textController: _passwordController,
                hintText: 'Contraseña',
                validator: (value) {
                  return value != null && value.length < 6
                      ? 'Ingresa como minimo 6 caracteres'
                      : null;
                },
                obscureText: true,
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                width: 40.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(120, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _authenticateWithEmailAndPassword(context);
                  },
                  child: const Text('Sign In'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _authenticateWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<BlocPageAuth>().add(
            BlocPageAuthEvent.signIn(
              email: _emailController.text,
              password: _passwordController.text,
            ),
          );
    }
  }
}
