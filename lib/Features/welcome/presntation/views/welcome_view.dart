import 'package:flutter/material.dart';
import 'package:food_app/Features/welcome/presntation/views/widgets/welcome_view_body.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff21212b),
                Color(0xFF3c3f50).withOpacity(0.0),
              ],
            )),
          ),
           const WelcomeViewBody()
        ],
      ),
    );
  }
}
