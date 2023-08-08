import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/widgets/back_widget.dart';
import 'package:food_app/widgets/custom_text_widget.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Container(
                    width: double.infinity,
                    height: 320,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/background_cat.png",
                      fit: BoxFit.fill,
                      width: 280,
                      height: 300,
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 25,
                    child: BackWidget(),
                  ),
                  Positioned(
                    top: 90,
                    left: 25,
                    child: CustomTextWidget(
                      text: "FAST",
                      textSize: 42,
                      isTitle: true,
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 25,
                    child: CustomTextWidget(
                      text: "FOOD",
                      textSize: 48,
                      color: KprimaryColor,
                      isTitle: true,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
