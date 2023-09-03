import 'package:food_app/Core/consts/assets.dart';
import 'package:food_app/Features/home/data/models/category_model.dart';
import 'package:food_app/Features/home/data/models/item_model.dart';

List<ItemModel> itemData = [
  ItemModel(
    name: "Deluxe Cheeseburger",
    image:
        "https://img.freepik.com/free-photo/still-life-delicious-american-hamburger_23-2149637309.jpg?w=996&t=st=1693689073~exp=1693689673~hmac=d0b1b4701a66f7de52e21654fed5707c49f5b8c0a4d4fa1882dca904ce597d68",
    description:
        "A juicy beef patty with melted cheese, lettuce, and special sauce.",
    price: 9.99,
    review: 4.5,
    reviewNum: 128,
    category: Category.Burger,
  ),
  ItemModel(
      name: "Margherita Pizza",
      image:
          "https://img.freepik.com/free-photo/pepperoni-pizza-with-olives-wooden-board_140725-5374.jpg?w=740&t=st=1693689550~exp=1693690150~hmac=a7ba7d62cd161a03708b7c1645e5986473b2bd785bc29d0efad87f2a2d1a2849",
      description:
          "A classic Italian pizza with fresh tomatoes, mozzarella, and basil.",
      price: 12.99,
      review: 4.7,
      reviewNum: 87,
      category: Category.Pizza),
  ItemModel(
      name: "Chicken Alfredo Pasta",
      image:
          "https://img.freepik.com/free-photo/freshly-cooked-gourmet-meal-ready-eat-generated-by-ai_24640-81613.jpg?t=st=1693689730~exp=1693693330~hmac=815566a4cf6edb65e19a056e77192d4e0b44e2fc8e05727d8b0a999a630bead1&w=1060",
      description:
          "Creamy Alfredo sauce with grilled chicken and fettuccine noodles.",
      price: 15.99,
      review: 4.8,
      reviewNum: 92,
      category: Category.Pasta),
  ItemModel(
      name: "Sushi Assortment",
      image:
          "https://img.freepik.com/free-photo/top-view-mix-rolls-stand-with-sauce-soy-sauce-wasabi-ginger-avocado-sesame-seeds_141793-14319.jpg?w=360&t=st=1693689777~exp=1693690377~hmac=cfaf2992ba39a2fdc6817fb618ec63309b2ee8dabc0ee6f2ec3b755c34b9a1d9",
      description:
          "Freshly prepared sushi rolls with a variety of fish and ingredients.",
      price: 18.99,
      review: 4.6,
      reviewNum: 63,
      category: Category.Sushi),
  ItemModel(
      name: "Vegan Quinoa Salad",
      image:
          "https://img.freepik.com/free-photo/salads-with-quinoa-arugula-radish-tomatoes-cucumber-bowl-wooden-table-healthy-food-diet-detox-vegetarian-concept_2829-6842.jpg?w=996&t=st=1693689817~exp=1693690417~hmac=4a8bb0b6ee931de576ad00bd7f5d4f667c5af99aab9e7c0511d5011c86956e9a",
      description:
          "A healthy and flavorful salad with quinoa, vegetables, and vinaigrette.",
      price: 11.99,
      review: 4.3,
      reviewNum: 42,
      category: Category.Appetizer),
  ItemModel(
      name: "Spicy Tofu Stir-Fry",
      image:
          "https://img.freepik.com/free-photo/vegan-curry-with-tofu-vegetables_661915-287.jpg?w=996&t=st=1693689850~exp=1693690450~hmac=ba007f915c1320b941ef1ee90f047b7fe7011ddc8c89dbf71124775cae6e220a",
      description:
          "A spicy and savory tofu stir-fry with mixed vegetables and rice.",
      price: 14.99,
      review: 4.4,
      reviewNum: 56,
      category: Category.Appetizer),
  ItemModel(
      name: "Chocolate Brownie Sundae",
      image:
          "https://img.freepik.com/free-photo/slice-chocolate-brownie-with-walnut-vanilla-ice-cream_114579-716.jpg?w=360&t=st=1693689880~exp=1693690480~hmac=ab645533ed140a57de8d6a788094322b3f9ccc52c3745378523b58802ccc8996",
      description:
          "Decadent chocolate brownie topped with vanilla ice cream and hot fudge.",
      price: 8.99,
      review: 4.9,
      reviewNum: 77,
      category: Category.Sweet),
  ItemModel(
      name: "Fresh Fruit Smoothie",
      image:
          "https://img.freepik.com/free-photo/summertime-smoothie-with-raspberry-blackberry-strawberry-ice_140725-3953.jpg?w=740&t=st=1693689921~exp=1693690521~hmac=4e992f504cd33925873addd2c59130291159ab6b0a553c07052a48aae1bc19df",
      description: "A refreshing blend of fresh fruits and yogurt.",
      price: 6.99,
      review: 4.7,
      reviewNum: 34,
      category: Category.Jucie),
  ItemModel(
      name: "Grilled Salmon Fillet",
      image:
          "https://img.freepik.com/free-photo/front-view-fried-meat-slice-with-lemon-greens-brown-desk-meal-food-meat_140725-26155.jpg?w=740&t=st=1693689960~exp=1693690560~hmac=34e5ba65ef8eaccd9e1306e2047e116018098c4cbc0485e7474c87df44cd7589",
      description:
          "Grilled salmon fillet with lemon-butter sauce and asparagus.",
      price: 22.99,
      review: 4.8,
      reviewNum: 45,
      category: Category.Fish),
  ItemModel(
      name: "Classic Caesar Salad",
      image:
          "https://img.freepik.com/free-photo/flat-lay-salad-with-chicken-sesame-seeds_23-2148700369.jpg?w=996&t=st=1693690018~exp=1693690618~hmac=e7b31a08a5f3c6102ddc7ee4e30ee9e1998ae3adde60117376af9fb3b14d76eb",
      description:
          "A traditional Caesar salad with romaine lettuce, croutons, and Caesar dressing.",
      price: 10.99,
      review: 4.5,
      reviewNum: 68,
      category: Category.Appetizer),
];

