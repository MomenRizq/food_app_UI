import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _isVisible = false;

  _SplashViewState(){

    Timer(const Duration(milliseconds: 2000), (){
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => WelcomeView()), (route) => false);
      });
    });

    Timer(
        Duration(milliseconds: 10),(){
      setState(() {
        _isVisible = true; // Now it is showing fade effect and navigating to Login page
      });
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: KprimaryColor,
        child: Center(
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 1200),
            opacity: _isVisible ? 1.0 : 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 93,
                  width: 93,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.white
                  ),
                  child:Image.asset('assets/images/logo.png') ,
                ),
                SizedBox(height: 10,),
                Image.asset('assets/images/FoodHub.png'),
              ],

            ),
          ),
        ),

      ),
    );
  }
}
