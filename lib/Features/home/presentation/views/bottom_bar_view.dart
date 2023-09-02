import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Features/home/presentation/views/home_view.dart';
import 'package:food_app/Features/cart/presentation/views/cart_view.dart';
import 'package:food_app/Features/wishlist/presentation/views/wishlist_view.dart';


class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeView(), 'title': 'Home Screen'},
    {'page': const CartView(), 'title': 'Cart Screen'},
    {'page': const WishlistView(), 'title': 'Wishlist Screen'},
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: Visibility(
        visible: true,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          unselectedItemColor:  Colors.black26,
          selectedItemColor:  KprimaryColor,
          onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 1 ? IconlyBold.bag2 : IconlyLight.bag2),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 2 ? IconlyBold.heart : IconlyLight.heart),
              label: "Wishlist",
            ),
          ],
        ),
      ),
    );
  }
}
