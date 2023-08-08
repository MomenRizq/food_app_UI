import 'package:flutter/material.dart';
import 'package:food_app/widgets/custom_text_widget.dart';

class AddOnWidget extends StatelessWidget {
  const AddOnWidget({Key? key, required this.image, required this.name, required this.price}) : super(key: key);
  final String image , name;
  final double price;

  @override
  Widget build(BuildContext context) {
    String? group;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(image , height: 40 , width: 40 , fit: BoxFit.fill,)),
          const SizedBox(width: 10,),
          Container(
              width: MediaQuery.of(context).size.width * 0.400,
              child: CustomTextWidget(text: name, textSize: 14)),

          const SizedBox(width: 30,),
          CustomTextWidget(text: "+\$$price", textSize: 14),
          const Spacer(),
          Radio(value: 1, groupValue: String, onChanged: (value) {
          })
        ],
      ),
    );
  }
}
