import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/components/custompaints/login_box.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/constants/sizes.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/features/user_auth/view_model/user_authentication_bloc.dart';
import 'package:weshare/utils/custom_texts.dart';

class CustomLogin extends StatelessWidget {
  const CustomLogin({
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
      child: Stack(
        children: [
          CustomPaint(
            painter: LoginPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexts.header1('Log In'),
                        GestureDetector(
                            onTap: () {
                              BlocProvider.of<UserAuthenticationBloc>(context)
                                  .add(UserAuthenticationEvent
                                      .changeAuthSelection(
                                          controllers: controllers,
                                          authSelection: AuthSelection.signup));
                            },
                            child: SizedBox(
                              child: CustomTexts.header1('Sign Up'),
                            )),
                      ],
                    ),
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
                  SpaceSized.space10H,
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<UserAuthenticationBloc>(context).add(
                            UserAuthenticationEvent.userLogin(
                                controllers: controllers));
                      },
                      child: CustomTexts.labelText('Log In')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
