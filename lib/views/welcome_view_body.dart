import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/Auth/login_view.dart';
import 'package:food_app/views/Auth/signUp_view.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/custom_line_widget.dart';
import 'package:food_app/widgets/custom_text_widget.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 28.0, left: 28),
          child: CustomTextWidget(
            text: "Welcome To",
            textSize: 48,
            isTitle: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: CustomTextWidget(
            text: "FoodHub",
            color: KprimaryColor,
            textSize: 48,
            isTitle: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: CustomTextWidget(
            text: "Your favourite foods delivered fast at your door.",
            textSize: 18,
            maxLines: 2,
            isTitle: true,
          ),
        ),
        const Spacer(),
        const CustomLineWidget(text:"sign in with" , color: Colors.white, width: 15,fontsize: 16,),
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
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomButton.StyleOne(
              fun: () {
                Navigator.pushReplacementNamed(context, SignUpView.routeName);
              },
              buttonText: "Start with email or phone",
              isIcon: false,
              hight: 55,
              width: double.infinity),
        ),
        const SizedBox(height: 22),
        Center(
          child: RichText(
              text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  children: [
                TextSpan(
                    text: 'Sign in',
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.pushReplacementNamed(context, LoginView.routeName);
                    }),
              ])),
        ),
        const SizedBox(height: 22),
      ],
    );
  }
}
