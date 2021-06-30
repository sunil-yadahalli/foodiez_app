import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(75.0),
              child: Image(
                fit: BoxFit.cover,
                width: 150,
                height: 150,
                image: AssetImage('assets/guy.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sunil Yadahalli',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'India',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.payment),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Manage Payments Options',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.supervised_user_circle),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Find Friends',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'More Settings',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sign Out',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
