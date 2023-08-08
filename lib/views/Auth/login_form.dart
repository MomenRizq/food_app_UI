import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/Auth/resset_password_view.dart';
import 'package:food_app/views/Auth/signUp_view.dart';
import 'package:food_app/views/Home/home_view.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/custom_form_text_field.dart';

import '../../widgets/custom_text_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email;

  String? _password;

  void _submitFormLogin() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
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
                text: "Login",
                textSize: 35,
                isTitle: true,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //E-mail text field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),

            //Password text field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),


            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RessetPasswordView.routeName);
                },
                child: Text(
                  'Forget password?',
                  maxLines: 1,
                  style: TextStyle(
                      color: KprimaryColor,
                      fontSize: 16,),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65.0),
              child: CustomButton.StyleTwo(fun:(){
                _submitFormLogin();
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              }, buttonText: "Login", hight: 60, width: double.infinity , color: KprimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
