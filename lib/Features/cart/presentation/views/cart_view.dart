import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/cart/presentation/views/widgets/cart_body.dart';
import 'package:food_app/Features/cart/presentation/views/widgets/cart_item.dart';
import 'package:food_app/Features/home/presentation/views/widgets/side_menu.dart';
import 'package:food_app/Features/inner/presentation/views/widgets/quantity_controller_widget.dart';

import '../../../../Core/widgets/custom_appbar_widget.dart';
import '../../../../Core/widgets/custom_tab_controller.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> CartKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: CartKey,
      body: CartBody(CartKey: CartKey),
      drawer: const Drawer(
        child: SideMenu(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80)),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}



