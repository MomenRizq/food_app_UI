import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField( { this.hintText,this.obscureText = false , required this.onchanged  ,required this.emptyText}) ;

  final String? hintText ;
  final String? emptyText ;
  final bool ? obscureText ;
  final Function(String) ? onchanged;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
        ),
        TextFormField(
          onChanged: onchanged,
          obscureText: obscureText!,
          style: TextStyle(color: Colors.black),
          validator: (value) {
            if (value!.isEmpty) {
              return "$emptyText";
            }
          },
          decoration: InputDecoration(
            // labelText: lableText,
            // labelStyle: TextStyle(color: Colors.black),
            hintText: hintText,
            hintStyle:TextStyle(color: Colors.black.withOpacity(0.4)) ,
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.black,
            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: KprimaryColor)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.grey.shade400)),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.red, width: 2.0)),
            focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.red, width: 2.0)),
          ),
        ),
      ],
    );
  }
}
