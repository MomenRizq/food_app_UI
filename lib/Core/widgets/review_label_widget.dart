import 'package:flutter/material.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';

class ReviewLabelWidget extends StatelessWidget {
  const ReviewLabelWidget({Key? key, required this.item }) : super(key: key);
  final ItemModel item ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 75,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius:10,
          ),
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(text: "${item!.review}", textSize: 12 , isTitle: true,),
            const Icon(Icons.star , color: Colors.yellow,size: 16,),
            CustomTextWidget(text: "(${item!.reviewNum.toInt()})", textSize: 9 , color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
