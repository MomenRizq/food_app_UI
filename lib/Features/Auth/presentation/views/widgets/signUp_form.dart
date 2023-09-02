import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_form_text_field.dart';
import 'package:food_app/Features/Auth/presentation/views/verfication_code_view.dart';

import '../../../../../Core/widgets/custom_text_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;

  String? _email;

  String? _password;

  void _submitFormOnRegister() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
      Navigator.pushNamed(context, VerficationCodeView.routeName);
    }

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomTextWidget(
                text: "Sign Up",
                textSize: 35,
                isTitle: true,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //Full name text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomTextWidget(
                text: "Full name",
                textSize: 16,
                color: Color(0xff9796A1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomFormTextField(
                onchanged: (value) {
                  _name = value;
                },
                hintText: "Enter your Name",
                emptyText: "Name is empty ,write your Name , please.",
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //E-mail text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomTextWidget(
                text: "E-mail",
                textSize: 16,
                color: Color(0xff9796A1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomFormTextField(
                onchanged: (value) {
                  _email = value ;
                },
                hintText: "Enter your e-mail",
                emptyText: "E-mail is empty ,write your E-mail , please.",
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //Password text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomTextWidget(
                text: "Password",
                textSize: 16,
                color: Color(0xff9796A1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: CustomFormTextField(
                onchanged: (value) {
                  _password = value ;
                },
                hintText: "Enter your password",
                emptyText: "Password is empty ,write your Password , please.",
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65.0),
              child: CustomButton.StyleTwo(fun:(){
                _submitFormOnRegister();
              }, buttonText: "SIGN UP", hight: 60, width: double.infinity , color: KprimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
