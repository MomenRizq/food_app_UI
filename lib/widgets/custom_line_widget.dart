import 'package:flutter/material.dart';
import 'package:food_app/widgets/custom_text_widget.dart';

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({Key? key, required this.text, required this.color, required this.fontsize, required this.width}) : super(key: key);

  final String text ;
  final Color color ;
  final double fontsize ;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: color.withOpacity(0.7),
              thickness: 0.5,
            ),
          ),
         SizedBox(
            width: width,
          ),
          CustomTextWidget(
            text: text,
            color:color,
            textSize: fontsize
          ),
          SizedBox(
            width: width,
          ),
          Expanded(
            child: Divider(
              color: color.withOpacity(0.7),
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
