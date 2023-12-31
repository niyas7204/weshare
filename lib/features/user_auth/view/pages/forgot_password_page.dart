import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/constants/logo.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/features/user_auth/view_model/user_authentication_bloc.dart';
import 'package:weshare/utils/custom_texts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    AlertdiologeWidgets alertcontroller = Get.put(AlertdiologeWidgets());
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    return BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
      listener: (context, state) {
        if (state.forgotPassword.status == StateStatus.success) {
          Navigator.pop(context);
        } else if (state.forgotPassword.status == StateStatus.success) {
          alertcontroller.warnigAlert(state.forgotPassword.errorMessage!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: SafeArea(
                  child: Stack(
            children: [
              Center(child: AppLogo.baseLogo),
              state.forgotPassword.status == StateStatus.loading
                  ? Container(
                      color: const Color.fromARGB(209, 49, 49, 49),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),
              Center(
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      CustomTexts.header1('Forgot Password'),
                      CustomTexts.text15(
                          'Enter your email to reset your password'),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Form(
                            key: formKey,
                            child: CustomTextField(
                                label: "Email",
                                controller: emailController,
                                formKey: formKey),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<UserAuthenticationBloc>(context)
                                .add(UserAuthenticationEvent.forgotPassword(
                                    email: emailController.text.trim()));
                          },
                          child: CustomTexts.labelText('Sent')),
                    ],
                  ),
                ),
              ),
            ],
          ))),
        );
      },
    );
  }
}
