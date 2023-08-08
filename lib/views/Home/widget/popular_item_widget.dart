import 'package:flutter/material.dart';
import 'package:food_app/widgets/custom_text_widget.dart';
import 'package:food_app/widgets/heart_button_widget.dart';
import 'package:food_app/widgets/review_label_widget.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.400, //266
        height: 220, //MediaQuery.of(context).size.height * 0.300
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(4, 4),
              blurRadius: 20,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 140,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(22.0),
                              bottomRight: Radius.circular(22.0)),
                          child: Image.asset(
                            "assets/images/resturant_1.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 13.0 ,left: 10 , right: 15),
                                child: CustomTextWidget(
                                  text: "Salmon Salad",
                                  textSize: 14,
                                  isTitle: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 13.0 , right: 13),
                                child: CustomTextWidget(
                                  text: "\$${5.5}",
                                  textSize: 13,
                                  isTitle: true,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5 , left: 10 , right: 15),
                            child: CustomTextWidget(
                              text: "Baked salmon fish",
                              textSize: 12, color: const Color(0xFF8A8E9B)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 8,
                right: 8,
                child: HeartButtonWidget(color: Colors.red,),
              ),

              const Positioned(
                top: 120,
                left: 10,
                child:ReviewLabelWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
