import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_form_text_field.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/header_auth_widget.dart';
import 'package:food_app/Features/home/presentation/views/bottom_bar_view.dart';
import 'package:food_app/Features/home/presentation/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneRegistrationView extends StatelessWidget {
  static const routeName = "/PhoneRegistrationView";

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

              //Registration
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextWidget(
                  text: "Registration",
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
                  text: "Enter your phone number to verify your account",
                  textSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: height! / 38,
              ),

              //text Field number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    // labelText: lableText,
                    // labelStyle: TextStyle(color: Colors.black),
                    hintText: "Phone number",
                    hintStyle:TextStyle(color: Colors.black.withOpacity(0.4)) ,
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.black,
                    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: KprimaryColor)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.grey.shade400)),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.red, width: 2.0)),
                    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.red, width: 2.0)),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                )
              ),
              SizedBox(
                height: height! / 30,
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: CustomButton.StyleTwo(fun:(){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx) => const BottomBarView(),
                  ));
                }, buttonText: "Send new password", hight: 60, width: double.infinity , color: KprimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