List<CategoryModel> categoryData = [
  CategoryModel(
      title: "Burger",
      image: "BurgerImage",
      description: "Delicious burgers for every taste.",
      icon: burgerIcon),
  CategoryModel(
      title: "Pizza",
      image: "PizzaImage",
      description: "Authentic Italian pizzas with a variety of toppings.",
      icon: pizzaIcon),
  CategoryModel(
      title: "Pasta",
      image: "PastaImage",
      description: "Classic and flavorful pasta dishes made to perfection.",
      icon: pastaIcon),
  CategoryModel(
      title: "Fried",
      image: "FriedChickenImage",
      description:
          "Crispy and succulent fried chicken that's finger-licking good.",
      icon: friedIcon),
  CategoryModel(
      title: "Sweet",
      image: "SweetImage",
      description:
          "Indulge in a delightful selection of sweet treats and desserts.",
      icon: sweetIcon),
  CategoryModel(
      title: "Juice",
      image: "JuiceImage",
      description: "Fresh and refreshing juices bursting with natural flavors.",
      icon: juiceIcon),
  CategoryModel(
      title: "Sushi",
      image: "SushiImage",
      description: "Exquisite sushi rolls and sashimi for sushi lovers.",
      icon: sushiIcon),
  CategoryModel(
      title: "Appetizer",
      image: "AppetizerImage",
      description: "Irresistible appetizers to kickstart your meal in style.",
      icon: appetizerIcon),
  CategoryModel(
      title: "Fish",
      image: "FishImage",
      description: "Freshly caught fish dishes prepared with care and flavor.",
      icon:fishIcon),
];
