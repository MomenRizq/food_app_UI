import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/consts/colors.dart';
import 'package:food_app/views/Home/widget/categories_item_widget.dart';
import 'package:food_app/views/Home/widget/custom_appbar_widget.dart';
import 'package:food_app/views/Home/widget/popular_item_widget.dart';
import 'package:food_app/views/Home/widget/resturant_item_widget.dart';
import 'package:food_app/views/Home/widget/side_bar.dart';
import 'package:food_app/widgets/custom_text_widget.dart';
import 'package:food_app/views/Home/widget/search_widget.dart';

class HomeView extends StatelessWidget {
  static const routeName = "/HomeView";
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),

              //app Bar
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: CustomAbbBarWidget(),
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
                  width: MediaQuery.of(context).size.width,
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
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          height: 48,
                          width: MediaQuery.of(context).size.width * 0.125,//50
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
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: GestureDetector(
                          onTap: () {
                            // currentIndex = index;
                            // setState(() {});
                          },
                          child: const CategoriesItemWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ),

              //Feature resturant
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: 'Featured Restaurants',
                      maxLines: 1,
                      textSize: 20,
                    ),
                    IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.arrow_forward_ios_rounded , color: KprimaryColor,))
                  ],
                ),
              ),
              SizedBox(
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context , index){
                    return ResturantItemWidget();
                  }),
                ),
              ),

              //Popular items
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: 'Popular Items',
                      maxLines: 1,
                      textSize: 20,
                    ),
                    IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.arrow_forward_ios_rounded , color: KprimaryColor,))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(top: 5),
                  childAspectRatio: MediaQuery.of(context).size.width * 0.400 / 200,
                  crossAxisSpacing:15, // Vertical spacing
                  mainAxisSpacing: 15, // Horizontal spacing
                  children: List.generate(6, (index) {
                    return PopularItemWidget();
                  }),
                ),
              ),


              //
            ],
          ),
        ),
      );

  }
}
