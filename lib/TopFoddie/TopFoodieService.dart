import 'package:foodiez_app/TopFoddie/FoodModel.dart';

class TopFoodieService {
  final List<FoodModel> data = [
    FoodModel(
      id: 1,
      name: "Sunil Yadahalli",
      image: "assets/guy.jpg",
      reviews: "123 Reviews",
      followers: "650 Followers",
    ),
    FoodModel(
      id: 2,
      name: "Sachin Yadahalli",
      image: "assets/dal.jpg",
      reviews: "123 Reviews",
      followers: "650 Followers",
    ),
    FoodModel(
      id: 3,
      name: "Veeresh Vastrad",
      image: "assets/guy.jpg",
      reviews: "123 Reviews",
      followers: "650 Followers",
    ),
  ];
  List<FoodModel> findAll() {
    return data;
  }
}
