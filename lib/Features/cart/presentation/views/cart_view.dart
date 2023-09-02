import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/side_menu.dart';
import 'package:food_app/Features/inner/presentation/views/widgets/quantity_controller_widget.dart';

import '../../../../Core/widgets/custom_appbar_widget.dart';
import '../../../../Core/widgets/custom_tab_controller.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> CartKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: CartKey,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                CustomAbbBarWidget(scaffoldKey: CartKey),
                const SizedBox(
                  height: 45,
                ),
                Padding(
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
                        SizedBox(
                          width: 13,
                        ),
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
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Row(
                                  children: [
                                    QuantityControllerWidget(
                                        fun: () {},
                                        color: Colors.white,
                                        icon: CupertinoIcons.minus,
                                        sizeIcon: 12,
                                        iconColor: KprimaryColor),
                                    Flexible(
                                      flex: 2,
                                      child: CustomTextWidget(
                                        text: "02",
                                        textSize: 12,
                                      ),
                                    ),
                                    QuantityControllerWidget(
                                        fun: () {},
                                        color: KprimaryColor,
                                        icon: CupertinoIcons.plus,
                                        sizeIcon: 13,
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
                )
              ],
            )),
      ),
      drawer: const Drawer(
        child: SideMenu(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80)),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
