import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/header_auth_widget.dart';
import 'package:food_app/Features/Auth/presentation/views/signUp_view.dart';
import 'package:food_app/Features/Auth/presentation/views/widgets/login_form.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_line_widget.dart';

class LoginView extends StatelessWidget {
  static const routeName = "/LoginView";
  const LoginView({Key? key}) : super(key: key);

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
            const LoginForm(),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style:  TextStyle(
                                color: KprimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()..onTap = () {Navigator.pushReplacementNamed(context,SignUpView.routeName);}),
                      ])),
            ),
            const SizedBox(height: 40),
            const CustomLineWidget(text:"sign in with" , color: Colors.black, width: 18,fontsize: 14,),
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
