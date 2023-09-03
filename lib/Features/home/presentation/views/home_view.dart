import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/consts/item_data.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Features/home/data/models/category_model.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';
import 'package:food_app/Features/home/presentation/views/widgets/categories_item_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/popular_item_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/resturant_item_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/search_widget.dart';
import 'package:food_app/Features/home/presentation/views/widgets/side_menu.dart';
import 'package:food_app/Core/widgets/custom_appbar_widget.dart';

class HomeView extends StatelessWidget {
  static const routeName = "/HomeView";
 const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    double? height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),

            //app Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: CustomAbbBarWidget(scaffoldKey: scaffoldKey,),
            ),
            const SizedBox(
              height: 22,
            ),

            //Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomTextWidget(
                text: "What would you like to order",
                textSize: 30,
                isTitle: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //Serch text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Row(
                  children: [
                    const SearchWidget(),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset:
                              const Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                              Radius.circular(15)),
                          color: Colors.white,
                        ),
                        height: 48,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.125, //50
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.filter,
                            color: KprimaryColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //Categories
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: categoryData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    CategoryModel cat = categoryData[index];
                    return Padding(
                      padding: EdgeInsets.all(6),
                      child: CategoriesItemWidget(category: cat,),
                    );
                  },
                ),
              ),
            ),

            //Feature resturant
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: 'Featured Restaurants',
                    maxLines: 1,
                    textSize: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded, color: KprimaryColor,))
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: itemData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      ItemModel item = itemData[index];
                      return  ResturantItemWidget(item: item);
                    }),
              ),
            ),

            //Popular items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: 'Popular Items',
                    maxLines: 1,
                    textSize: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded, color: KprimaryColor,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                padding: const EdgeInsets.only(top: 5),
                childAspectRatio: MediaQuery
                    .of(context)
                    .size
                    .width * 0.400 / 200,
                crossAxisSpacing: 15,
                // Vertical spacing
                mainAxisSpacing: 15,
                // Horizontal spacing
                children: List.generate(itemData.length, (index) {
                  ItemModel item = itemData[index];
                  return  PopularItemWidget(item: item,);
                }),
              ),
            ),


            //
          ],
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
