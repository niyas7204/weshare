import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/constants/logo.dart';
import 'package:weshare/constants/sizes.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';
import 'package:weshare/view/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AlertdiologeWidgets alertcontroller = Get.put(AlertdiologeWidgets());
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    List<TextEditingController> controllers = [
      emailcontroller,
      passwordcontroller,
    ];
    final formKey = GlobalKey<FormState>();
    var labels = ['Email', 'Password'];
    return BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
      listener: (context, state) {
        if (state.loginState!.status == StateStatus.success) {
          //when login success navigate to home page
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(userId: state.loginState!.data!),
              ));
        } else if (state.loginState!.status == StateStatus.error) {
          //if login is failed show warnig message

          alertcontroller.warnigAlert(state.loginState!.errorMessage!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              //show when loading indicater when login function works
              state.loginState!.status == StateStatus.loading
                  ? Container(
                      color: const Color.fromARGB(209, 49, 49, 49),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),
              Center(
                child: SingleChildScrollView(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  color: Colors.blueGrey.shade100.withOpacity(.3),
                  child: Column(
                    children: [
                      AppLogo.baseLogo,
                      CustomTexts.header1('Login'),
                      Form(
                          key: formKey,
                          child: ListView.builder(
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
                                .add(UserAuthenticationEvent.userLogin(
                                    controllers: controllers));
                          },
                          child: CustomTexts.labelText('Login')),
                    ],
                  ),
                )),
              )
            ],
          )),
        );
      },
    );
  }
}
