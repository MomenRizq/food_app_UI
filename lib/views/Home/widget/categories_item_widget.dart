import 'package:flutter/material.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/widgets/custom_text_widget.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 110,
      width: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(4, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: const Color(0xFFF4F5F9).withOpacity(00),
                borderRadius:
                const BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: KprimaryColor.withOpacity(0.05),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset:
                    Offset(-1, 20), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/cat/burger.png",
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Container(
                  child: CustomTextWidget(
                    text: "Burger",
                    color: Colors.black,
                    textSize: 11,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
