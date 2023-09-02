import 'package:flutter/material.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/back_widget.dart';
import 'package:food_app/Core/widgets/custom_tab_controller.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/side_menu.dart';
import 'package:food_app/Features/inner/presentation/views/widgets/food_item_widget.dart';

import '../../../../Core/widgets/custom_appbar_widget.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> WishListdKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: WishListdKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomAbbBarWidget(
                scaffoldKey: WishListdKey,
              ),
              const SizedBox(
                height: 35,
              ),
              const CustomTabController(
                firstText: 'Food Items',
                seconedText: 'Resturants',
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: ScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context,index){
                    return const FoodItemWidget();
                  }),
            ],
          ),
        ),
      ),
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
