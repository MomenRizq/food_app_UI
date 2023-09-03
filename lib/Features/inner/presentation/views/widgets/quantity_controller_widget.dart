import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';

class QuantityControllerWidget extends StatelessWidget {
  const QuantityControllerWidget({Key? key, required this.fun, required this.icon, required this.color, required this.iconColor, required this.sizeIcon}) : super(key: key);
  final Function fun;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: KprimaryColor)),
          child: InkWell(
            borderRadius: BorderRadius.circular(17),
            onTap: () {
              fun();
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: sizeIcon,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
