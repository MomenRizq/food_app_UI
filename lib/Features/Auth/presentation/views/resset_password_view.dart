import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_form_text_field.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/header_auth_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RessetPasswordView extends StatelessWidget {
  static const routeName = "/RessetPasswordView";

  double? height;

  String? _email;


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    // final verifyprovider = Provider.of<PostDataProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderAuthWidget(),
              const SizedBox(
                height: 30,
              ),

              //Resset password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextWidget(
                  text: "Resset password",
                  textSize: 35,
                  isTitle: true,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextWidget(
                  text: "Please enter your email address to request a password resetm",
                  textSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: height! / 38,
              ),

              //text Field Email
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
              SizedBox(
                height: height! / 28,
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: CustomButton.StyleTwo(fun:(){
                }, buttonText: "Send new password", hight: 60, width: double.infinity , color: KprimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
