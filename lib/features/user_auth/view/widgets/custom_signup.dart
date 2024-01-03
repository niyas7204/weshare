import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/components/custompaints/signup_box.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/constants/sizes.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/features/user_auth/view_model/user_authentication_bloc.dart';
import 'package:weshare/utils/custom_texts.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({
    super.key,
    required this.formKey,
    required this.labels,
    required this.controllers,
    required this.state,
  });
  final UserAuthenticationState state;
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
            painter: SignUpPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              BlocProvider.of<UserAuthenticationBloc>(context)
                                  .add(UserAuthenticationEvent
                                      .changeAuthSelection(
                                controllers: controllers,
                                authSelection: AuthSelection.login,
                              ));
                            },
                            child: CustomTexts.header1('Log In')),
                        CustomTexts.header1('Sign Up')
                      ],
                    ),
                  ),
                  SpaceSized.space20H,
                  SpaceSized.space5H,
                  Column(
                    children: [
                      Stack(
                        children: [
                          state.profileImageFile.data != null
                              ? CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(217, 247, 255, 247),
                                  radius: 70,
                                  backgroundImage: FileImage(
                                      File(state.profileImageFile.data!.path)))
                              : const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(217, 247, 255, 247),
                                  radius: 70,
                                  child: Icon(
                                    Icons.person,
                                    size: 70,
                                  ),
                                ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                                onPressed: () {
                                  BlocProvider.of<UserAuthenticationBloc>(
                                          context)
                                      .add(const UserAuthenticationEvent
                                          .pickImageFromGallery());
                                },
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 40,
                                )),
                          )
                        ],
                      ),
                      Form(
                          key: formKey,
                          child: ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: labels.length,
                              itemBuilder: (context, index) => CustomTextField(
                                  label: labels[index],
                                  controller: controllers[index],
                                  formKey: formKey))),
                      SpaceSized.space10H,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<UserAuthenticationBloc>(context)
                                .add(UserAuthenticationEvent.userSignUP(
                                    controllers: controllers,
                                    profile: state.profileImageFile.data));
                          },
                          child: CustomTexts.labelText('Sign Up')),
                    ],
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
