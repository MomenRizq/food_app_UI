import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/Features/user/presentation/views/widgets/header_user_widget.dart';
import 'package:food_app/Features/user/presentation/views/widgets/user_details.dart';


class UserBody extends StatelessWidget {
  const UserBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderUserWidget(),
          UserDetails(),

        ],
      ),
    );
  }
}
