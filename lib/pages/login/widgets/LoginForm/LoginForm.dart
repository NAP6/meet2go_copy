import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  get borderStyle => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 40),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Email Address',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x607C8A94),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: borderStyle,
              errorBorder: borderStyle,
              focusedErrorBorder: borderStyle,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 15, bottom: 40),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x607C8A94),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: borderStyle,
              errorBorder: borderStyle,
              focusedErrorBorder: borderStyle,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
        )
      ],
    );
  }
}
