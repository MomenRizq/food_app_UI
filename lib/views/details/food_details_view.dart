import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/details/widget/quantity_controller_widget.dart';
import 'package:food_app/widgets/add_on_widget.dart';
import 'package:food_app/widgets/back_widget.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/custom_text_widget.dart';
import 'package:food_app/widgets/heart_button_widget.dart';
import 'package:food_app/widgets/review_label_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsView extends StatelessWidget {
  static const routeName = "/FoodDetailsView";

  const FoodDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _quantityTextController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //image
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/resturant_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 8,
                      right: 8,
                      child: HeartButtonWidget(
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: BackWidget(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),

              //Title
              CustomTextWidget(
                text: "Ground Beef Tacos",
                textSize: 26,
                isTitle: true,
              ),

              //price and review
              Row(
                children: [
                  const ReviewLabelWidget(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See Reviews",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: KprimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: '\$',
                          style: GoogleFonts.poppins(
                              color: KprimaryColor, fontSize: 18),
                          children: [
                        TextSpan(
                          text: '9.50',
                          style: GoogleFonts.poppins(
                              color: KprimaryColor,
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                      ])),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      children: [
                        QuantityControllerWidget(
                            fun: () {},
                            color: Colors.white,
                            icon: CupertinoIcons.minus,
                            iconColor: KprimaryColor),
                        Flexible(
                          flex: 1,
                          child: CustomTextWidget(
                            text: "02",
                            textSize: 15,
                          ),
                        ),
                        QuantityControllerWidget(
                            fun: () {},
                            color: KprimaryColor,
                            icon: CupertinoIcons.plus,
                            iconColor: Colors.white)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              //Description
              CustomTextWidget(
                  text:
                      "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh chopped. Spices – chili powder, cumin, onion powder.",
                  textSize: 15,
                color: const Color(0xff7E8392),
              ),

              //Add item
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: CustomTextWidget(
                  text:
                  "Choice of Add On",
                  textSize: 18,
                  isTitle: true,

                ),
              ),
              const AddOnWidget(image: 'assets/images/Pepper.png', name: 'Pepper Julienned', price: 2.30,),
              const AddOnWidget(image: 'assets/images/Spinach.png', name: 'Baby Spinach', price: 4.70,),
              const AddOnWidget(image: 'assets/images/Masroom.png', name: 'Masroom', price: 2.50,),
              const SizedBox(
                height: 40,
              ),

              //Add to cart button
              CustomButton.StyleThree(fun: (){}, buttonText: "ADD To CART", color: KprimaryColor, hight: 55, width:170)

            ],
          ),
        ),
      ),
    );
  }

}
