import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_appbar_widget.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/cart/presentation/views/widgets/cart_item.dart';
import 'package:food_app/Features/cart/presentation/views/widgets/promo_code_button.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
    required this.CartKey,
  });

  final GlobalKey<ScaffoldState> CartKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomAbbBarWidget(scaffoldKey: CartKey),
              ListView.builder(
                  itemCount: 2,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: CartItem(),
                    );
                  }),
              const SizedBox(
                height: 32,
              ),
              PromoCodeButton()
            ],
          )),
    );
  }
}
