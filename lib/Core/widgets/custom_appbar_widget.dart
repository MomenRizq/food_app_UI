import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';


class CustomAbbBarWidget extends StatelessWidget {
  const CustomAbbBarWidget({Key? key, required this.scaffoldKey})
      : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            height: 38,
            width: 38,
            child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.notes_rounded)),
          ),
        ),
        Column(
          children: [
            CustomTextWidget(
              text: "Deliver to",
              textSize: 14,
              color: Color(0xff8C9099),
            ),
            CustomTextWidget(
              text: "Cairo ,Kafr",
              textSize: 16,
              color: KprimaryColor,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          height: 48,
          width: 48,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/avater.png",
                fit: BoxFit.fill,
              )),
        ),
      ],
    );
  }
}
