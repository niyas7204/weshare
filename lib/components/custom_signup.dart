import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/components/custompaints/login_box.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({
    super.key,
    required this.formKey,
    required this.labels,
    required this.controllers,
  });

  final GlobalKey<FormState> formKey;
  final List<String> labels;
  final List<TextEditingController> controllers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(150, 96, 125, 139),
          borderRadius: BorderRadius.circular(27)),
      height: 330,
      child: Stack(
        children: [
          Positioned(
            right: 20,
            top: 30,
            child: TextButton(
                onPressed: () {
                  BlocProvider.of<UserAuthenticationBloc>(context)
                      .add(UserAuthenticationEvent.changeAuthSelection(
                    controllers: controllers,
                    authSelection: AuthSelection.login,
                  ));
                },
                child: CustomTexts.header1('Lgin')),
          ),
          CustomPaint(
            painter: LoginPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    right: 30,
                    child: CustomTexts.header1('Sign Up'),
                  ),
                  Center(
                    child: Form(
                        key: formKey,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: labels.length,
                            itemBuilder: (context, index) => CustomTextField(
                                label: labels[index],
                                controller: controllers[index],
                                formKey: formKey))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
