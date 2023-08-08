import 'package:flutter/material.dart';

class HeartButtonWidget extends StatelessWidget {
  const HeartButtonWidget({Key? key,this.radius = 17, required this.color}) : super(key: key);
  final double radius ;
  final Color color ;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(32.0),
        ),
        onTap: () {},
        child: CircleAvatar(
          radius: radius,
          backgroundColor: color,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              size:  18 ,
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
