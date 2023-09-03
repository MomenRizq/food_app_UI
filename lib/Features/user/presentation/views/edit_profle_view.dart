import 'package:flutter/material.dart';
import 'package:food_app/Features/user/presentation/views/widgets/edit_profile_body.dart';
import 'package:food_app/Features/user/presentation/views/widgets/user_body.dart';


class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);
  static const routeName = "/EditProfileView";
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: EditProfileBody(),
    );
  }
}
