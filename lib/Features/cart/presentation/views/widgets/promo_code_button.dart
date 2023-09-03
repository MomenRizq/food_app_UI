import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';

class PromoCodeButton extends StatelessWidget {
  const PromoCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
        TextFormField(
          onChanged: (v){},
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: "Promo Code",
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 45,
                    width:100,
                    decoration: BoxDecoration(
                        color: KprimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Center(
                      child: CustomTextWidget(
                        text: "Apply",
                        textSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            hintStyle:
            TextStyle(color: Colors.black.withOpacity(0.4)),
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.grey,
            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: BorderSide(color: KprimaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: BorderSide(color: Colors.grey.shade400)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide:
                BorderSide(color: Colors.red, width: 2.0)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide:
                BorderSide(color: Colors.red, width: 2.0)),
          ),
        ),
      ],
    );
  }
}
