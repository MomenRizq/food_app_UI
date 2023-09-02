import 'package:flutter/material.dart';
import 'package:food_app/Features/home/presentation/views/home_view.dart';
import 'package:food_app/Features/welcome/presntation/views/splash_view.dart';
import 'package:food_app/Features/welcome/presntation/views/welcome_view.dart';

import 'Features/Auth/presentation/views/login_view.dart';
import 'Features/Auth/presentation/views/phone_registration_view.dart';
import 'Features/Auth/presentation/views/resset_password_view.dart';
import 'Features/Auth/presentation/views/signUp_view.dart';
import 'Features/Auth/presentation/views/verfication_code_view.dart';
import 'Features/inner/presentation/views/category_details_view.dart';
import 'Features/inner/presentation/views/food_details_view.dart';

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
      // CategoryDetailsView(),
      // HomeView(),
      const SplashView(),
      routes: {
        SignUpView.routeName: (context) =>const SignUpView(),
        LoginView.routeName:(context) => const LoginView(),
        VerficationCodeView.routeName:(context) =>VerficationCodeView(),
        RessetPasswordView.routeName:(context) => RessetPasswordView(),
        PhoneRegistrationView.routeName:(context)=>PhoneRegistrationView(),
        HomeView.routeName:(context)=> HomeView(),
        FoodDetailsView.routeName:(context)=> FoodDetailsView(),
        CategoryDetailsView.routeName:(context)=>CategoryDetailsView()

      },
    );
  }
}

