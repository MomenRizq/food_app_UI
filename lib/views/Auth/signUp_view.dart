import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/Auth/login_view.dart';
import 'package:food_app/views/Auth/signUp_form.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/custom_line_widget.dart';
import 'package:food_app/widgets/custom_text_widget.dart';
import 'package:food_app/widgets/header_auth_widget.dart';

class SignUpView extends StatelessWidget {
  static const routeName = "/SignUpView";

  const SignUpView({Key? key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderAuthWidget(),
            const SizedBox(
              height: 30,
            ),
            const SignUpForm(),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'Login',
                            style:  TextStyle(
                                color: KprimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()..onTap = () { Navigator.pushNamed(context, LoginView.routeName);}),
                      ])),
            ),
            const SizedBox(height: 40),
           const CustomLineWidget(text:"sign up with" , color: Colors.black, width: 18,fontsize: 14,),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton.StyleOne(
                      fun: () {},
                      buttonText: "FACEBOOK",
                      imageIcon: 'assets/icons/face_icon.png',
                      hight: 55,
                      width: 150),
                  CustomButton.StyleOne(
                      fun: () {},
                      buttonText: "GOOGLE",
                      imageIcon: 'assets/icons/google_icon.png',
                      hight: 55,
                      width: 150),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
