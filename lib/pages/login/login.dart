import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meet2go/cofig/Colors.dart';
import 'package:meet2go/cofig/Images.dart';
import 'package:meet2go/pages/login/widgets/LoginActions/LoginActions.dart';
import 'package:meet2go/pages/login/widgets/LoginForm/LoginForm.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final borderStyle = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0x607C8A94),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(50),
    );
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 20),
              child: Image.asset(
                logo,
                width: 250,
              ),
            ),
            const Text(
              'Bienvenido!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Use the form below to acces your account',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.input_text_grey),
            ),
            const LogInForm(),
            const LoginActions()
          ],
        ),
      )),
    );
  }
}
