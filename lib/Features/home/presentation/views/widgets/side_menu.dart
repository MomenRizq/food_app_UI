import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/widgets/custom_button_widget.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: CustomTextWidget(
            text: "Momen@gmail.com",
            textSize: 15,
            color: Color(0xFF9EA1B1),
          ),
          accountName: CustomTextWidget(
            text: "Momen Rizq",
            textSize: 19,
            isTitle: true,
          ),
          currentAccountPicture: GestureDetector(
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/avater.png"),
            ),
            onTap: () => print("This is your current account."),
          ),
          otherAccountsPictures: <Widget>[
            GestureDetector(
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/avater.png"),
              ),
              onTap: () {},
            ),
          ],
          decoration: const BoxDecoration(color: Colors.white),
        ),
        ListTile(
            title: const Text("My Order"),
            leading: const Icon(IconlyBold.document),
            onTap: () {
              // navigateTo(context, ExploreScreen());
            }),
        ListTile(
            title: const Text("My Profile"),
            leading: const Icon(IconlyBold.profile),
            onTap: () {
              // navigateTo(context, GetWishListScreen());
            }),
        ListTile(
            title: const Text("Delivery Address"),
            leading: const Icon(IconlyBold.location),
            onTap: () {}),
        ListTile(
            title: const Text("Payment Methods"),
            leading: const Icon(IconlyBold.wallet),
            onTap: () {
              // navigateTo(context, ResetPasswordScreen());
            }),
        ListTile(
            title: const Text("Contact US"),
            leading: const Icon(IconlyBold.message),
            onTap: () {}),
        ListTile(
            title: const Text("Setting"),
            leading: const Icon(IconlyBold.setting),
            onTap: () {}),
        ListTile(
            title: const Text("Helps"),
            leading: const Icon(IconlyBold.infoSquare),
            onTap: () {}),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomButton.StyleThree(
              icon: IconlyBold.logout,
              fun: () {},
              buttonText: "Log Out",
              color: KprimaryColor,
              hight: 45,
              width: 125),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
