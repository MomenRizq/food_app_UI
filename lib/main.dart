import 'package:flutter/material.dart';
import 'package:food_app/views/Auth/login_view.dart';
import 'package:food_app/views/Auth/phone_registration_view.dart';
import 'package:food_app/views/Auth/resset_password_view.dart';
import 'package:food_app/views/Auth/signUp_view.dart';
import 'package:food_app/views/Auth/verfication_code_view.dart';
import 'package:food_app/views/Home/home_view.dart';
import 'package:food_app/views/details/category_details_view.dart';
import 'package:food_app/views/details/food_details_view.dart';
import 'package:food_app/views/splash_view.dart';
import 'package:food_app/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Hub',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:
      CategoryDetailsView(),
      // HomeView(),
      // const SplashView(),
      routes: {
        SignUpView.routeName: (context) =>const SignUpView(),
        LoginView.routeName:(context) => const LoginView(),
        VerficationCodeView.routeName:(context) =>VerficationCodeView(),
        RessetPasswordView.routeName:(context) => RessetPasswordView(),
        PhoneRegistrationView.routeName:(context)=>PhoneRegistrationView(),
        HomeView.routeName:(context)=> HomeView(),
        FoodDetailsView.routeName:(context)=> FoodDetailsView(),

      },
    );
  }
}

