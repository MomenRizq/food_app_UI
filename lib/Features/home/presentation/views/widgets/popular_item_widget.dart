import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/heart_button_widget.dart';
import 'package:food_app/Core/widgets/review_label_widget.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';
import 'package:food_app/Features/inner/presentation/views/food_details_view.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({Key? key, required this.item}) : super(key: key);

  final ItemModel item ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.pushNamed(context, FoodDetailsView.routeName , arguments: item);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.400, //266
        height: MediaQuery.of(context).size.height * 0.310,
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
                          child: FancyShimmerImage(
                            imageUrl: item.image,
                            boxFit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          )),
                    ),
                    Container(
                      height: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 13.0 ,left: 10 ),
                                  child: CustomTextWidget(
                                    text:item.name,
                                    textSize: 12,
                                    isTitle: true,
                                   maxLines: 2,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 13.0 , right: 10),
                                child: CustomTextWidget(
                                  text: "\$${item.price}",
                                  textSize: 12,
                                  isTitle: true,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5 , left: 10 , right: 15),
                            child: CustomTextWidget(
                              text: item.description,
                              textSize: 12, color: const Color(0xFF8A8E9B),
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
                child:ReviewLabelWidget(item:item),
              )
            ],
          ),
        ),
      ),
    );
  }
}
