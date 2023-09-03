import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_app/Core/consts/colors.dart';
import 'package:food_app/Core/consts/item_data.dart';
import 'package:food_app/Core/widgets/back_widget.dart';
import 'package:food_app/Core/widgets/custom_text_widget.dart';
import 'package:food_app/Core/widgets/food_item_widget.dart';
import 'package:food_app/Features/home/data/models/category_model.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';

class CategoryDetailsView extends StatefulWidget {
   CategoryDetailsView({Key? key}) : super(key: key);
   static const routeName = "/CategoryDetailsView";

  @override
  State<CategoryDetailsView> createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  Category? _selectedCategory;


  @override
  Widget build(BuildContext context) {
    final cat = ModalRoute.of(context)!.settings.arguments as CategoryModel;
    List <ItemModel> itemList = itemData.where((element) => element.category.toString().split('.').last == cat.title).toList() ;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 270,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/background_cat.png",
                    fit: BoxFit.fill,
                    width: 280,
                    height: 300,
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 25,
                  child: BackWidget(),
                ),
                Positioned(
                  top: 90,
                  left: 25,
                  child: CustomTextWidget(
                    text: "FAST",
                    textSize: 42,
                    isTitle: true,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 25,
                  child: CustomTextWidget(
                    text: "FOOD",
                    textSize: 48,
                    color: KprimaryColor,
                    isTitle: true,
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 25,
                  child: CustomTextWidget(
                    text: "80 type of pizza",
                    textSize: 18,
                    color: const Color(0xFF8A8E9B),
                  ),
                ),
              ]),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    CustomTextWidget(text: "Short by: ", textSize: 14),
                    _categoryDropDown(cat),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconlyBold.filter,
                        color: KprimaryColor,
                        size: 20,
                      ),
                    ),
                    
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:ListView.builder(
                  padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                  itemCount: itemList.length,
                    itemBuilder: (context,index){
                      ItemModel item =itemList[index] ;
                  return FoodItemWidget(item: item,);
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryDropDown(CategoryModel cat) {
    return Container(
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<Category>(
            isExpanded: true,
            style: TextStyle(
              color: KprimaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            value: _selectedCategory,
            onChanged: (Category? newValue) {
              setState(() {
                _selectedCategory = newValue!;
              });
              print(_selectedCategory);
            },
            hint:  Text("${cat.title}"),
            items: Category.values.map((Category category) {
              return DropdownMenuItem<Category>(
                value: category,
                child: Text(category.toString().split('.').last),
              );
            }).toList(),
          ),
        )
      ),
    );
  }
}
