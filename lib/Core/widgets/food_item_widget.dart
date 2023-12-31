import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/item_data.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/heart_button_widget.dart';
import 'package:food_app/Core/widgets/review_label_widget.dart';
import 'package:food_app/Features/home/data/models/category_model.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({Key? key, required this.item, }) : super(key: key);
  final ItemModel item ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width , //266
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
                        width:MediaQuery.of(context).size.width  ,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(22.0),
                                bottomRight: Radius.circular(22.0)),
                            child: Image.network(
                              item.image,
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
                                    text: item.name,
                                    textSize: 18,
                                    isTitle: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 13.0 , right: 13),
                                  child: CustomTextWidget(
                                    text: "\$${item.price}",
                                    textSize: 16,
                                    isTitle: true,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5 , left: 10 , right: 15),
                              child: CustomTextWidget(
                                  text: "${item.description}",
                                  textSize: 16, color: const Color(0xFF8A8E9B),
                                maxLines: 1,
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

                Positioned(
                  top: 120,
                  left: 10,
                  child:ReviewLabelWidget(item: item),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
