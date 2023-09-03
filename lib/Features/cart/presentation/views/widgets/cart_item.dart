import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/inner/presentation/views/widgets/quantity_controller_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(22)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(2, 2),
              blurRadius: 30,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(22.0),
                ),
                child: Image.asset(
                  "assets/images/food/pizza.png",
                  fit: BoxFit.cover,
                  width: 85,
                  height: 85,
                )),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(text: "Red n hot pizza", textSize: 18 , isTitle: true,),
                  CustomTextWidget(text: "Spicy chicken, beef", textSize: 14 , color: Color(0xff8C8A9D),),
                  CustomTextWidget(text: "\$${15.5}", textSize: 16 , color: KprimaryColor,),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.26,
                    child: Row(
                      children: [
                        QuantityControllerWidget(
                            fun: () {},
                            color: Colors.white,
                            icon: CupertinoIcons.minus,
                            sizeIcon: 15,
                            iconColor: KprimaryColor),
                        CustomTextWidget(
                          text: "02",
                          textSize: 14,
                        ),
                        QuantityControllerWidget(
                            fun: () {},
                            color: KprimaryColor,
                            icon: CupertinoIcons.plus,
                            sizeIcon: 15,
                            iconColor: Colors.white)
                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}