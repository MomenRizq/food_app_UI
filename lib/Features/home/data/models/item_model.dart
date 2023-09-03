import 'package:food_app/Features/home/data/models/category_model.dart';

class ItemModel {
  final String name, image, description;
  final double price, review, reviewNum;
  final Category category ;

  ItemModel( {
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.review,
    required this.reviewNum,
    required this.category ,
  });
}


