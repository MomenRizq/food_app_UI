import 'package:flutter/material.dart';
import 'package:food_app/Features/user/presentation/views/widgets/user_body.dart';


class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);
  static const routeName = "/UserView";
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: UserBody(),
    );
  }
}
