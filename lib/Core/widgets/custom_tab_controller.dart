import 'package:flutter/material.dart';

import '../consts/colors.dart';

class CustomTabController extends StatelessWidget {
  const CustomTabController({Key? key, required this.firstText, required this.seconedText}) : super(key: key);

  final String firstText ;
  final String seconedText;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1 , color: Color(0xffF2EAEA))
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              TabBar(
                indicator:  BoxDecoration(
                  color: KprimaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: KprimaryColor,
                tabs:
                [
                  Tab(
                    text: firstText,

                  ),
                  Tab(
                    text: seconedText,

                  ),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
