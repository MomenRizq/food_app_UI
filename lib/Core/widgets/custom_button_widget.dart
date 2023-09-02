import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';

class CustomButton {
  static Widget StyleOne({
    required final Function fun,
    required String buttonText,
    Color color = Colors.white,
    String? imageIcon,
    bool isIcon = true,
    required double hight,
    required double width,
  }) {
    return InkWell(
        onTap: () {
          fun();
        },
        child: isIcon
            ? Container(
                height: hight,
                width: width,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 40,
                        offset: Offset(0, 10), // changes position of shadow
                      ),
                    ],
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(imageIcon!),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CustomTextWidget(
                      text: buttonText,
                      textSize: 15,
                      color: Colors.black,
                    )
                  ],
                ))
            : Container(
                height: hight,
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: CustomTextWidget(
                    text: buttonText,
                    textSize: 17,
                    color: Colors.white,
                  ),
                ),
              ));
  }

  static Widget StyleTwo({
    required Function fun,
    required String buttonText,
    required Color color,
    required double hight,
    required double width,
  }) {
    return InkWell(
        onTap: () {
          fun();
        },
        child: Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 40,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: CustomTextWidget(
              text: buttonText,
              textSize: 17,
              color: Colors.white,
            ),
          ),
        ));
  }

  static Widget StyleThree({
    required Function fun,
    required String buttonText,
    required Color color,
    required double hight,
    required double width,
    required IconData icon ,
  }) {
    return InkWell(
        onTap: () {
          fun();
        },
        child: Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 40,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 40,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Icon(
                    icon,
                    color: KprimaryColor,
                  ),
                ),
              ),
              CustomTextWidget(
                text: buttonText,
                textSize: 17,
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}

// class CustomButtonWidgetOne extends StatelessWidget {
//   const CustomButtonWidgetOne({
//     Key? key,
//     required this.fun,
//     required this.buttonText,
//     this.color = Colors.white,
//     this.imageIcon,
//     this.isIcon = true,
//     required this.hight,
//     required this.width,
//   }) : super(key: key);
//   final Function fun;
//   final String buttonText;
//   final Color color;
//   final String? imageIcon;
//   final bool isIcon;
//   final double hight;
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           fun();
//         },
//         child: isIcon
//             ? Container(
//                 height: hight,
//                 width: width,
//                 decoration: BoxDecoration(
//                     // border: Border.all(color: Colors.white),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 0,
//                         blurRadius: 40,
//                         offset: Offset(0, 10), // changes position of shadow
//                       ),
//                     ],
//                     color: color,
//                     borderRadius: BorderRadius.all(Radius.circular(30))),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Container(
//                         height: 30,
//                         width: 30,
//                         child: Image.asset(imageIcon!),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 8,
//                     ),
//                     CustomTextWidget(
//                       text: buttonText,
//                       textSize: 15,
//                       color: Colors.black,
//                     )
//                   ],
//                 ))
//             : Container(
//                 height: hight,
//                 width: width,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white),
//                     color: Colors.white.withOpacity(0.2),
//                     borderRadius: BorderRadius.all(Radius.circular(30))),
//                 child: Center(
//                   child: CustomTextWidget(
//                     text: buttonText,
//                     textSize: 17,
//                     color: Colors.white,
//                   ),
//                 ),
//               ));
//   }
// }
//
// class CustomButtonWidgetTwo extends StatelessWidget {
//   const CustomButtonWidgetTwo({
//     Key? key,
//     required this.fun,
//     required this.buttonText,
//     required this.color,
//     required this.hight,
//     required this.width,
//   }) : super(key: key);
//   final Function fun;
//   final String buttonText;
//   final Color color;
//   final double hight;
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           fun();
//         },
//         child: Container(
//           height: hight,
//           width: width,
//           decoration: BoxDecoration(
//               // border: Border.all(color: Colors.white),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 0,
//                   blurRadius: 40,
//                   offset: Offset(0, 10), // changes position of shadow
//                 ),
//               ],
//               color: color,
//               borderRadius: BorderRadius.all(Radius.circular(30))),
//           child: Center(
//             child: CustomTextWidget(
//               text: buttonText,
//               textSize: 17,
//               color: Colors.white,
//             ),
//           ),
//         ));
//   }
// }
