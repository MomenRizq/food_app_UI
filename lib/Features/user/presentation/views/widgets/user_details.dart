import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/Features/user/presentation/views/edit_profle_view.dart';
import 'package:food_app/Features/user/presentation/views/widgets/custom_text_field.dart';


class UserDetails extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  bool _isSecure = false;

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            children: [
              Text(
               ("Momen Rizq"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              TextButton(child: Text(
                ("Edit Profile"),
                style: TextStyle(fontSize: 16,color: Colors.grey.shade400 ),
              ),onPressed: (){
                Navigator.pushNamed(context, EditProfileView.routeName);
              },
              ),
            ],
          ),
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                CustomFormTextField(
                  initText:"Momen",
                  label: 'Full name',
                  onchanged: (name) {
                  },
                  emptyText: 'Please ,Enter valid Username',
                  readOnly: true,

                ),
                CustomFormTextField(
                  initText: "momen@" ,
                  label: 'Email',
                  onchanged: (email) {
                  },
                  emptyText: 'Please ,Enter valid Email',
                  readOnly: true,
                ),
                CustomFormTextField(
                  initText:"01554500884",
                  label: 'Phone number',
                  readOnly: true,
                  onchanged: (gender) {

                  },
                  emptyText: '',
                ),
              ],
            )),
      ],
    );
  }
}
