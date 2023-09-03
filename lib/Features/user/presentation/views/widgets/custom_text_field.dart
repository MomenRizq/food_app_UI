import 'package:flutter/material.dart';

class CustomTextFieldReadOnly extends StatefulWidget {
  const CustomTextFieldReadOnly(
      {this.hintText,
      this.obscureText = false,
      required this.onchanged,
      required this.emptyText,
      required this.label,
    this.initText});

  final String? hintText;

  final String? initText;


  final String label;

  final String? emptyText;

  final bool obscureText;

  final Function(String)? onchanged;


  @override
  State<CustomTextFieldReadOnly> createState() => _CustomTextFieldReadOnlyState();
}

class _CustomTextFieldReadOnlyState extends State<CustomTextFieldReadOnly> {
  late bool _isVisible = widget.obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: 16, color: Color(0xff808194)),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            initialValue:widget.initText,
            readOnly: true,
            onChanged: widget.onchanged,
            obscureText: widget.obscureText,
            style: TextStyle(color: Colors.black),
            validator: (value) {
              if (value!.isEmpty) {
                return "${widget.emptyText}";
              }
            },
            decoration: InputDecoration(
              // labelText: lableText,
              // labelStyle: TextStyle(color: Colors.black),
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
              filled: true,
              fillColor: Colors.white.withOpacity(0),
              focusColor: Colors.black,
              contentPadding: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color :Colors.grey.shade400)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey.shade400)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.red, width: 2.0)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.red, width: 2.0)),
            ),
          ),
        ],
      ),
    );
  }
}
