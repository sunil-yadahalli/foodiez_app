import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for Restaurants...',
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                // height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/noodles.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Noodles',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/dal.jpg'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dal Fry',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/burger.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Burger',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/thai.jpg'),
                              fit: BoxFit.fitWidth),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Thai Fry',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 12.0),
              child: Text(
                'Most Popular',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Flexible(
                              child: Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/kfc.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'KFC Broadway',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('122 queen street'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Column(
                          children: [
                            Flexible(
                              child: Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/biriyani.jpg'),
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Biriyani',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('122 queen street'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Flexible(
                              child: Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/thai.jpg'),
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'KFC Broadway',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('122 queen street'),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
