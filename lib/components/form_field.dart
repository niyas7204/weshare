import 'package:flutter/material.dart';
import 'package:weshare/core/helpers/email_validator.dart';
import 'package:weshare/utils/custom_texts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  final GlobalKey<FormState> formKey;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.controller,
      required this.formKey});

  @override
  Widget build(BuildContext context) {
    bool password = label == 'Password' || label == 'Confirm Password';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTexts.labelText(label),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 3)),
          height: 60,
          child: TextFormField(
            onChanged: (value) {
              formKey.currentState!.validate();
            },
            autofillHints:
                label == 'Email' ? const [AutofillHints.email] : null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return null;
              } else {
                if (label == 'Email') {
                  bool emailValid = validateEmail(value);

                  if (!emailValid) {
                    return 'Enter a valid email';
                  }
                  return null;
                }
                return null;
              }
            },
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            keyboardType: password ? TextInputType.number : TextInputType.text,
            obscureText: password,
            controller: controller,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12), border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
