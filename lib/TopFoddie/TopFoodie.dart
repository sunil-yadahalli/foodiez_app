import 'package:flutter/material.dart';
import 'package:foodiez_app/TopFoddie/FoodModel.dart';
import 'package:foodiez_app/TopFoddie/TopFoodieService.dart';

class TopFoodie extends StatefulWidget {
  @override
  _TopFoodieState createState() => _TopFoodieState();
}

class _TopFoodieState extends State<TopFoodie> {
  TopFoodieService _topFoodieService = TopFoodieService();
  List<FoodModel> foodModel;

  @override
  void initState() {
    foodModel = _topFoodieService.findAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Top Foodie',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: foodModel.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(75.0),
                      child: Image(
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                        image: AssetImage(foodModel[index].image),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodModel[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            foodModel[index].reviews,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            foodModel[index].followers,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Gold Foodies',
                        style: TextStyle(color: Colors.amberAccent),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
