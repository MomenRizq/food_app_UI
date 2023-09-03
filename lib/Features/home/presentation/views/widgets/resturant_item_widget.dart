import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/heart_button_widget.dart';
import 'package:food_app/Core/widgets/review_label_widget.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';
import 'package:food_app/Features/inner/presentation/views/food_details_view.dart';

class ResturantItemWidget extends StatelessWidget {
  const ResturantItemWidget({Key? key, required this.item}) : super(key: key);
  final ItemModel item ;

  @override
  Widget build(BuildContext context) {
    List<String> section = [
      ('Burger'),
      ('Chiken'),
      ('Fast Food'),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 20),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.pushNamed(context, FoodDetailsView.routeName , arguments: item);
        },
        child: Container(
          width: 266,//266
          height: 250, //MediaQuery.of(context).size.height * 0.300
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2,
                      child:FancyShimmerImage(
                        imageUrl: item.image,
                        boxFit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      width: 266,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CustomTextWidget(
                              text: item.name,
                              textSize: 15,
                              isTitle: true,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/delivary_icon.png",
                                  height: 18,
                                  width: 18,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                CustomTextWidget(
                                  text: "Free delivary",
                                  textSize: 12,
                                  color: const Color(0xff7E8392),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/icons/time_icon.png",
                                  height: 18,
                                  width: 16,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                CustomTextWidget(
                                  text: "10-15 mins",
                                  textSize: 12,
                                  color: const Color(0xff7E8392),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Row(
                              children: List.generate(section.length, (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 22,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF6F6F),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(4))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CustomTextWidget(
                                        text: section[index],
                                        textSize: 12,
                                        color: const Color(0xFF8A8E9B),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: HeartButtonWidget(color: Colors.red,),
                ),
                 Positioned(
                  top: 8,
                  left: 8,
                  child:ReviewLabelWidget(item: item,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
