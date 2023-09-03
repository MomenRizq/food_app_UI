import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/back_widget.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/user/presentation/views/widgets/custom_text_field.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            Row(children: [
              BackWidget(),
              SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
              Center(child:CustomTextWidget(text: "Edit your profile", textSize: 18,),)
            ],),
            SizedBox(height: 30),
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
                    ),
                    CustomFormTextField(
                      initText: "momen@" ,
                      label: 'Email',
                      onchanged: (email) {
                      },
                      emptyText: 'Please ,Enter valid Email',
                    ),
                    CustomFormTextField(
                      initText:"01554500884",
                      label: 'Phone number',
                      onchanged: (gender) {
                      },
                      emptyText: '',
                    ),
                    CustomFormTextField(
                      initText:"Egypt",
                      label: 'City',
                      onchanged: (gender) {
                      },
                      emptyText: '',
                    ),
                    CustomFormTextField(
                      label: 'Street (Include house number)',
                      onchanged: (gender) {
                      },
                      emptyText: '',
                    ),
                  ],
                )),
            SizedBox(height: 15),

            CustomButton.StyleTwo(fun: (){}, buttonText: "SAVE", color: KprimaryColor, hight: 55, width: 250)
          ],
        ),
      ),
    );
  }
}
